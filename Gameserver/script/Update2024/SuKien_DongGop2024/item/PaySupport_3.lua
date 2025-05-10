local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_3");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,3};
tbSuKien_DongGop2024.TaskGroup_Open = 4236;			--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_Pay3 = 3;			--Task Nhận Gói 3

tbSuKien_DongGop2024.nSkill_HC = 1440;						--Skill Huy Chương
tbSuKien_DongGop2024.LevelHC = 50;								--Cấp Huy Chương ADD

function tbSuKien_DongGop2024:OnUse()	
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_Pay3);
local szMsg = "Thuộc tính Huy chương nhận được: <color=cyan>Lv +".. self.LevelHC .." <color><color>\n"..
"<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CapHC_HienTai = me.GetSkillLevel(self.nSkill_HC);
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_Pay3);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


	if CapHC_HienTai >= self.LevelHC then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thuộc tính Huy Chương đã đạt: <color=cyan>Lv +".. self.LevelHC .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end
	

me.AddFightSkill(self.nSkill_HC,self.LevelHC);
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_Pay3,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: Rương Huy Chương Lv50!<color>";
me.Msg("Kích hoạt Huy Chương <color=green>(Lv +".. self.LevelHC ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
