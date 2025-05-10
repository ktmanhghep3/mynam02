local tbNpc = Npc:GetClass("BangAnhHung");

tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.TaskID_Time = 1;

tbNpc.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNpc.TaskIDTT = 1;

function tbNpc:OnDialog()
DoScript("\\script\\Update_T9\\NPC\\BangAnhHung.lua");
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

local Time	= os.date("%d/%m/%Y - %Hh:%M", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = 
"<color=yellow>Thông tin:\n"..
"<color=green>- Hiện tại: <color=cyan>"..Time.."<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=yellow>* Thời gian Báo danh Mạn Đà Trang:\n"..
"<color=pink>- 19h30 các thứ: T5-T6\n"

local tbOpt = 
{
{"<bclr=0,0,200><color=white>Giải Đấu Mạn Đà Trang<color>", self.ThiDau_ManDaTrang, self};
{"<color=yellow>[Hoạt Động PK] - Lam Nguyệt Cốc<color>" , SpecialEvent.LamNguyetCocPK.OnDialog, SpecialEvent.LamNguyetCocPK,};
{"<color=yellow>[Tầm Bảo PK] - Hoành Thành Tây Hạ<color>" , SpecialEvent.HoanhThanhPK.OnDialog, SpecialEvent.HoanhThanhPK,};

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
function tbNpc:ThiDau_ManDaTrang()
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

local Time	= os.date("%d/%m/%Y - %Hh:%M", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = 
"<color=yellow>Thông tin:\n"..
"<color=green>- Hiện tại: <color=cyan>"..Time.."<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=yellow>* Thời gian Báo danh Mạn Đà Trang:\n"..
"<color=yellow>- 19h30 các thứ: T5-T6\n"

local tbOpt = 
{

{"<bclr=0,0,200><color=red>[Báo Danh] - Mạn Đà Trang<color>" , SpecialEvent.ManDaPK.OnDialog, SpecialEvent.ManDaPK},
{"<bclr=0,0,200><color=white>Xem Xếp Hạng<color>", SpecialEvent.CheckTop_NhanThuong.XemTopTCT,SpecialEvent.CheckTop_NhanThuong};
{"<bclr=0,0,200><color=green>Nhận Thưởng<color>", SpecialEvent.CheckTop_NhanThuong.NhanThuong,SpecialEvent.CheckTop_NhanThuong};


{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
