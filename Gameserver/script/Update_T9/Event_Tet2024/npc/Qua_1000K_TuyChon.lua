local tbItem = Item:GetClass("Qua_1000K_TuyChon");
tbItem.TaskGroup_Time = 4000;	--Task Thời Gian
tbItem.TaskID_Time = 1;			--Task Thời Gian
tbItem.TaskGroup_Add = 4105;		--Task Nhận Quà Ông Táo
tbItem.TaskID_NhanQuaTuyChon = 3;	--Nhận Quà Chung
tbItem.Qua_1000K_TuyChon = {18,1,3037,1};
tbItem.GioiHan_MoTui = 20;
function tbItem:OnUse()
DoScript("\\script\\Update_T9\\Event_Tet2024\\npc\\Qua_1000K_TuyChon.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTuyChon);

local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=yellow>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=yellow>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=yellow>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=yellow>- IP: <color=cyan>"..szIp.."<color><color>\n"..
"<color=yellow>- Thời gian còn: <color=cyan>"..nPoint.."<color> ngày<color>\n"..
"<color=yellow>- Túi Quà Đã Mở: <color=cyan>"..CheckNhan.."<color>/"..self.GioiHan_MoTui.."<color>\n"..
"<color=red>Tùy chọn nhận 1 trong 3 phần thưởng sau:<color>"
local tbOpt = {
			
{"<color=cyan>Nhận 1000K Thời gian Online<color>", self.Nhan_ThoiGian, self},
{"<color=cyan>Nhận 1000K Ngôi Sao May Mắn<color>", self.Nhan_NgoiSao, self},
{"<color=cyan>Nhận 1000K Lục Ngọc Bảo<color>", self.Nhan_LucNgocBao, self},

{"Ta biết rồi!"},
	};
Dialog:Say(szMsg, tbOpt);
end

--Nhận 1000K Thời gian Online--
function tbItem:Nhan_ThoiGian()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTuyChon);
	if CheckNhan >= self.GioiHan_MoTui then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ mở được "..self.GioiHan_MoTui.." lần!<color>"));
		return 0;		
	end

	
--Phần thưởng--
local nThoiGian= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nThoiGian + 140);

me.SetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTuyChon,CheckNhan + 1);
Task:DelItem(me, self.Qua_1000K_TuyChon, 1);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> nhận thành công quà tùy chọn <color=cyan>1.000.000 Thời gian Online<color> từ Sự kiện Tết 2024!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Nhận 1000K Ngôi Sao May Mắn--
function tbItem:Nhan_NgoiSao()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTuyChon);
	if CheckNhan >= 5 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ mở được 5 lần!<color>"));
		return 0;		
	end

	
--Phần thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},840);

me.SetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTuyChon,CheckNhan + 1);
Task:DelItem(me, self.Qua_1000K_TuyChon, 1);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> nhận thành công quà tùy chọn <color=cyan>1.000.000 Ngôi Sao May Mắn<color> từ Sự kiện Tết 2024!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Nhận 1000K Lục Ngọc Bảo--
function tbItem:Nhan_LucNgocBao()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTuyChon);
	if CheckNhan >= 5 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này chỉ mở được 5 lần!<color>"));
		return 0;		
	end

	
--Phần thưởng--
me.AddStackItem(18,1,3010,1,{bForceBind=1,},600);

me.SetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTuyChon,CheckNhan + 1);
Task:DelItem(me, self.Qua_1000K_TuyChon, 1);

local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> nhận thành công quà tùy chọn <color=cyan>1.000.000 Lục Ngọc Bảo<color> từ Sự kiện Tết 2024!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
