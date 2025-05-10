local tbNpc = Npc:GetClass("HDDaoNguyen");

tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.TaskID_Time = 1;

function tbNpc:OnDialog()
local nNgay = tonumber(os.date("%d", nSec));
local nThang = tonumber(os.date("%m", nSec));
local nNam = tonumber(os.date("%Y", nSec));
local nGio = tonumber(os.date("%H", GetTime()));
local nPhut = tonumber(os.date("%M", GetTime()));
local nPoint = me.GetTask(self.TaskGroup_Time,self.TaskID_Time);

	if nPoint < 0 then
	me.SetTask(self.TaskGroup_Time,self.TaskID_Time,0);
	return;
	end


local szMsg = 
"<color=yellow>Thông tin:\n\n"..
"Tài khoản game: <color=green>"..me.szAccount.."<color>\n"..
"Tên nhân vật: <color=green>"..me.szName.."<color>\n"..
"- Thời gian: <color=green>"..nNgay.."/"..nThang.."/"..nNam.." - "..nGio.."h:"..nPhut.."p<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=red>-Muốn rời khỏi nơi đây cần Thời gian ít nhất 1 ngày!<color><color>"

local tbOpt = 
{
{"<color=yellow>Ta muốn rời khỏi đây<color>", self.OutDHN, self},
{"<bclr=0,0,200><color=white>Nhận thời gian online<color>", SpecialEvent.NapThoiGian.OnDialog,SpecialEvent.NapThoiGian};
--{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbNpc:OutDHN()
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
	if nPoint < 1 then
	Dialog:Say("<color=gold>Thời gian Online của ngươi còn 0, không thể rời khỏi!<color>");
	return;
	end
	me.NewWorld(2,1772,3579);
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Chúc mừng ngươi tiếp tục hành trình kiếm hiệp!<color>"));
end
