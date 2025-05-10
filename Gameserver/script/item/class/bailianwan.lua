local tbItem = Item:GetClass("bailianwan");
tbItem.nGiay = 600;
function tbItem:OnUse()
	me.AddSkillState(385, 8, 1, self.nGiay * Env.GAME_FPS);
	me.AddSkillState(386, 8, 1, self.nGiay * Env.GAME_FPS);
	me.AddSkillState(387, 8, 1, self.nGiay * Env.GAME_FPS);
	return 1;
end

function tbItem:GetTip()
	local szTip = "";
	szTip = szTip..FightSkill:GetSkillItemTip(385, 8) .. "\n";
	szTip = szTip..FightSkill:GetSkillItemTip(386, 8) .. "\n";
	szTip = szTip..FightSkill:GetSkillItemTip(387, 8) .. "\n";
	return szTip;
end
