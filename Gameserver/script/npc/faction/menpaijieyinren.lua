local tbMenPaiJieYinRen = Npc:GetClass("menpaijieyinren");

tbMenPaiJieYinRen.TaskGroupTT = 4030;--TaskGroup Code Tân Th?, TaskID: 1-Code T7, 2-Code L? 2-9
tbMenPaiJieYinRen.TaskIDTT = 1;

local tbNpcTemplate2Faction = 
{
	[3507] = 1, [3501] = 2, [3513] = 3, [3519] = 4, [3525] = 5, [3531] = 6,
	[3537] = 7, [3543] = 8, [3549] = 9, [3555] = 10, [3474] = 11, [3480] = 12,
}
function tbMenPaiJieYinRen:OnDialog()
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

	Npc.tbMenPaiNpc:DialogJieYinRen(tbNpcTemplate2Faction[him.nTemplateId])
end
