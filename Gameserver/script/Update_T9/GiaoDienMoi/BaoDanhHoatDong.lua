local tbNpc = Npc:GetClass("BaoDanhHoatDong");

tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.TaskID_Time = 1;

tbNpc.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNpc.TaskIDTT = 1;

--Võ Lâm Luận Kiếm
function tbNpc:VoLamLuanKiem()
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
"<color=yellow>Thông tin:\n\n"..
"<color=green>- Hiện tại: <color=cyan>"..Time.."<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=green>* Các hoạt động Báo danh:\n"..
"<color=pink>- Công Thành Chiến: Thứ 5 - 19h30\n"..
"<color=pink>- Luận Kiếm: Thứ 4,6 - 19h30\n"..
"<color=pink>- Loạn Phái: Thứ 3 - 19h30\n"

local tbOpt = 
{

{"<color=yellow>[Hoạt Động PK] - Võ Lâm Luận Kiếm<color>" , SpecialEvent.DauTruongNew.OnDialog, SpecialEvent.DauTruongNew},

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

--Công Thành Chiến
function tbNpc:CongThanhChien()
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
"<color=yellow>Thông tin:\n\n"..
"<color=green>- Hiện tại: <color=cyan>"..Time.."<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=green>* Các hoạt động Báo danh:\n"..
"<color=pink>- Công Thành Chiến: Thứ 5 - 19h30\n"..
"<color=pink>- Luận Kiếm: Thứ 4,6 - 19h30\n"..
"<color=pink>- Loạn Phái: Thứ 3 - 19h30\n"

local tbOpt = 
{

{"<color=yellow>Báo Danh Công Thành Chiến (Bang chủ/Thủ lĩnh)<color>",self.BDCongThanh,self};

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
function tbNpc:BDCongThanh()
local tbNpc = Npc:GetClass("ctcchefu");
tbNpc:OnDialog(nCheck)
end

--Thi đấu Loạn phái
function tbNpc:LoanPhai()
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
"<color=yellow>Thông tin:\n\n"..
"<color=green>- Hiện tại: <color=cyan>"..Time.."<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=green>* Các hoạt động Báo danh:\n"..
"<color=pink>- Công Thành Chiến: Thứ 5 - 19h30\n"..
"<color=pink>- Luận Kiếm: Thứ 4,6 - 19h30\n"..
"<color=pink>- Loạn Phái: Thứ 3 - 19h30\n"

local tbOpt = 
{

{"<color=yellow>Báo Danh Thi đấu Loạn phái", FactionBattle.ChoiceFunc, FactionBattle, nFaction},

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

--Tống Kim
function tbNpc:TongKim()
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


if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 0 then
	me.SetTask(self.TaskGroup_Time,self.TaskID_Time,0);
end

local Time	= os.date("%d/%m/%Y %Hh:%Mp", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = 
"<color=yellow>Thông tin:\n"..
"- Thời gian: <color=green>"..Time.."<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=yellow>✹ Tống Kim:<color>\n"..
"<color=cyan>✽Báo danh:16h50-18h50-20h50-22h50-00h50\n"..
"✽Hạn chế: 1PC/1Acc/1 Trận:18h50-20h50-22h50\n"..
"✽Hạn chế: 1PC/2Acc/1 Trận:Giờ còn lại<color>\n"

local tbOpt = 
{

{"<color=yellow>Đến nơi Báo Danh Tống<color>", me.NewWorld, 182, 1689, 3285};
{"<color=yellow>Đến nơi Báo Danh Kim<color>", me.NewWorld, 185, 1689, 3285};

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
