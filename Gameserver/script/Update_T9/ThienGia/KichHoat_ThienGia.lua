local tbThienGia = Npc:GetClass("KichHoat_ThienGia");


tbThienGia.nSkill_1 = 1748;				--Skill Thiên Gia

tbThienGia.NhanCap_1 = 1;				--Cấp Skill nhận được 1

tbThienGia.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbThienGia.TaskIDTT = 1;



function tbThienGia:OnDialog()
local szMsg = "<color=gold>[Hệ Thống Thiên Gia]<color>";
local tbOpt = {{"Kết thúc đối thoại..."},};
table.insert(tbOpt, 1, {"<color=yellow>Kích Hoạt Thiên Gia Cấp <color=cyan>1<color><color>", self.KichHoat,self});	
Dialog:Say(szMsg, tbOpt);
end

function tbThienGia:KichHoat()
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

local nLevel = me.GetSkillLevel(self.nSkill_1);	--Thiên Gia
	if nLevel >= 1 then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia đã Kích hoạt!<color>"));
	return 0;
	end

	local nCapThienGia = self.NhanCap_1;
	me.AddFightSkill(self.nSkill_1,nCapThienGia);
	
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> Kích hoạt thành công <color=cyan>Thiên Gia Lục Phẩm cấp "..nCapThienGia.."<color> !!<color>";
	Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Kích hoạt thành công <color=cyan>Thiên Gia Lục Phẩm cấp "..nCapThienGia.."<color>  !!<color>"));
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg)
	KDialog.MsgToGlobal(szMsg);	

end
