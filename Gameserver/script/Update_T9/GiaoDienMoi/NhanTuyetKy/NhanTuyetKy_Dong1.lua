local tbNpc = Npc:GetClass("NhanTuyetKy_Dong1");
DoScript("\\script\\Update_T9\\GiaoDienMoi\\NhanTuyetKy\\NhanTuyetKy_Dong1.lua");

tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.Task_ID_Thuong_Time = 1;

tbNpc.TaskGroup = 4025;
tbNpc.Task_ID_Thuong = 1;
tbNpc.Task_ID_Thuong_Day = 2;		--Task lưu ngày thường

tbNpc.Task_ID_Vip = 3;
tbNpc.Task_ID_Vip_Day = 4;			--Task lưu ngày VIP

tbNpc.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNpc.TaskIDTT = 1;



--Nhận Tuyệt kỹ dòng 1
function tbNpc:OnDialog()
DoScript("\\script\\Update_T9\\GiaoDienMoi\\NhanTuyetKy\\NhanTuyetKy_Dong1.lua");
local nPoint= me.GetTask(self.TaskGroup_Time,self.Task_ID_Thuong_Time);
local Time	= os.date("%d/%m/%Y - %Hh:%M", GetTime());

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if me.GetTask(self.TaskGroup, self.Task_ID_Thuong_Day) < nDate then
me.SetTask(self.TaskGroup, self.Task_ID_Thuong_Day, nDate);
me.SetTask(self.TaskGroup, self.Task_ID_Thuong, 0);
end 

if me.GetTask(self.TaskGroup, self.Task_ID_Vip_Day) < nDate then
me.SetTask(self.TaskGroup, self.Task_ID_Vip_Day, nDate);
me.SetTask(self.TaskGroup, self.Task_ID_Vip, 0);
end 

local szMsg = 
"<color=pink>*Thông tin:\n"..
"<color=yellow>- Hiện tại: <color=cyan>"..Time.."<color>\n"..
"- Thời gian Online còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=pink>*Quy định:\n"..
"<color=yellow>- 1 ngày nhận 1 lần.\n"..
"- Ngẫu nhiên 1 trong 12 Tuyệt kỹ.<color>\n"..
"<color=green>- Có Thẻ Sát Thần 1 có thể nhận thêm 1 lần nữa trong ngày.\n"..
"- Thẻ Sát Thần 1 mua trong Cửa hàng Thời gian hoặc Lục Bảo.<color>\n"

local tbOpt = 
{

{"<color=yellow>Ta muốn nhận Tuyệt Kỹ<color>",self.NhanTuyetKy,self};
{"<color=red>Nhận thêm Tuyệt Kỹ (có thẻ Sát Thần 1)<color>",self.NhanTuyetKy2,self};

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end


--Giới Hạn--
function tbNpc:NhanTuyetKy()
local nGioiHan = me.GetTask(self.TaskGroup, self.Task_ID_Thuong);
local nCodeTanThu = me.GetTask(self.TaskGroupTT, self.TaskIDTT);

if nGioiHan >= 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>1 ngày chỉ nhận 1 lần, ngày mai hãy đến!<color>"));
return 0; 
end

if nCodeTanThu < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Chưa Kích hoạt Code Tân Thủ, không thể nhận, hãy Liên hệ Zalo Admin!<color>"));
return 0; 
end

if me.GetTask(self.TaskGroup_Time, self.Task_ID_Thuong_Time) < 1 then
	me.NewWorld(2000, 1626, 3187);
	Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
	me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
return 0; 
end



	if me.CountFreeBagCell() < 5 then
		Dialog:Say("Cần 5 Ô hành trang, hãy sắp xếp theo yêu cầu!");
		return 0;
	end
me.SetTask(self.TaskGroup, self.Task_ID_Thuong, 1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(87);
return 1;				
end

--Có Thẻ Sát Thần 1--
function tbNpc:NhanTuyetKy2()
local nGioiHan = me.GetTask(self.TaskGroup, self.Task_ID_Vip);
if nGioiHan >= 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>1 ngày chỉ nhận 1 lần, ngày mai hãy đến!<color>"));
return 0; 
end

if me.CountFreeBagCell() < 5 then
Dialog:Say("Cần 5 Ô hành trang, hãy sắp xếp theo yêu cầu!");
return 0;
end
--me.SetTask(self.TaskGroup, self.Task_ID_Vip, 1);

Npc:GetClass("TheSatThanVip1"):OnDialog();
return 1;				
end
