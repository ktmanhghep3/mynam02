local tbDoi_ThachAnHoangKim2024 = {};
SpecialEvent.Doi_ThachAnHoangKim2024 = tbDoi_ThachAnHoangKim2024;



tbDoi_ThachAnHoangKim2024.TaskGourp_free = 4110; 		--Task Hái Lộc hàng ngày (add; 1-ngày 2-đếm số lần 3-tính thời gian)
tbDoi_ThachAnHoangKim2024.TaskId_Day = 1; 				--Task lưu ngày
tbDoi_ThachAnHoangKim2024.TaskId_Count = 2;  			--Task lưu lần nhận

tbDoi_ThachAnHoangKim2024.TaskGourp_TieuPhi = 4111; 			--Task Hái Lộc hàng ngày (1: Trong ngày (Reset) - 2: Cả Sự kiện)
tbDoi_ThachAnHoangKim2024.TaskId_TieuPhi_Ngay = 1;  			--Task Trong ngày (Reset)
tbDoi_ThachAnHoangKim2024.TaskId_TieuPhi_CaSK_Lan2 = 20;  		--Task Cả Sự kiện lần 2

tbDoi_ThachAnHoangKim2024.TaskGroup_ThachAnHK = 4112;	--Task Điếm số lần mở Thạch Ấn Hoàng Kim
tbDoi_ThachAnHoangKim2024.TaskID_ThachAnHK = 1;
tbDoi_ThachAnHoangKim2024.TaskID_GioiHanNhan250 = 4;	--Giới hạn nhận mốc 250/1 lần


function tbDoi_ThachAnHoangKim2024:OnDialog()
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if me.GetTask(self.TaskGourp_free, self.TaskId_Day) < nDate then
		me.SetTask(self.TaskGourp_free, self.TaskId_Day, nDate);
		me.SetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay, 0);	--Cần Reset
	end 
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
local SoLan_ThachAnHK = me.GetTask(self.TaskGroup_ThachAnHK,self.TaskID_ThachAnHK);

local szMsg = 
"<color=pink>Thông tin Event:<color>\n"..
"<color=green>- Điểm Hái Lộc Tiêu Phí lần 2: <color=cyan>["..nTieuPhi_CaSK_Lan2.."]<color><color>\n"..
"<color=green>- Thạch Ấn Hoàng Kim đã mở: <color=cyan>["..SoLan_ThachAnHK.."]<color><color>\n"..
"<color=pink>Quy định đổi Thạch Ấn Hoàng Kim:\n<color>"..
"<color=yellow>1 Ấn = 5 Đ Hái Lộc Tiêu Phí Sự Kiện 2\n<color>"..
"<color=yellow>2 Ấn = 10 Đ Hái Lộc Tiêu Phí Sự Kiện 2\n<color>"..
"<color=yellow>5 Ấn = 25 Đ Hái Lộc Tiêu Phí Sự Kiện 2\n<color>"..
"<color=yellow>10 Ấn = 50 Đ Hái Lộc Tiêu Phí Sự Kiện 2\n<color>"..
"<color=yellow>20 Ấn = 100 Đ Hái Lộc Tiêu Phí Sự Kiện 2\n<color>"..
"<color=violet>* Sau khi đổi Ấn, Điểm Hái Lộc Tiêu Phí Sự Kiện 2 sẽ bị trừ tương ứng\n<color>"..
"<color=red>* Không hạn chế số lần Đổi Ấn, có thể bổ sung tiếp Điểm Hái Lộc Tiêu Phí Sự Kiện 2 bằng cách Hái Lộc Tiêu Phí tại Cây: Tài Thần Mộc Bảo.\n<color>"

