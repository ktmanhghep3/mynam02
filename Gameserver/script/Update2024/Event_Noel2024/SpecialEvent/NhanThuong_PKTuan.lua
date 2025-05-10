local tbNhanThuong_PKTuan ={};
SpecialEvent.NhanThuong_PKTuan= tbNhanThuong_PKTuan;

tbNhanThuong_PKTuan.TaskGroupNhanThuong = 4516;	--Task Nạp Sự Kiện
tbNhanThuong_PKTuan.TaskIDNhanThuong = 1;		--TRỊ SỐ CẦN THAY ĐỔI [ứng số lần tổ chức]


function tbNhanThuong_PKTuan:NhanThuong()
DoScript("\\script\\Update2024\\Event_Noel2024\\SpecialEvent\\NhanThuong_PKTuan.lua");
local szMsg = "<color=yellow>Nhận thưởng Mùa Giải PK<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Top 1
if (me.szName == "AdminGame") or (me.szName == "Skulll") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 1<color>", self.Top_1, self});
end

--Top 2
if (me.szName == "GauMapDiz") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 2<color>", self.Top_2, self});
end

--Top 3
if (me.szName == "Krulll") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 3<color>", self.Top_3, self});
end

--Top 4
if (me.szName == "Đoàn") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 4<color>", self.Top_4, self});
end

--Top 5
if (me.szName == "MapDiz") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 5<color>", self.Top_5, self});
end

--Top 6
if (me.szName == "OneGame") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 6<color>", self.Top_6, self});
end

--Tham Gia
if (me.szName == "xXxMOZAxXx") or (me.szName == "HạtBụiNhỏ") or (me.szName == "LaCuong") or (me.szName == "PhuongOanh") or (me.szName == "BốCuTí") or (me.szName == "BeoCaca") or (me.szName == "ShenNana") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Tham Gia<color>", self.Tham_Gia, self});
end


table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end


function tbNhanThuong_PKTuan:Top_1()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 1;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},1000);		--Pha Lê
me.AddStackItem(18,1,4011,1,{bForceBind=1,},3);		--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4012,1,{bForceBind=1,},3);		--Bộ Thiên Gia Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4014,1,{bForceBind=1,},3);		--Bộ Thất Kiếm Tăng +1 Đẳng cấp

if (me.nSex == 0) then --Nam
--Set Trang bị Vô Cực Nam

end 
if (me.nSex == 1) then --Nữ 
--Set Trang bị Vô Cực Nữ


end 

--Bộ Vũ khí-Trang bị tự chọn:
me.AddStackItem(2,1,2691,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Kim Thương Ngoại 20
me.AddStackItem(2,1,2824,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Thủy Thủ Ngoại 20


me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Mùa giải PK Tuần  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 2
function tbNhanThuong_PKTuan:Top_2()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 2;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},800);		--Pha Lê
me.AddStackItem(18,1,4011,1,{bForceBind=1,},2);		--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4012,1,{bForceBind=1,},2);		--Bộ Thiên Gia Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4014,1,{bForceBind=1,},2);		--Bộ Thất Kiếm Tăng +1 Đẳng cấp

if (me.nSex == 0) then --Nam
--Set Trang bị Vô Cực Nam

end 
if (me.nSex == 1) then --Nữ 
--Set Trang bị Vô Cực Nữ


end 

--Bộ Vũ khí-Trang bị tự chọn:
me.AddStackItem(2,1,2767,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 20
me.AddStackItem(2,1,2757,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 10
me.AddItem(4,11,3028,10,3,16);--Bội Cấp 3- Nam - Thổ


me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Mùa giải PK Tuần  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 3
function tbNhanThuong_PKTuan:Top_3()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 3;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},700);		--Pha Lê
me.AddStackItem(18,1,4011,1,{bForceBind=1,},1);		--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4012,1,{bForceBind=1,},1);		--Bộ Thiên Gia Tăng +1 Đẳng cấp
me.AddStackItem(18,1,4014,1,{bForceBind=1,},1);		--Bộ Thất Kiếm Tăng +1 Đẳng cấp

