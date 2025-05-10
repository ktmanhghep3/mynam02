
SpecialEvent.ManDaPK = SpecialEvent.ManDaPK or {};
local tbManDaPk = SpecialEvent.ManDaPK;

tbManDaPk.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbManDaPk.TaskID_Time = 1;

function tbManDaPk:OnDialog()
	if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
		me.NewWorld(2000, 1626, 3187);
		Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
		return;
	end

local GioiHanCaoThu = 8;
local nLevel_DanhVongST = me.GetReputeLevel(14, 1);
	if nLevel_DanhVongST < GioiHanCaoThu then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Hoạt động Cao Thủ Cấp Danh vọng Sát Thần Trên 7, không thể tham gia!<color>"));
	Dialog:Say("<color=yellow>Hoạt động Cao Thủ nguy hiểm giới hạn yêu cầu Cấp Danh vọng Sát Thần Trên 7,\n<color=red>Ngươi đang cấp: "..(nLevel_DanhVongST-1).."<color>, Không thể tham gia!<color>", {"Ta biết rồi"});
	return 0;
	end

local szMsg = "<color=green>Quy tắc thi đấu Mạn Đà Trang:<color>\n"..
"<color=yellow>- Báo danh: 19h30 đến 19h39\n"..
"- Thi đấu: 19h40 đến 20h40\n"..
"- Hạng Top để nhận thưởng sẽ được tính bằng cao thấp điểm đánh bại người chơi khác\n"..
"* Lưu ý: Cùng Bang/Gia tộc vẫn PK được nhau.<color>\n"..
"<color=cyan>* Sau khi kết thúc thi đấu quay lại đây nhận thưởng!<color>\n"




	local tbOpt		= {};
	if self.nStatus == 1 then
		table.insert(tbOpt, {"<color=red>Ta muốn vào Thi đấu Mạn Đà Trang<color>" , self.OnJoin, self});
		Dialog:Say(szMsg,tbOpt);
	elseif self.nStatus == 2 then
		self:BXH();
	else
		szMsg = "<color=red>Chưa phải là thời gian báo danh Khiêu chiến Mạn Đà Trang!<color>"
		Dialog:Say(szMsg,tbOpt);
	end
		
end

function tbManDaPk:OnJoin()
	 if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
			me.NewWorld(2000, 1626, 3187);
			Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
			me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
		return 0;
	end

local nRand = MathRandom(1,#self.MapPos_Random)
me.NewWorld(unpack(self.MapPos_Random[nRand]));
end

function tbManDaPk:BXH()
	local szMsg = "<color=cyan>BXH Mạn Đà Trang lần này:<color>\n";
	
	local nRank = self.tbPlayer_List[me.nId].nRank;
	
	for i=1, 10 do
		if self.tbSortPlayer[i] then
			szMsg = szMsg .."<color=pink>"..i.."/ Hạng "..i..":<color> <color=gold>"..KGCPlayer.GetPlayerName(self.tbSortPlayer[i].nPlayerId).."<color> đạt <color=green>"..self.tbSortPlayer[i].nPoint.." Điểm\n<color>";
		end
	end
	
	local tbOpt		= {
	{"<color=yellow>Nhận thưởng Hạng: <color=red>"..nRank.."<color>",self.NhanThuong,self,nRank},
	
	};
	
	Dialog:Say(szMsg,tbOpt);
end
function tbManDaPk:NhanThuong(nRank)
	if not nRank then
		return 0;
	end
	local nNeedBag = 10;
	if me.CountFreeBagCell() < nNeedBag then
    	local szAnnouce = "Hành trang yêu cầu "..nNeedBag.." ô trống";
    	Dialog:Say(szAnnouce);
    	return 0;    
	end	
	if self:KiemTraListNhanThuong(me.szName) > 0 then
		Dialog:Say("Mạn Đà Trang trận lần này ngươi đã nhận thưởng rồi!");
		return 0;
	end
	local nBonus = self.tbPlayer_List[me.nId].nBonus;
	if nBonus == 0 then
		Dialog:Say("không có điểm tích lũy không thể nhận thưởng!");
		return 0;	
	end
	if nRank == 1 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},30);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},5);--Rương Tinh Thạch		
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},800);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},30);--Điểm Thành Tựu PK-Item
		me.AddStackItem(18,1,3941,3,nil,30);--Mảnh Hiệp Khách (Chưa Giám Định)
	--------------------------------------

	elseif nRank == 2 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},22);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},4);--Rương Tinh Thạch		
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},600);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},20);--Điểm Thành Tựu PK-Item
		me.AddStackItem(18,1,3941,3,nil,25);--Mảnh Hiệp Khách (Chưa Giám Định)
	--------------------------------------

	elseif nRank == 3 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},15);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},3);--Rương Tinh Thạch		
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},400);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},15);--Điểm Thành Tựu PK-Item
		me.AddStackItem(18,1,3941,3,nil,20);--Mảnh Hiệp Khách (Chưa Giám Định)
	--------------------------------------

	elseif nRank == 4 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch		
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},300);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},10);--Điểm Thành Tựu PK-Item
		me.AddStackItem(18,1,3941,3,nil,15);--Mảnh Hiệp Khách (Chưa Giám Định)
	--------------------------------------

	elseif nRank == 5 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch		
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},200);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},8);--Điểm Thành Tựu PK-Item
		me.AddStackItem(18,1,3941,3,nil,10);--Mảnh Hiệp Khách (Chưa Giám Định)
	--------------------------------------

	elseif nRank == 6 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},100);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},6);--Điểm Thành Tựu PK-Item
	--------------------------------------

	elseif nRank == 7 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},100);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},5);--Điểm Thành Tựu PK-Item
	--------------------------------------

	elseif nRank == 8 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},100);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},4);--Điểm Thành Tựu PK-Item
	--------------------------------------

	elseif nRank == 9 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},100);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},3);--Điểm Thành Tựu PK-Item
	--------------------------------------

	elseif nRank == 10 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},100);--Bí Ẩn Sát Thần
		
		me.AddStackItem(18,1,3900,1,{bForceBind=1,},1);--Điểm Thành Tựu PK-Item
	--------------------------------------

	elseif nRank >= 11 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},12);--Lệnh Bài Sát Thần PK
		me.AddStackItem(18,1,3000,1,{bForceBind=1,},2);--Rương Tinh Thạch
		me.AddStackItem(18,1,3006,1,{bForceBind=1,},100);--Bí Ẩn Sát Thần
	--------------------------------------

	end
	
	
	local szDate = os.date("%Y-%m-%d %H:%M:%S", GetTime());
	local szFile = tbManDaPk.Folder..tbManDaPk.ListNT.."";
	KFile.AppendFile(szFile, ""..me.szName.."\t"..nRank.."\t"..szDate.."\r\n");	
	
	local szThongBao = "<color=yellow>Cao thủ <color=green>"..me.szName.."<color> đã nhận phần thưởng A <color=cyan>Mạn Đà Trang<color> thứ hạng <color=red>"..nRank.."<color> của trận hôm nay!<color>";
	KDialog.MsgToGlobal(szThongBao)
	return 0;
end





function tbManDaPk:KiemTraListNhanThuong(PlayerName)
	local szFile = self.Folder..self.ListNT.."";
	local nValue = 0;
	if szFile then
		local tbFile =  Lib:LoadTabFile(szFile);
		for nIndex, tbRow  in ipairs(tbFile) do
			if PlayerName == tbRow.Name then-- 
				nValue = 1;
				break;
			end
		end
	end
	return nValue;
end
