local tbBox_ChuaDo = Item:GetClass("Box_ChuaDo01");


tbBox_ChuaDo.TASKID_GROUP = 4216;
tbBox_ChuaDo.TASKID_NIANHUA_BOX = 1;
tbBox_ChuaDo.tbShengXiao = {"Phổ Sinh Cơ","Thanh Lân Ngọc Bích","Vô Cực Hàn Thạch"};
tbBox_ChuaDo.tbNianHua_identify 	= {18,1,3924};

tbBox_ChuaDo.GioiHan = 1000;

if  MODULE_GAMESERVER then

function tbBox_ChuaDo:OnUse()
	local tbOpt = {
		{"<color=yellow>Gửi vật phẩm", self.TakeInItem, self},
		{"<color=cyan>Rút vật phẩm", self.TakeOutItem, self},
		{"Đóng"}
	};
	local szMsg = "<bclr=0,0,200><color=white>Có thể Cất và Rút vật phẩm quý hiếm:\n".. self:GetTip() .. "";
	Dialog:Say(szMsg, tbOpt);
end;

function tbBox_ChuaDo:TakeInItem()
	Dialog:OpenGift("Đặt vật phẩm gửi vào",nil ,{self.OnOpenGiftOk, self});
end;

function tbBox_ChuaDo:OnOpenGiftOk(tbItemObj)
	local tbItemList = {};	
	if (self:ChechItem(tbItemObj, tbItemList) == 0) then
		me.Msg("Vật phẩm không thích hợp hoặc số lượng vượt giới hạn!")
		return 0;	
	end;
	
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
	end
	
	for nNum, nCount in pairs(tbItemList) do
		local nCurCount = me.GetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNum - 1);
		nCurCount = nCurCount + nCount;
		me.SetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNum - 1, nCurCount);
		me.Msg(string.format("Bạn đã thu thập %s <color=yellow>%s<color>", nCount, self.tbShengXiao[nNum]));		
	end;	
	return 1;
end;

function tbBox_ChuaDo:ChechItem(tbItemObj, tbItemList)
	for _, pItem in pairs(tbItemObj) do		
		local szFollowItem 	= string.format("%s,%s,%s", unpack(self.tbNianHua_identify));
		local szItem		= string.format("%s,%s,%s", pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular);
		if szFollowItem ~= szItem then
			return 0;
		end;
		local nNum = pItem[1].nLevel;
		tbItemList[nNum] = 	(tbItemList[nNum] or 0) + 1;
		local nCurCount = me.GetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNum - 1);		
		
		if (nCurCount + tbItemList[nNum] > self.GioiHan) then
			return 0;
		end;		
	end
	return 1;
end;

function tbBox_ChuaDo:TakeOutItem(nNowPage)
	local tbOpt = {};
	if not nNowPage then
		nNowPage = 0;
	end
	local nPage = 6;
	local nCount = nNowPage * nPage;
	local nSum = 0;
	for nNumber, szName in ipairs(self.tbShengXiao) do
		local nCurCount = me.GetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNumber -1);
		if (nCurCount > 0) then
			nSum = nSum + 1;
			if nSum > nCount then
				nCount = nCount + 1;
				if nCount > (nPage * (nNowPage + 1)) then
					table.insert(tbOpt, {"Sau", self.TakeOutItem, self, nNowPage + 1});
					break;
				end
				table.insert(tbOpt, {szName .. " (còn " .. nCurCount .. ")", self.SelectItem, self, nNumber});
			end
		end
	end
	
	if nCount > (nPage + 1) then
		table.insert(tbOpt, {"Trước", self.TakeOutItem, self, nNowPage - 1});
	end
	
	tbOpt[#tbOpt + 1] = {"Đóng"};
	local szMsg = "Xin chọn vật phẩm muốn rút";
	Dialog:Say(szMsg, tbOpt);
end;

function tbBox_ChuaDo:SelectItem(nNumber)
	local nCurCount = me.GetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNumber -1);
	Dialog:AskNumber("Nhập số lượng: ", nCurCount, self.OnUseTakeOut, self, nNumber);
end;

function tbBox_ChuaDo:OnUseTakeOut(nNumber, nCount)	
	local nCurCount = me.GetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNumber -1);
	if (nCount <= 0 or nCount > nCurCount) then
		me.Msg("Số lượng nhập không đúng!");
		return 0;
	end;
	if me.CountFreeBagCell() < nCount then
		Dialog:Say("Túi bạn không đủ chỗ.");
		return 0;
	end	
	local nCurCount = me.GetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNumber -1);
	nCurCount = nCurCount - nCount;
	me.SetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + nNumber -1, nCurCount);
	local tbNianHua = self.tbNianHua_identify;
	for i = 1, nCount do
		local pItem = me.AddItem(tbNianHua[1],tbNianHua[2],tbNianHua[3], nNumber);
		--me.SetItemTimeout(pItem, 60*24*3, 0);
	end
end

end

--function tbBox_ChuaDo:InitGenInfo()
	--local nSec = Lib:GetDate2Time(self.nOutTime)
	--it.SetTimeOut(0, nSec);
	--return	{ };
--end

function tbBox_ChuaDo:GetTip()
	local szTip = "";
	for i, szName in ipairs(self.tbShengXiao) do
		local nItemNum = me.GetTask(self.TASKID_GROUP, self.TASKID_NIANHUA_BOX + i - 1) or 0;
		local szColor = "white";		
		if nItemNum <= 0 then 
			szColor = "gray";
		end
		if nItemNum >= self.GioiHan then 
			szColor = "green";
		end;
		local szMsg = string.format("<color=%s>", szColor);		
		szTip = szTip..Lib:StrFillL("", 5)..szMsg..Lib:StrFillL(szName, 10)..Lib:StrFillL(string.format(": %s", nItemNum), 2).."<color>\n";
	end
	return szTip;
end
