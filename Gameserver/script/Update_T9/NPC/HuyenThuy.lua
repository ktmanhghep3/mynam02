local tbNpc = Npc:GetClass("HuyenThuy");

tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.TaskID_Time = 1;

tbNpc.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNpc.TaskIDTT = 1;

function tbNpc:OnDialog()
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

local nNgay = tonumber(os.date("%d", nSec));
local nThang = tonumber(os.date("%m", nSec));
local nNam = tonumber(os.date("%Y", nSec));
local nGio = tonumber(os.date("%H", GetTime()));
local nPhut = tonumber(os.date("%M", GetTime()));
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = 
"<color=yellow>Thông tin:\n\n"..
"- Thời gian: <color=green>"..nNgay.."/"..nThang.."/"..nNam.." - "..nGio.."h:"..nPhut.."p<color>\n"..
"- Thời gian Online còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=yellow>* Các hoạt động Viễn Chinh Tây Hạ:\n"..
"<color=pink>- Hoạt động PK-Boss: Lam Nguyệt Cốc:\n"..
"<color=green>~ 20h45 các ngày: T2-T3-T5-T6 (tổng thời gian trong hoạt động là 90 phút)\n"..
"<color=pink>- Tầm Bảo-PK: Hoành Thành Tây Hạ:\n"..
"<color=green>~21h45 các ngày: T3,T5 (tổng thời gian trong hoạt động là 45 phút)\n"

local tbOpt = 
{

{"<color=yellow>[Hoạt Động PK] - Lam Nguyệt Cốc<color>" , SpecialEvent.LamNguyetCocPK.OnDialog, SpecialEvent.LamNguyetCocPK,};
{"<color=yellow>[Tầm Bảo PK] - Hoành Thành Tây Hạ<color>" , SpecialEvent.HoanhThanhPK.OnDialog, SpecialEvent.HoanhThanhPK,};



{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