if (me.nSex == 0) then --Nam
--Set Trang bị Vô Cực Nam

end 
if (me.nSex == 1) then --Nữ 
--Set Trang bị Vô Cực Nữ


end 

--Bộ Vũ khí-Trang bị tự chọn:


me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Mùa giải PK Tuần  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 4
function tbNhanThuong_PKTuan:Top_4()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 4;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},600);		--Pha Lê
--me.AddStackItem(18,1,4011,1,{bForceBind=1,},0);		--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4012,1,{bForceBind=1,},0);		--Bộ Thiên Gia Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4014,1,{bForceBind=1,},0);		--Bộ Thất Kiếm Tăng +1 Đẳng cấp

if (me.nSex == 0) then --Nam
--Set Trang bị Vô Cực Nam

end 
if (me.nSex == 1) then --Nữ 
--Set Trang bị Vô Cực Nữ


end 

--Bộ Vũ khí-Trang bị tự chọn:


me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Mùa giải PK Tuần  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 5
function tbNhanThuong_PKTuan:Top_5()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 5;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},500);		--Pha Lê
--me.AddStackItem(18,1,4011,1,{bForceBind=1,},0);		--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4012,1,{bForceBind=1,},0);		--Bộ Thiên Gia Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4014,1,{bForceBind=1,},0);		--Bộ Thất Kiếm Tăng +1 Đẳng cấp

if (me.nSex == 0) then --Nam
--Set Trang bị Vô Cực Nam

end 
if (me.nSex == 1) then --Nữ 
--Set Trang bị Vô Cực Nữ


end 

--Bộ Vũ khí-Trang bị tự chọn:
me.AddStackItem(2,1,2754,10,{bForceBind=1,},2);--Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 7


me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Mùa giải PK Tuần  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Top 6
function tbNhanThuong_PKTuan:Top_6()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 6;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},400);		--Pha Lê
--me.AddStackItem(18,1,4011,1,{bForceBind=1,},0);		--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4012,1,{bForceBind=1,},0);		--Bộ Thiên Gia Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4014,1,{bForceBind=1,},0);		--Bộ Thất Kiếm Tăng +1 Đẳng cấp

if (me.nSex == 0) then --Nam
--Set Trang bị Vô Cực Nam

end 
if (me.nSex == 1) then --Nữ 
--Set Trang bị Vô Cực Nữ


end 

--Bộ Vũ khí-Trang bị tự chọn:
me.AddStackItem(2,1,2752,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 5
me.AddStackItem(2,1,2942,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 5
me.AddStackItem(2,1,2940,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Thổ Kiếm Nội 3


me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Mùa giải PK Tuần  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Có tham gia
function tbNhanThuong_PKTuan:Tham_Gia()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},200);		--Pha Lê
--me.AddStackItem(18,1,4011,1,{bForceBind=1,},0);		--Thần Kiếm Ngự Lôi Chân Quyết Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4012,1,{bForceBind=1,},0);		--Bộ Thiên Gia Tăng +1 Đẳng cấp
--me.AddStackItem(18,1,4014,1,{bForceBind=1,},0);		--Bộ Thất Kiếm Tăng +1 Đẳng cấp

if (me.nSex == 0) then --Nam
--Set Trang bị Vô Cực Nam

end 
if (me.nSex == 1) then --Nữ 
--Set Trang bị Vô Cực Nữ


end 

--Bộ Vũ khí-Trang bị tự chọn:
--me.AddStackItem(2,1,2750,10,{bForceBind=1,},1);--Cấp 7 (2-20)-Hiệu ứng Mộc Kiếm Nội 3


me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Mùa giải PK Tuần  <color=cyan>Tham gia<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
