local tbCheckTop_NhanThuong ={};
SpecialEvent.CheckTop_NhanThuong= tbCheckTop_NhanThuong;


tbCheckTop_NhanThuong.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbCheckTop_NhanThuong.TaskID_Time = 1;

tbCheckTop_NhanThuong.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbCheckTop_NhanThuong.TaskIDTT = 1;

tbCheckTop_NhanThuong.TaskGroupNhanThuong = 4082;	--Task Nạp Sự Kiện
tbCheckTop_NhanThuong.TaskIDNhanThuong = 40;		--TRỊ SỐ CẦN THAY ĐỔI [ứng số lần tổ chức]


function tbCheckTop_NhanThuong:NhanThuong()
DoScript("\\script\\ChucNang\\ManDaPK\\CheckTop_NhanThuong.lua");
local szMsg = "<color=yellow>Nhận thưởng Giải đấu PK Mạn Đà Trang<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}	
--Top 1
if (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 1<color>", self.Top_1, self});
end

--Top 2
if (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 2<color>", self.Top_2, self});
end

--Top 3
if (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 3<color>", self.Top_3, self});
end

--Top 4
if (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 4<color>", self.Top_4, self});
end

--Top 5-10
if (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") or (me.szName == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng Top 5-10<color>", self.Top_5_10, self});
end

table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end

function tbCheckTop_NhanThuong:Top_1()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 1;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3015,1,nil,9);--Thẻ Mạn Đà Nhất Phẩm
me.AddStackItem(18,1,3001,1,nil,500);--Danh vọng Sát Thần
me.AddStackItem(18,1,3000,1,nil,10);--Rương Tinh Thạch
me.AddStackItem(18,1,3014,1,nil,2);--Rương Mạn Đà
me.AddStackItem(1,13,271,4,nil,1);--[Mặt Nạ] Mạn Đà La Tinh-Nhất
me.AddStackItem(18,1,3100,2,{bForceBind=1,},10);--Khoá Vô Cực
me.AddStackItem(18,1,3101,1,{bForceBind=1,},20);--Túi Thẻ Hoạt Động


--Thưởng Tăng Cường Top 1
	me.AddStackItem(18,1,3960,2,{bForceBind=1,},200);--Pha Lê
	me.AddStackItem(18,1,3300,1,{bForceBind=1,},20);--Túi Thạch Trung Châu
	me.AddStackItem(18,1,3301,1,{bForceBind=1,},10);--Linh Lung Hỏa Liên
	me.AddStackItem(18,1,3404,5,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 25
	me.AddStackItem(18,1,3966,1,{bForceBind=1,},10);--Bản Đồ Sự Kiện (Chưa Giám Định)
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},20);--Rương Sự Kiện Noel
	me.AddStackItem(18,1,3941,1,{bForceBind=1,},400);--Mảnh Bí Bảo (Chưa Giám Định)
	me.AddStackItem(18,1,3941,2,{bForceBind=1,},400);--Mảnh Cường Nhân (Chưa Giám Định)
	me.AddStackItem(18,1,3941,3,{bForceBind=1,},400);--Mảnh Hiệp Khách (Chưa Giám Định)

--lập tượng--
if (me.nSex == 0) then --Nam
	local pNpc = KNpc.Add2(7415,150,1,775,1325,3446);
	pNpc.szName = ""..me.szName.."";
end 

if (me.nSex == 1) then --Nữ 
	local pNpc = KNpc.Add2(7415,150,1,775,1325,3446);
	pNpc.szName = ""..me.szName.."";
end 
--

me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ChucNang\\ManDaPK\\Log_NhanThuong.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..HangTop.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Giải Đấu Mạn Đà Trang <color=red>Lần "..self.TaskIDNhanThuong.."<color> <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbCheckTop_NhanThuong:Top_2()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 2;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3015,2,nil,9);--Thẻ Mạn Đà Nhị Phẩm
me.AddStackItem(18,1,3001,1,nil,350);--Danh vọng Sát Thần
me.AddStackItem(18,1,3000,1,nil,7);--Rương Tinh Thạch
me.AddStackItem(18,1,3014,1,nil,1);--Rương Mạn Đà
me.AddStackItem(1,13,270,4,nil,1);--[Mặt Nạ] Mạn Đà La Tinh-Nhị
me.AddStackItem(18,1,3100,2,{bForceBind=1,},6);--Khoá Vô Cực
me.AddStackItem(18,1,3101,1,{bForceBind=1,},15);--Túi Thẻ Hoạt Động


