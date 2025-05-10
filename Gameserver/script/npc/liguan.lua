local tbNpc = Npc:GetClass("liguan");

tbNpc.TaskGroup_QuaHeThong = 4034;		--Task QUÀ HỆ THỐNG LỄ QUAN
tbNpc.TaskID_QuaHeThong = 1040;			--Task QUÀ HỆ THỐNG LỄ QUAN (199 là của quà 500K)
tbNpc.TaskID_ThuongSuKien = 2002;		--Thưởng Sự Kiện
tbNpc.TaskID_ThuongSuKien2 = 3040;		--Thưởng Sự Kiện 2


tbNpc.TaskGroup_Time = 4000;	--Task Thời Gian
tbNpc.TaskID_Time = 1;			--Task Thời Gian

function tbNpc:OnDialog()
DoScript("\\script\\npc\\liguan.lua");
DoScript("\\script\\Update2025\\Spec_Code\\HuyDongQuy.lua");
local szMsg = "<color=cyan>Ta có thể giúp gì cho ngươi ?<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}


--Check Tài Khoản Nhận hỗ trợ hệ thống
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận quà Hệ thống <color>", self.NhanHoTroHeThong1, self});
end

if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận quà PK Tống Kim <color>", self.NhanHoTroHeThong1, self});
end

--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Quà 30/04", self.Qua_Event02, self});

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận quà Đóng góp Huy động Quỹ<color>",	SpecialEvent.Donate_HuyDongQuy.OnDialog, SpecialEvent.Donate_HuyDongQuy});



table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận thưởng Event - Hoạt động<color>", self.NhanThuong_EventHoatDong, self});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận thưởng Các Gói Quà - Hỗ Trợ<color>", self.NhanThuong_CacGoiQuaHoTro, self});
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

function tbNpc:NhanThuong_CacGoiQuaHoTro()
local szMsg = "<color=cyan>Ta có thể giúp gì cho ngươi ?<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Túi Quà Trở Về<color>", self.NhanGoiQuaTroVe, self});


Dialog:Say(szMsg, tbOpt);
end

function tbNpc:NhanThuong_EventHoatDong()
local szMsg = "<color=cyan>Ta có thể giúp gì cho ngươi ?<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận thưởng TĐLT 23/02/2025 <color>", self.Nhan_ThuongSuKien, self});

table.insert(tbOpt,{"<bclr=0,0,200><color=cyan>Nhận Thưởng Event TĐLT Cuối Tuần<color>",	SpecialEvent.NhanThuong_Event_TDLT.OnDialog, SpecialEvent.NhanThuong_Event_TDLT});
table.insert(tbOpt,{"<bclr=0,0,200><color=cyan>Nhận Thưởng Bang Hội Chiến<color>",	SpecialEvent.NhanThuong_BangHoiChien.OnDialog, SpecialEvent.NhanThuong_BangHoiChien});
table.insert(tbOpt,{"<bclr=0,0,200><color=cyan>Nhận thưởng Event Group Zalo<color>",	SpecialEvent.Event_GroupZalo.OnDialog, SpecialEvent.Event_GroupZalo});
Dialog:Say(szMsg, tbOpt);
end


function tbNpc:NhanGoiQuaTroVe()
--Phần Thưởng--

	me.AddStackItem(18,1,3606,1,{bForceBind=1,},1);--Túi Quà Trở Về
	local szMsg = "<color=yellow>Chúc mừng <color=cyan>"..me.szName.."<color> đã nhận thành công Túi Quà Trở Về tại Lễ Quan!<color>";
	Dialog:Say("<color=yellow>Chúc mừng đã nhận đã nhận thành công Túi Quà Trở Về tại Lễ Quan<color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
end


function tbNpc:BXH_PhoBan()
local szHistory = "\\script\\FILE_LOG\\Log_BXH_TruyTimVatBau.txt";
	local tbFileOut = Lib:LoadTabFile(szHistory);
	local tbOpt = "<bclr=0,0,200><color=cyan>              《BXH Truy Tìm Vật Báu》<color> \n\n";
	local MauChu = {'red','cyan','pink','green','blue','blue','blue','blue','blue','blue'};
	local x = 1;
    for _, tbRowOut in pairs(tbFileOut) do
        local TenNhanVat = tbRowOut["TenNhanVat"] or "";
        local VatPham = tbRowOut["LoaiTrangBiGioiHan"] or "";
        local NgaySoHuu = tbRowOut["ThoiGianNhan"] or "";
        local Show ='<color=yellow>'..TenNhanVat..'<color>-<color=red>'..VatPham..'<color>-<color=green>'..NgaySoHuu..'<color>\n';
        tbOpt = tbOpt..Show;
        x = x + 1;
    end
    Dialog:Say(tbOpt);
end





---QUÀ HỆ THỐNG--
function tbNpc:NhanHoTroHeThong1()
local CheckNhan = me.GetTask(self.TaskGroup_QuaHeThong,self.TaskID_QuaHeThong);
local nSoVP = self.SuKien_50;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 16 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Thời gian Online không đạt yêu cầu Trên 15 ngày để nhận, hãy kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
--Nhan theo Tai khoan	
if (me.szAccount == "") then
--Phần Thưởng--

end

if (me.szAccount == "") then
--Phần Thưởng--


end


--add hỗ trợ chân nguyên thánh linh--
	--me.AddItem(1,27,7,1);--[Thánh Linh]-Thiên Vân Nội
	--me.AddItem(1,27,8,1);--[Thánh Linh]-Thiên Vân Ngoại
	--me.AddItem(1,27,9,1);--[Thánh Linh]-Thiên Vân Ngoại
	--me.AddItem(1,27,10,1);--[Thánh Linh]-Thiên Vân Ngoại
	--me.AddItem(1,24,15,1);--Huyết Đan
	--me.AddItem(1,24,16,1);--Bách Kháng
	--me.AddStackItem(18,1,3036,4,nil,10); --Tiểu Sư Muội - Đồng hành 10 Kỹ năng]]

