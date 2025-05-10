local tbItem 	= Item:GetClass("wanwuguiyuandan");
tbItem.nGiay = 600;
function tbItem:OnUse()
	me.AddSkillState(385, 10, 1, self.nGiay * Env.GAME_FPS);
	me.AddSkillState(386, 10, 1, self.nGiay * Env.GAME_FPS);
	me.AddSkillState(387, 10, 1, self.nGiay * Env.GAME_FPS);
	return 1;
end


function tbItem:GetTip()
	local szTip = "";
	szTip	= szTip..FightSkill:GetSkillItemTip(385, 10) .. "\n";
	szTip	= szTip..FightSkill:GetSkillItemTip(386, 10) .. "\n";
	szTip	= szTip..FightSkill:GetSkillItemTip(387, 10) .. "\n";
	return szTip;
end
