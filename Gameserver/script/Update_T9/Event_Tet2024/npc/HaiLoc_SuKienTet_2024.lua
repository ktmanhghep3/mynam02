local tbNpc = Npc:GetClass("HaiLoc_SuKienTet_2024");

tbNpc.TaskGourp_Free = 4110; 			--Task Hái Lộc hàng ngày (add; 1-ngày 2-đếm số lần 3-tính thời gian)
tbNpc.TaskId_Day = 1; 					--Task lưu ngày
tbNpc.TaskId_Count_Free = 2;  			--Task lưu lần nhận
tbNpc.TaskId_Last_Free = 3;  		 	--Task lưu thời gian nhận
tbNpc.TaskId_NhanPhongToBu = 10;  		--Task Nhận Phong Lì Xì To Bự

tbNpc.TaskGourp_TieuPhi = 4111; 			--Task Hái Lộc hàng ngày (1: Trong ngày (Reset) - 2: Cả Sự kiện)
tbNpc.TaskId_TieuPhi_Ngay = 1;  			--Task Trong ngày (Reset)
tbNpc.TaskId_TieuPhi_CaSK = 2;  			--Task Cả Sự kiện
tbNpc.TaskId_TieuPhi_CaSK_Lan2 = 20;  		--Task Cả Sự kiện lần 2
tbNpc.TaskId_NhanPhongLiXi = 10;  			--Task Nhận Phong Lì Xì

tbNpc.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNpc.TaskIDTT = 1;

function tbNpc:OnDialog()
DoScript("\\script\\Update_T9\\Event_Tet2024\\npc\\HaiLoc_SuKienTet_2024.lua");
local nCount = me.GetTask(self.TaskGourp_Free, self.TaskId_Count_Free);
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if me.GetTask(self.TaskGourp_Free, self.TaskId_Day) < nDate then
		me.SetTask(self.TaskGourp_Free, self.TaskId_Day, nDate);
		me.SetTask(self.TaskGourp_Free, self.TaskId_Count_Free, 0);
		me.SetTask(self.TaskGourp_Free, self.TaskId_Last_Free, 0);
		me.SetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay, 0);	--Cần Reset
	end 


local szMsg = 
"<color=pink>Rung Cây Hái Lộc đầu năm:\n"..
"<color=yellow>- Hái Lộc Miễn Phí hôm nay: <color=cyan>["..nCount.."]<color>/2\n"..
"<color=yellow>- Hái Lộc Tiêu Phí trong ngày: <color=cyan>["..nTieuPhi_Ngay.."]<color>\n<color>"..
"<color=yellow>- Hái Lộc Tiêu Phí Cả Sự Kiện lần 1: <color=cyan>["..nTieuPhi_CaSK.."]<color>\n<color>"..
"<color=green>- Hái Lộc Tiêu Phí Cả Sự Kiện lần 2: <color=cyan>["..nTieuPhi_CaSK_Lan2.."]<color>\n<color>"


local tbOpt = 
{

{"<color=yellow>Hái Lộc Miễn Phí<color>",	SpecialEvent.HaiLoc_DauNam_free.OnDialog, SpecialEvent.HaiLoc_DauNam_free},
{"<color=yellow>Hái Lộc Tiêu Phí<color>",	SpecialEvent.HaiLoc_DauNam_TieuPhi.OnDialog, SpecialEvent.HaiLoc_DauNam_TieuPhi},
{"<color=green>Nhận Phong Lì Xì - Hái Lộc Tiêu Phí lần 1<color>",	SpecialEvent.Doi_PhongLiXi.OnDialog, SpecialEvent.Doi_PhongLiXi},
{"<color=green>Nhận Phong Lì Xì - Hái Lộc Tiêu Phí lần 2<color>",	SpecialEvent.Doi_PhongLiXi_Lan2.OnDialog, SpecialEvent.Doi_PhongLiXi_Lan2},
{"<bclr=0,0,200><color=cyan>Sự Kiện Thạch Ấn Hoàng Kim<color>",	SpecialEvent.Doi_ThachAnHoangKim2024.OnDialog, SpecialEvent.Doi_ThachAnHoangKim2024},


{"<bclr=0,0,200><color=cyan>Sự Kiện Thạch Ấn Hoàng Kim 2<color>",	SpecialEvent.NhanThuong_MiniGameZalo.OnDialog, SpecialEvent.NhanThuong_MiniGameZalo},
{"<color=red>Nhận Lì Xì To Bự 2024", self.Nhan_LiXi, self,};
{"Kết Thúc Đối Thoại"}
}

Dialog:Say(szMsg,tbOpt)
end



function tbNpc:Nhan_LiXi()
if (me.szAccount == "kiemthest2") or (me.szAccount == "hoangan2310") or (me.szAccount == "longtkhuc") or (me.szAccount == "hoanghainn") or (me.szAccount == "bodauto") or (me.szAccount == "lingnga") or (me.szAccount == "satthan1") or (me.szAccount == "haikutedn2212") or (me.szAccount == "vietvnhp") or (me.szAccount == "sakernd") or (me.szAccount == "keisairo") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then

	local CheckNhan = me.GetTask(self.TaskGourp_Free,self.TaskId_NhanPhongToBu);

	if CheckNhan ~= 0 then
			Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"));
	return 0;		
	end
	if me.CountFreeBagCell() < 5 then
			Dialog:Say("Phải Có 5 Ô Trống Trong Túi Hành Trang");
	return 0;
	end

		--Phần Thưởng--
		me.AddStackItem(18,1,3040,1,{bForceBind=1,},1);	--Lì Xì To Bự 2024
		------


	me.SetTask(self.TaskGourp_Free,self.TaskId_NhanPhongToBu,1);--Task Tính lần đã nhận
	local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận quà <color=cyan>Lì Xì To Bự 2024<color>  thành công tại NPC Tài Thần Mộc Bảo!!<color>";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	return 0;
	else	
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Ngươi không có trong danh sách nhận phần thưởng!<color>"));
	return 0;
	end
end
