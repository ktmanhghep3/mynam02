local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_4");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,4};
tbSuKien_DongGop2024.TaskGroup_Open = 4236;			--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_Pay4 = 4;			--Task Nhận Gói 4

tbSuKien_DongGop2024.Skill_ThienGia = 1748;
tbSuKien_DongGop2024.CapThienGia = 25;

function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_Pay4);
local szMsg = "T.tính Bộ Thiên Gia nhận được: <color=cyan>Lv +".. self.CapThienGia .." <color><color>\n"..
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
local nHuyChuong = me.GetSkillLevel(self.HuyChuong);
local nSkill_ThienGia = me.GetSkillLevel(self.Skill_ThienGia);
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_Pay4);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


if nSkill_ThienGia < self.CapThienGia then
me.AddFightSkill(self.Skill_ThienGia,self.CapThienGia);--Skill_ThienGia 1

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!<color>";
me.Msg("Kích hoạt Thiên Gia <color=green>(Kiếm +".. self.CapThienGia ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

me.SetTask(self.TaskGroup_Open,self.TaskID_Open_Pay4,1);--Task Tính lần đã nhận

Task:DelItem(me, self.Item_Ruong, 1);
end