--me.AddStackItem(18,1,4011,1,{bForceBind=1,},24);--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_QuaHeThong,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà thành công!<color>"));
--local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã nhận thành công quà trị giá 999.999 VNĐ:\n✬✬✬ Phần thưởng:\n✬ 1999 Tài Lộc.\n✬ 6000 Điểm Tân Niên\n✬✬✬ Chúc Mừng Tân Xuân An Khang Hạnh Phúc!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

---Thưởng Sự Kiện
function tbNpc:Nhan_ThuongSuKien()
local CheckNhan = me.GetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien);
local nSoVP = self.SuKien_50;

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end
--Thưởng Theo Bang--
	local pTong = KTong.GetTong(me.dwTongId);
	local szTongName = "Không Bang Hội";	
	if pTong then
		szTongName = pTong.GetName();
	end
	--Bang TinhAnhEm:
if pTong then
if pTong.GetName() == "" then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},10); --Thương Phong Dẫn Hoàn Chỉnh
me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
end
end	

--Bang HuynhĐệ:
if pTong then
if pTong.GetName() == "" then
me.AddStackItem(18,1,1,1,{bForceBind=1,},1); --
me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
end
end	

--Phần Thưởng Theo Tên--
--Top 1	
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},10); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 1 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 1 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 2
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},8); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 2 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 2 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 3
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},7); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 3 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 3 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 4
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},6); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 4 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 4 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 5
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},5); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 5 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 5 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 6
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},4); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 6 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 6 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 7
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},3); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 7 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 7 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 8
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},2); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 8 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 8 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 9
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},1); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 9 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 9 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 10
if (me.szName == "") or (me.szName == "") then
me.AddStackItem(18,1,4010,1,{bForceBind=1,},1); --Thương Phong Dẫn Hoàn Chỉnh

me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà Top 10 thành công!!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã Nhận quà Top 10 thành công!!!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

end

--Quà Tặng Event
function tbNpc:Qua_Event02()
local CheckNhan = me.GetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien2);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 34 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Thời gian Online không đạt yêu cầu Trên 34 ngày để nhận, hãy kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,4029,1,{bForceBind=1,},304); 		--Tài Lộc
me.AddStackItem(18,1,4028,1,{bForceBind=1,},3075); 		--Điểm Tân Niên
me.AddStackItem(18,1,975,10,{bForceBind=1,},1975); 		--Tiền Góp Quỹ
me.AddStackItem(18,1,4010,1,{bForceBind=1,},304); 		--Thương Phong Dẫn Hoàn Chỉnh
me.AddStackItem(18,1,4038,1,{bForceBind=1,},3475); 		--Du Long Giác



me.SetTask(self.TaskGroup_QuaHeThong,self.TaskID_ThuongSuKien2,1);--Task Tính lần đã nhận
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Nhận quà thành công!<color>"));
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã nhận thành công Quà Tặng Mừng Đại Lễ 30/04:\n✬✬✬ Phần thưởng:\n✬ 304 Tài Lộc.\n✬ 3075 Điểm Tân Niên\n✬ 1975 Tiền Góp Quỹ\n✬ 304 Thương Phong Dẫn Hoàn Chỉnh\n✬ 3475 Du Long Giác\n✬✬✬ Chúc Mừng Tân Xuân An Khang Hạnh Phúc!";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
