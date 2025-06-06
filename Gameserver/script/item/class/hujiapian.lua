
-- 护甲片
-- 作用：右键点击使用，使用后在一定时间内生命值上限提升
-- 详细说明：护甲片共分10级，等级越高所能提升的生命值上限越高

local tbItem 			= Item:GetClass("hujiapian");
tbItem.nDuration	= Env.GAME_FPS * 60 * 60;
tbItem.nSkillId	= 385;


function tbItem:OnUse()
	me.AddSkillState(self.nSkillId, it.nLevel, 2, self.nDuration, 1, 0, 1);
	
	return 1;
end

function tbItem:GetTip()
	return FightSkill:GetSkillItemTip(self.nSkillId, it.nLevel);
end