local tbOpt = 
{

	{"<color=yellow>Ta Muốn Đổi 2 Thạch Ấn Hoàng Kim", self.DoiAnSL_2, self,};
	{"<color=yellow>Ta Muốn Đổi 5 Thạch Ấn Hoàng Kim", self.DoiAnSL_5, self,};
	{"<color=yellow>Ta Muốn Đổi 10 Thạch Ấn Hoàng Kim", self.DoiAnSL_10, self,};
	{"<color=yellow>Ta Muốn Đổi 20 Thạch Ấn Hoàng Kim", self.DoiAnSL_20, self,};
	--{"<bclr=0,0,200><color=white>Nhận thưởng Mốc 250 Thạch Ấn", self.NhanMoc_250, self,};
	{"<bclr=0,0,200><color=white>Nhận thưởng Mốc Ấn",SpecialEvent.NhanThuong_MocAn.OnDialog, SpecialEvent.NhanThuong_MocAn};
	{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end


--Nhận thưởng Mốc 250 Thạch Ấn--
function tbDoi_ThachAnHoangKim2024:NhanMoc_250()
local CheckNhan = me.GetTask(self.TaskGroup_ThachAnHK,self.TaskID_GioiHanNhan250);
local SoDiem_MoAn_YC = 250;
local SoLan_ThachAnHK = me.GetTask(self.TaskGroup_ThachAnHK,self.TaskID_ThachAnHK);

if SoLan_ThachAnHK < SoDiem_MoAn_YC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Mở Thạch Ấn Hoàng Kim không đủ: "..SoDiem_MoAn_YC.." Không thể nhận quà!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Mở Thạch Ấn Hoàng Kim không đủ: "..SoDiem_MoAn_YC.." Không thể nhận quà!<color>"));
return
end

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.nSex == 0) then --Nam
	me.AddItem(1,25,174,2);
	me.AddItem(1,26,174,2);	
end 

if (me.nSex == 1) then --Nữ 
	me.AddItem(1,25,175,2);
	me.AddItem(1,26,175,2);	
end 
	
me.SetTask(self.TaskGroup_ThachAnHK,self.TaskID_GioiHanNhan250,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> nhận thưởng thành công quà Mốc sử dụng 250 Thạch Ấn Hoàng Kim, phần thưởng:\n- [Ngoại Trang VIP] Cẩm Hoa Thúc Phát\n- [Ngoại Trang VIP] Mê Mộng Phát Kết\n- [Ngoại Trang VIP] Thúy Lan Vân Văn\n- [Ngoại Trang VIP] Liên Y Tạp Oa<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end




--Đổi 5 Thạch Ấn Hoàng Kim--
function tbDoi_ThachAnHoangKim2024:DoiAnSL_2()
local So_AnHK = 2;
local SoDiem_TieuPhiLan2 = 10;
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);

if nTieuPhi_CaSK_Lan2 < SoDiem_TieuPhiLan2 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi, không thể đổi Ấn!<color>"));
return
end

--Phần thưởng--
me.AddStackItem(18,1,3042,1,{bForceBind=1,},So_AnHK);	--Thạch Ấn Hoàng Kim

me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 - SoDiem_TieuPhiLan2);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> sử dụng "..SoDiem_TieuPhiLan2.." Điểm Hái Lộc Tiêu Phí lần 2  Nhận được <color=cyan>"..So_AnHK.."<color> Thạch Ấn Hoàng Kim, tại NPC Tài Thần Mộc Bảo!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Đổi 5 Thạch Ấn Hoàng Kim--
function tbDoi_ThachAnHoangKim2024:DoiAnSL_5()
local So_AnHK = 5;
local SoDiem_TieuPhiLan2 = 25;
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);

if nTieuPhi_CaSK_Lan2 < SoDiem_TieuPhiLan2 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi, không thể đổi Ấn!<color>"));
return
end

--Phần thưởng--
me.AddStackItem(18,1,3042,1,{bForceBind=1,},So_AnHK);	--Thạch Ấn Hoàng Kim

me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 - SoDiem_TieuPhiLan2);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> sử dụng "..SoDiem_TieuPhiLan2.." Điểm Hái Lộc Tiêu Phí lần 2  Nhận được <color=cyan>"..So_AnHK.."<color> Thạch Ấn Hoàng Kim, tại NPC Tài Thần Mộc Bảo!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Đổi 10 Thạch Ấn Hoàng Kim--
function tbDoi_ThachAnHoangKim2024:DoiAnSL_10()
local So_AnHK = 10;
local SoDiem_TieuPhiLan2 = 50;
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);

if nTieuPhi_CaSK_Lan2 < SoDiem_TieuPhiLan2 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi, không thể đổi Ấn!<color>"));
return
end

--Phần thưởng--
me.AddStackItem(18,1,3042,1,{bForceBind=1,},So_AnHK);	--Thạch Ấn Hoàng Kim

me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 - SoDiem_TieuPhiLan2);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> sử dụng "..SoDiem_TieuPhiLan2.." Điểm Hái Lộc Tiêu Phí lần 2  Nhận được <color=cyan>"..So_AnHK.."<color> Thạch Ấn Hoàng Kim, tại NPC Tài Thần Mộc Bảo!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Đổi 20 Thạch Ấn Hoàng Kim--
function tbDoi_ThachAnHoangKim2024:DoiAnSL_20()
local So_AnHK = 20;
local SoDiem_TieuPhiLan2 = 100;
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);

if nTieuPhi_CaSK_Lan2 < SoDiem_TieuPhiLan2 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Hái Lộc Tiêu Phí lần 2 không đủ: "..SoDiem_TieuPhiLan2.." Điểm cần đổi, không thể đổi Ấn!<color>"));
return
end

--Phần thưởng--
me.AddStackItem(18,1,3042,1,{bForceBind=1,},So_AnHK);	--Thạch Ấn Hoàng Kim

me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_TieuPhi_CaSK_Lan2,nTieuPhi_CaSK_Lan2 - SoDiem_TieuPhiLan2);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> sử dụng "..SoDiem_TieuPhiLan2.." Điểm Hái Lộc Tiêu Phí lần 2  Nhận được <color=cyan>"..So_AnHK.."<color> Thạch Ấn Hoàng Kim, tại NPC Tài Thần Mộc Bảo!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
