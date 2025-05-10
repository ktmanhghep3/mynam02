local tbNPCEvent = {};
SpecialEvent.NPCEventTrungThu = tbNPCEvent;

tbNPCEvent.Task_EventTT = 4010;	--Task Group Tính số Event Trăng tròn đã dùng(mốc)
tbNPCEvent.ID_EventTT   = 1;		--Task Tính số Event Trăng tròn đã dùng(mốc) 
tbNPCEvent.Task_Time = 4000;	--Thời Gian online
tbNPCEvent.ID_Time   = 1;		--Thời Gian online 


function tbNPCEvent:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckTime = me.GetTask(self.Task_Time,self.ID_Time);
local CheckMocTrang = me.GetTask(self.Task_EventTT,self.ID_EventTT);	--Điểm Tích lũy Phúc lợi
	local szMsg = "<color=cyan>Thông tin:<color><color=yellow>\n"..Time.."\nThông tin Accout:\n- Tài Khoản Game: <color=green>"..me.szAccount.."<color>.\n- Tên nhân vật: <color=green>"..me.szName.."<color>.\n- Thời gian Online còn: <color=green>"..CheckTime.."<color> ngày.\n- IP đang Truy cập: <color=pink>"..szIp.."<color>.\n- Mốc Trăng Tròn hiện tại: <color=cyan>"..CheckMocTrang.."<color> điểm<color>";

	local tbOpt = 
	{
	{"Kết thúc đối thoại"},
	}
	table.insert(tbOpt, 1, {"<color=cyan>Đổi Ngôi Sao May Mắn",SpecialEvent.DoiNgoiSao.OnDialog, SpecialEvent.DoiNgoiSao});
	table.insert(tbOpt, 2, {"<color=green>Ghép Chuông Vàng Trung Thu",SpecialEvent.GhepChuongEvent.OnDialog, SpecialEvent.GhepChuongEvent});
	table.insert(tbOpt, 3, {"<color=yellow>Nhận thưởng Mốc Trăng Tròn",SpecialEvent.MocEventTrang.OnDialog, SpecialEvent.MocEventTrang});


	Dialog:Say(szMsg, tbOpt);
end