--Thưởng Tăng Cường Top 2
	me.AddStackItem(18,1,3960,2,{bForceBind=1,},150);--Pha Lê
	me.AddStackItem(18,1,3300,1,{bForceBind=1,},15);--Túi Thạch Trung Châu
	me.AddStackItem(18,1,3301,1,{bForceBind=1,},6);--Linh Lung Hỏa Liên
	me.AddStackItem(18,1,3404,5,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 25
	me.AddStackItem(18,1,3966,1,{bForceBind=1,},6);--Bản Đồ Sự Kiện (Chưa Giám Định)
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},15);--Rương Sự Kiện Noel
	me.AddStackItem(18,1,3941,1,{bForceBind=1,},350);--Mảnh Bí Bảo (Chưa Giám Định)
	me.AddStackItem(18,1,3941,2,{bForceBind=1,},350);--Mảnh Cường Nhân (Chưa Giám Định)
	me.AddStackItem(18,1,3941,3,{bForceBind=1,},350);--Mảnh Hiệp Khách (Chưa Giám Định)

me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ChucNang\\ManDaPK\\Log_NhanThuong.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..HangTop.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Giải Đấu Mạn Đà Trang <color=red>Lần "..self.TaskIDNhanThuong.."<color> <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbCheckTop_NhanThuong:Top_3()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 3;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3001,1,nil,250);--Danh vọng Sát Thần
me.AddStackItem(18,1,3000,1,nil,5);--Rương Tinh Thạch
me.AddStackItem(18,1,3014,1,nil,1);--Rương Mạn Đà
me.AddStackItem(1,13,269,4,nil,1);--[Mặt Nạ] Mạn Đà La Tinh-Tam
me.AddStackItem(18,1,3100,2,{bForceBind=1,},6);--Khoá Vô Cực
me.AddStackItem(18,1,3101,1,{bForceBind=1,},10);--Túi Thẻ Hoạt Động


--Thưởng Tăng Cường Top 3
	me.AddStackItem(18,1,3960,2,{bForceBind=1,},100);--Pha Lê
	me.AddStackItem(18,1,3300,1,{bForceBind=1,},10);--Túi Thạch Trung Châu
	me.AddStackItem(18,1,3301,1,{bForceBind=1,},4);--Linh Lung Hỏa Liên
	me.AddStackItem(18,1,3404,5,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 25
	me.AddStackItem(18,1,3966,1,{bForceBind=1,},5);--Bản Đồ Sự Kiện (Chưa Giám Định)
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},10);--Rương Sự Kiện Noel
	me.AddStackItem(18,1,3941,1,{bForceBind=1,},300);--Mảnh Bí Bảo (Chưa Giám Định)
	me.AddStackItem(18,1,3941,2,{bForceBind=1,},300);--Mảnh Cường Nhân (Chưa Giám Định)
	me.AddStackItem(18,1,3941,3,{bForceBind=1,},300);--Mảnh Hiệp Khách (Chưa Giám Định)

me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ChucNang\\ManDaPK\\Log_NhanThuong.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..HangTop.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Giải Đấu Mạn Đà Trang <color=red>Lần "..self.TaskIDNhanThuong.."<color>  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbCheckTop_NhanThuong:Top_4()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 3;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3001,1,nil,125);--Danh vọng Sát Thần
me.AddStackItem(18,1,3000,1,nil,3);--Rương Tinh Thạch
me.AddStackItem(18,1,3100,2,{bForceBind=1,},3);--Khoá Vô Cực
me.AddStackItem(18,1,3101,1,{bForceBind=1,},2);--Túi Thẻ Hoạt Động


