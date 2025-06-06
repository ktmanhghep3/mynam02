

-- 首饰制作技能新加道具：五行石
-- 作用：右键点击使用，使用后在一定时间内全抗提升
-- 详细说明：五行石共分10级，等级越高所能提升的抗性越高


local tbItem 		= Item:GetClass("wuxingshi");
tbItem.nDuration	= Env.GAME_FPS * 60 * 60;
tbItem.nSkillId		= 386;


function tbItem:OnUse()
	me.AddSkillState(self.nSkillId, it.nLevel, 2, self.nDuration, 1, 0, 1);
	
	return 1;
end


function tbItem:GetTip()
	return FightSkill:GetSkillItemTip(self.nSkillId, it.nLevel);
end

