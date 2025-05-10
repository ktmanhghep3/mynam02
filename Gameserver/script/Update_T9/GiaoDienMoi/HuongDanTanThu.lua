local tbNpc = Npc:GetClass("HuongDanTanThu");
tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.TaskID_Time = 1;

function tbNpc:OnDialog_TK()
if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
	me.NewWorld(2000, 1626, 3187);
	Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
	me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
end
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

