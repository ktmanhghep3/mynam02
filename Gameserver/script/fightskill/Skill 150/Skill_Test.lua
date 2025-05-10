Require("\\script\\fightskill\\fightskill.lua")
local nA0 = FightSkill.tbParam.nSadd;	--攻速类攻击技能+1的成长系数
local nA1 = FightSkill.tbParam.nSadd1;	--格斗类攻击技能+1的成长系数
local nS01 = FightSkill.tbParam.nS1;	--技能1级的数值系数
local nS20 = FightSkill.tbParam.nS20;	--技能20级的数值系数

local tb = {

	Test_01 = { --????
		appenddamage_p= {{{1,60},{2,64},{3,68},{4,72}}},
		firedamage_v={
			[1]={{1,1500},{2,1520}},
			[3]={{1,1540},{2,1580}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		state_burn_attack={{{1,22},{2,24}},{{1,18},{10,45},{11,45}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		state_drag_attack={{{1,0.5},{2,1}},{{1,32},{10,32},{11,32}},{{1,10},{2,10}}},
		skill_vanishedevent={{{1,1782},{20,1782}}},
		skill_showevent={{{1,8},{20,8}}},
		missile_hitcount={{{1,2},{5,2},{10,4},{11,4}}},
	},

	Test_02 = { --????,???????
		appenddamage_p= {{{1,56},{2,59},{3,62},{4,65}}},
		firedamage_v={
			[1]={{1,940*0.9*FightSkill.tbParam.nS1},{10,940*0.9},{20,940*0.9*FightSkill.tbParam.nS20},{21,940*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,940*1.1*FightSkill.tbParam.nS1},{10,940*1.1},{20,940*1.1*FightSkill.tbParam.nS20},{21,940*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		state_burn_attack={{{1,5},{20,25}},{{10,9},{20,9}}},
		state_burn_attacktime={{{1,55},{2,60}}},
		state_hurt_attack={{{1,21},{2,22}},{{1,2*19},{20,3*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{5,4},{10,10},{15,10},{20,15},{21,15}}},
	},

	Test_03 ={ --圣火燎原
		appenddamage_p= {{{1,40},{2,43},{3,46}}},
		poisondamage_v={{{1,1600*FightSkill.tbParam.nS1},{10,1750},{20,1950},{21,1970}},{{1,4*9},{20,4*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},
		
		state_fixed_attack={{{1,0.5},{2,1}},{{1,18*2},{2,18*2}}},
		state_weak_attack={{{1,25},{10,50},{20,64}},{{1,72},{20,72}}},
		
		state_weak_attacktime={{{1,100},{2,110}}},
		state_fixed_attacktime={{{1,50},{2,55}}},
		
		missile_range={4,0,4},
	},

	Test_04 ={ --圣火燎原
		appenddamage_p= {{{1,33},{2,36},{3,39}}},
		addpoisonmagic_v={{{1,850*FightSkill.tbParam.nS1},{10,1000},{20,1200},{21,1220}},{{1,5*9},{20,5*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},	
		
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1*0.8}}},		
		state_hurt_attack={{{1,15},{10,15}},{{1,18*1.5},{20,18*1.5}}},
		state_hurt_attacktime={{{1,100},{2,110}}},		
		missile_range={4,0,4},
	},


	Test_05 ={ --圣火燎原
		appenddamage_p= {{{1,30},{2,32},{3,34}}},
		addpoisonmagic_v={{{1,1050*FightSkill.tbParam.nS1},{10,1200},{20,1400},{21,1520}},{{1,5*9},{20,5*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},	
		
		state_burn_attack={{{1,25},{10,50},{20,64}},{{1,18*1.5},{20,18*1.5}}},
		state_burn_attacktime={{{1,100},{2,110}}},		
		--skill_vanishedevent={{{1,1747},{20,1747}}},
		missile_range={4,0,4},
	},


	Test_06 ={ --圣火燎原
		appenddamage_p= {{{1,20},{2,22},{3,24}}},
		addpoisonmagic_v={{{1,350*FightSkill.tbParam.nS1},{10,500},{20,700},{21,720}},{{1,5*9},{20,5*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},	
		
		state_palsy_attack={{{1,15},{10,15}},{{1,18*1.5},{20,18*1.5}}},
		state_palsy_attacktime = {{{1,40},{2,42}}},		
		missile_range={4,0,4},
	},


















}
FightSkill:AddMagicData(tb)

