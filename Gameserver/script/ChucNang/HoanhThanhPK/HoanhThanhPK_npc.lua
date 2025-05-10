
SpecialEvent.HoanhThanhPK = SpecialEvent.HoanhThanhPK or {};
local tbHoanhThanhPK = SpecialEvent.HoanhThanhPK;

tbHoanhThanhPK.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbHoanhThanhPK.TaskID_Time = 1;

function tbHoanhThanhPK:OnDialog()
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

local szMsg = "<color=green>Quy tắc Hoành Thành Tây Hạ:<color>\n"..
"<color=yellow>- Báo danh: 21h45 đến 21h50\n"..
"- Hoạt động: 21h50 đến 22h20\n"




	local tbOpt		= {};
	if self.nStatus == 1 then
		table.insert(tbOpt, {"<color=red>Ta muốn vào Hoành Thành Tây Hạ<color>" , self.OnJoin, self});
		Dialog:Say(szMsg,tbOpt);
	elseif self.nStatus == 2 then
		--self:BXH();
	else
		szMsg = "<color=red>Hoành Thành Tây Hạ chỉ vào được vào tối 21h45 Thứ 3 - Thứ 5!<color><color>"
		Dialog:Say(szMsg,tbOpt);
	end
		
end

function tbHoanhThanhPK:OnJoin()
local tbItemId	= {18,1,3017,1,0,0};				--Chìa Khóa Hoành Thành
local nCount = me.GetItemCountInBags(18,1,3017,1) 

if nCount < 1	then
Dialog:Say("<color=yellow>Ngươi không mang theo <color=cyan>Chìa Khóa Hoành Thành<color>, không thể vào trong!<color>")
return
end

	 if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
			me.NewWorld(2000, 1626, 3187);
			Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
			me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
		return 0;
	end

local nRand = MathRandom(1,#self.MapPos_Random)
me.NewWorld(unpack(self.MapPos_Random[nRand]));
Task:DelItem(me, tbItemId, 1);
end

function tbHoanhThanhPK:BXH()
	local szMsg = "<color=cyan>BXH Hoành Thành Tây Hạ lần này:<color>\n";
	
	local nRank = self.tbPlayer_List[me.nId].nRank;
	
	for i=1, 10 do
		if self.tbSortPlayer[i] then
			szMsg = szMsg .."<color=pink>"..i.."/ Hạng "..i..":<color> <color=gold>"..KGCPlayer.GetPlayerName(self.tbSortPlayer[i].nPlayerId).."<color> đạt <color=green>"..self.tbSortPlayer[i].nPoint.." Điểm\n<color>";
		end
	end
	
	local tbOpt		= {
	--{"<color=yellow>Nhận thưởng Hạng: <color=red>"..nRank.."<color>",self.NhanThuong,self,nRank},
	
	};
	
	Dialog:Say(szMsg,tbOpt);
end
function tbHoanhThanhPK:NhanThuong(nRank)
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
		Dialog:Say("Hoành Thành Tây Hạ trận lần này ngươi đã nhận thưởng rồi!");
		return 0;
	end
	local nBonus = self.tbPlayer_List[me.nId].nBonus;
	if nBonus == 0 then
		Dialog:Say("Ngươi không có điểm tích lũy không thể nhận thưởng!");
		return 0;	
	end
	if nRank == 1 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},10);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 2 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},8);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 3 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},7);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 4 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},6);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 5 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},5);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 6 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},4);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 7 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},3);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 8 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},2);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 9 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},1);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank == 10 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},1);--Rương Lam Nguyệt
	--------------------------------------

	elseif nRank >= 11 then
		--me.AddStackItem(18,1,3018,1,{bForceBind=1,},1);--Rương Lam Nguyệt
	--------------------------------------

	end
	
	local szDate = os.date("%Y-%m-%d %H:%M:%S", GetTime());
	local szFile = tbHoanhThanhPK.Folder..tbHoanhThanhPK.ListNT.."";
	KFile.AppendFile(szFile, ""..me.szName.."\t"..nRank.."\t"..szDate.."\r\n");	

	--local szThongBao = "<color=yellow>Cao thủ <color=green>"..me.szName.."<color> đã nhận thưởng <color=cyan>Lam Nguyệt Cốc<color> thứ hạng <color=red>"..nRank.."<color><color>";
	KDialog.MsgToGlobal(szThongBao)
	return 0;
end

function tbHoanhThanhPK:KiemTraListNhanThuong(PlayerName)
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