--Thưởng Tăng Cường Top 4
	me.AddStackItem(18,1,3960,2,{bForceBind=1,},50);--Pha Lê
	me.AddStackItem(18,1,3300,1,{bForceBind=1,},5);--Túi Thạch Trung Châu
	me.AddStackItem(18,1,3301,1,{bForceBind=1,},2);--Linh Lung Hỏa Liên
	me.AddStackItem(18,1,3404,5,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 25
	me.AddStackItem(18,1,3966,1,{bForceBind=1,},4);--Bản Đồ Sự Kiện (Chưa Giám Định)
	me.AddStackItem(18,1,3039,10,{bForceBind=1,},5);--Rương Sự Kiện Noel
	me.AddStackItem(18,1,3941,1,{bForceBind=1,},250);--Mảnh Bí Bảo (Chưa Giám Định)
	me.AddStackItem(18,1,3941,2,{bForceBind=1,},250);--Mảnh Cường Nhân (Chưa Giám Định)
	me.AddStackItem(18,1,3941,3,{bForceBind=1,},250);--Mảnh Hiệp Khách (Chưa Giám Định)

me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,5);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ChucNang\\ManDaPK\\Log_NhanThuong.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..HangTop.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Giải Đấu Mạn Đà Trang <color=red>Lần "..self.TaskIDNhanThuong.."<color>  <color=cyan>Top "..HangTop.."<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbCheckTop_NhanThuong:Top_5_10()
local CheckNhan = me.GetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong);
local HangTop = 5;
if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3001,1,nil,75);--Danh vọng Sát Thần
me.AddStackItem(18,1,3000,1,nil,2);--Rương Tinh Thạch

me.AddStackItem(18,1,3100,2,{bForceBind=1,},2);--Khoá Vô Cực
me.AddStackItem(18,1,3101,1,{bForceBind=1,},2);--Túi Thẻ Hoạt Động

me.SetTask(self.TaskGroupNhanThuong,self.TaskIDNhanThuong,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ChucNang\\ManDaPK\\Log_NhanThuong.txt";

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..HangTop.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thưởng Giải Đấu Mạn Đà Trang <color=red>Lần "..self.TaskIDNhanThuong.."<color>  <color=cyan>Top "..HangTop.." - 10<color> thành công, thật Vinh Dự!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end





function tbCheckTop_NhanThuong:CheckTop()
local Time	= os.date("%d/%m/%Y - %Hh:%M", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);

local nMapId, nMapX, nMapY	= me.GetWorldPos();	
if nMapId == 2000  then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Không thể sử dụng chức năng này tại đây!<color>"));
return;
end;

if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 0 then
	me.SetTask(self.TaskGroup_Time,self.TaskID_Time,0);
end

if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
	me.NewWorld(2000, 1626, 3187);
	Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
	me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
return;
end;

if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return;
end;

local szMsg = 
"<color=yellow>Thông tin:\n"..
"<color=green>- Hiện tại: <color=cyan>"..Time.."<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=yellow>* Thời gian Báo danh:\n"..
"<color=yellow>- 19h30 các thứ: T5-T6\n"

local tbOpt = 
{

{"<color=yellow>Bảng Xếp Hạng Mạn Đà Trang<color>", self.XemTopTCT, self},

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbCheckTop_NhanThuong:XemTopTCT()
    local OUTPUT_FILE_PATH = "\\script\\ChucNang\\ManDaPK\\BXHTOP.txt";
	local tbFileOut = Lib:LoadTabFile(OUTPUT_FILE_PATH);
	local tbOpt = "          <color=yellow>《BXH Giải PK Mạn Đà Trang》<color> \n\n";
	local MauChu = {'red','pink','cyan','green','blue','blue','blue','blue','blue','blue'};
	local x = 1;
    for _, tbRowOut in pairs(tbFileOut) do
        local HangTop = tbRowOut["STT"] or "";
        local TenNhanVat = tbRowOut["TenNhanVat"] or "";
        local TongDiem = tbRowOut["TongDiem"] or "";
        local Show = '<color='..MauChu[x]..'> Top '..HangTop..': '..TenNhanVat..' ~ <color=yellow> '..TongDiem..'<color> điểm\n';
        tbOpt = tbOpt..Show;
        x = x + 1;
    end
    Dialog:Say(tbOpt);
end
