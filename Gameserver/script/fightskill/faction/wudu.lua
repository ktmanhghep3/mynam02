Require("\\script\\fightskill\\fightskill.lua")
local tb	= {
	xuedaodusha={ --血刀毒杀_20
		appenddamage_p= {{{1,100},{20,100},{21,100*FightSkill.tbParam.nSadd}}},
		skill_cost_v={{{1,2},{20,20},{21,20}}},
		state_hurt_attack={{{1,15},{10,30},{20,35},{21,36}},{{1,18},{20,18}}},
		state_weak_attack={{{1,15},{10,45},{20,50},{21,51}},{{1,36},{20,54},{21,54}}},
		seriesdamage_r={{{1,50},{20,100},{21,100}}},
		poisondamage_v={{{1,5},{10,50},{20,90},{21,90*FightSkill.tbParam.nSadd}},{{1,10*9},{20,10*9}}},
		addskilldamagep={80, {{1,2},{20,30},{21,35}},1},
		addskilldamagep2={83, {{1,2},{20,10},{21,12}},1},
		addskilldamagep3={84, {{1,2},{20,10},{21,12}}},
	},
	wududaofa={ --五毒刀法_10
		addphysicsdamage_p={{{1,5},{10,150},{11,165}}},
		attackratingenhance_p={{{1,50},{10,150},{11,165}}},
		deadlystrikeenhance_r={{{1,30},{10,50},{11,55}}},
		attackspeed_v={{{1,5},{10,15},{11,16},{12,17},{13,17}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	wuxinggu={ --无形蛊_10
		appenddamage_p= {{{1,10},{10,20},{11,22}}},
		poisondamage_v={{{1,20},{10,60},{11,63}},{{1,9*4},{20,9*4}}},
		missile_hitcount={{{1,3},{10,5},{11,5}}},
	},
	baiduchuanxin={ --百毒穿心_20
		appenddamage_p= {{{1,45},{10,45},{20,45},{21,45*FightSkill.tbParam.nSadd}}},
		physicsenhance_p={{{1,50},{10,86},{20,106},{21,106*FightSkill.tbParam.nSadd}}},
		skill_cost_v={{{1,20},{20,50}}},
		state_hurt_attack={{{1,15},{10,25},{20,30},{21,31}},{{1,18},{20,18}}},
		state_weak_attack={{{1,15},{10,45},{20,50}},{{1,36},{20,54}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		poisondamage_v={{{1,80},{10,98},{20,118},{21,118*FightSkill.tbParam.nSadd}},{{1,5*9},{20,5*9}}},
		addskilldamagep={83, {{1,2},{20,30},{21,35}},1},
		addskilldamagep2={84, {{1,2},{20,30},{21,35}}},
	},
	shidushu={ --施毒术_20
		attackratingenhance_p={{{1,20},{20,100},{21,105}}},
		deadlystrikeenhance_r={{{1,50},{20,350},{21,365}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	wenguzhiqi={ --瘟蛊之气_10
		autoskill={{{1,76},{2,76}},{{1,1},{10,10}}},
		skill_statetime={{{1,-1},{10,-1}}},
	},

	wenguzhiqi_child={ --瘟蛊之气子_10
		autoskill={{{1,5},{2,5}},{{1,1},{10,10}}},
		skill_statetime={{{1,18*15},{10,18*15}}},
	},
	wenguzhiqi_child2={ --瘟蛊之气子2
		appenddamage_p= {{{1,55},{10,100},{11,105}}},
		poisondamage_v={{{1,330},{10,500},{11,520}},{{1,9*3},{10,9*3}}},
		missile_hitcount={{{1,3},{10,3}}},
		seriesdamage_r={{{1,100},{10,250},{11,250}}},
	},
	wangushixin={ --万蛊蚀心_20
		autoskill={{{1,74},{2,74}},{{1,1},{20,20}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	wangushixin_child={ --万蛊蚀心_20
		damage_all_resist={{{1,-20},{20,-120},{21,-126}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_statetime={{{1,18*120},{20,18*180},{21,18*180}}},
	},
	xuanyinzhan={ --玄阴斩
		appenddamage_p= {{{1,35*FightSkill.tbParam.nS1},{10,35},{20,35*FightSkill.tbParam.nS20},{21,35*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		physicsenhance_p={{{1,120*FightSkill.tbParam.nS1},{10,120},{20,120*FightSkill.tbParam.nS20},{21,120*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		poisondamage_v={{{1,50*FightSkill.tbParam.nS1},{10,50},{20,50*FightSkill.tbParam.nS20},{21,50*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},{{1,9*9},{20,9*9}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		state_hurt_attack={{{1,15},{10,25},{20,30}},{{1,18},{20,18}}},
		skill_collideevent={{{1,84},{20,84}}},
		skill_showevent={{{1,4},{20,4}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
	},
	xingkongpo={ --星空破，玄阴斩第二式
		appenddamage_p= {{{1,15*FightSkill.tbParam.nS1},{10,15},{20,15*FightSkill.tbParam.nS20},{21,15*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		poisondamage_v={{{1,30*FightSkill.tbParam.nS1},{10,30},{20,30*FightSkill.tbParam.nS20},{21,30*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},{{1,9*9},{20,9*9}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		state_weak_attack={{{1,15},{10,45},{20,50}},{{1,36},{20,54}}},
		missile_hitcount={{{1,5},{20,5}}},
	},
	wuduqijing={ --五毒奇经_20
		state_weak_attackrate={{{1,10},{20,100}}},
		state_stun_resistrate={{{1,10},{10,100},{20,150}}},
		attackspeed_v={{{1,10},{10,16},{20,26},{23,29},{24,29}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	qianzhuwandu={ --千蛛万毒
		skilldamageptrim={{{1,1*FightSkill.tbParam.nS100Min},{10,1*FightSkill.tbParam.nS100Max}}},
		skillselfdamagetrim={{{1,1*FightSkill.tbParam.nS100Min},{10,1*FightSkill.tbParam.nS100Max}}},
		state_weak_attacktime={{{1,10},{10,80}}},
		state_stun_resisttime={{{1,10},{10,120}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	
	huaxuejiemai={ --中级秘籍：化血截脉
		addenchant={3, {{1,1}, {2, 2}}},
		autoskill={{{1,25},{2,25}},{{1,1},{10,10}}},
		skill_skillexp_v=FightSkill.tbParam.tbMidBookSkillExp,
		skill_statetime={{{1,-1},{2,-1}}},
		steallifeenhance_p={{{1,2},{10,7}},{{1,100},{10,100}}},
		lifemax_p={{{1,30},{10,70},{12,77}}},
	},
	huaxuejiemai_enemy1={ --中级秘籍：化血截脉
		wastemanap={{{1,25},{10,75},{14,90}}},
		manareplenish_p={{{1,-10},{10,-40},{12,-44}}},
		missile_hitcount={{{1,3},{10,5},{11,5}}},
		skill_statetime={{{1,18*3},{10,18*5},{11,18*5}}},
	},
	
	zhuhaqingming={ --朱蛤青冥_10 只是显示用
		state_slowall_attack={{{1,35},{10,100},{11,100}},{{1,72},{10,72}}},
		state_stun_attack={{{1,35},{10,100},{11,100}},{{1,36},{10,36}}},
		state_fixed_attack={{{1,35},{10,85}},{{1,22},{10,22}}},
		state_confuse_attack={{{1,35},{10,85}},{{1,22},{10,22}}},
		state_palsy_attack={{{1,35},{10,85}},{{1,22},{10,22}}},
		appenddamage_p= {{{1,30},{10,60},{11,63}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},
		skill_mintimepercast_v={{{1,20*18},{10,20*18}}},
		skill_mintimepercastonhorse_v={{{1,20*18},{10,20*18}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_maxmissile={{{1,2},{10,2}}},
	},
	zhuhaqingming1={ --朱蛤青冥_10
		state_stun_attack={{{1,35},{10,100},{11,100}},{{1,36},{10,36}}},
		appenddamage_p= {{{1,30},{10,60},{11,63}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_maxmissile={{{1,2},{10,2}}},
	},
	zhuhaqingming2={ --朱蛤青冥_10
		state_fixed_attack={{{1,35},{10,85}},{{1,22},{10,22}}},
		appenddamage_p= {{{1,30},{10,60},{11,63}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_maxmissile={{{1,2},{10,2}}},
	},
	zhuhaqingming3={ --朱蛤青冥_10
		state_palsy_attack={{{1,35},{10,85}},{{1,22},{10,22}}},
		appenddamage_p= {{{1,30},{10,60},{11,63}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_maxmissile={{{1,2},{10,2}}},
	},
	zhuhaqingming4={ --朱蛤青冥_10
		state_stun_attack={{{1,35},{10,100},{11,100}},{{1,36},{10,36}}},
		appenddamage_p= {{{1,30},{10,60},{11,63}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_maxmissile={{{1,2},{10,2}}},
	},
	zhuhaqingming5={ --朱蛤青冥_10
		state_confuse_attack={{{1,35},{10,85}},{{1,22},{10,22}}},
		appenddamage_p= {{{1,30},{10,60},{11,63}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_maxmissile={{{1,2},{10,2}}},
	},
	zhuhaqingming6={ --朱蛤青冥_10
		state_slowall_attack={{{1,35},{10,100},{11,100}},{{1,72},{10,72}}},
		appenddamage_p= {{{1,30},{10,60},{11,63}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_maxmissile={{{1,2},{10,2}}},
	},
	daoduadvancedbook={ --刀毒高级秘籍技能_10
		damage_poison_resist	={{{1,10},{10,105},{11,110}}},
		damage_cold_resist		={{{1,10},{10,105},{11,110}}},
		damage_fire_resist		={{{1,10},{10,105},{11,110}}},
		damage_light_resist		={{{1,10},{10,105},{11,110}}},
		skill_skillexp_v=FightSkill.tbParam.tbHighBookSkillExp,
	},	
	daodu120={ --刀毒120_10
	damage_all_resist={{{1,-20},{10,-120},{10,-126}}},
		skilldamageptrim={{{1,-2},{10,-25},{14,-28}}},
		skillselfdamagetrim={{{1,-2},{10,-25},{14,-28}}},
		skill_cost_v={{{1,600},{10,600}}},
		skill_mintimepercast_v={{{1,60*18},{10,60*18}}},
		skill_mintimepercastonhorse_v={{{1,60*18},{10,60*18}}},
		skill_statetime={{{1,15*18},{10,15*18}}},
		},
	
	dushazhang={ --毒砂掌_20
		appenddamage_p= {{{1,100},{20,100},{21,100*FightSkill.tbParam.nSadd}}},
		skill_cost_v={{{1,10},{20,50},{21,50}}},
		seriesdamage_r={{{1,50},{20,100},{21,100}}},
		state_weak_attack={{{1,15},{10,35},{20,40},{21,41}},{{1,36},{20,54},{21,54}}},
		poisondamage_v={{{1,20},{10,155},{20,355},{21,355*FightSkill.tbParam.nSadd}},{{1,8*9},{20,8*9}}},
		addskilldamagep={90, {{1,2},{20,30},{21,35}},1},
		addskilldamagep2={93, {{1,2},{20,10},{21,12}},1},
		addskilldamagep3={94, {{1,2},{20,10},{21,12}}},
	},
	wuduzhangfa={ --五毒掌法_10
		addpoisonmagic_v={{{1,2},{10,40},{11,44}},{{1,10*9},{20,10*9}}},
		deadlystrikeenhance_r={{{1,30},{10,50},{11,55}}},
		castspeed_v={{{1,5},{10,10},{11,11},{12,12},{13,12}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	beimoxueguang={ --悲魔血光_20
		autoskill={{{1,75},{2,75}},{{1,1},{20,20}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	beimoxueguang_child={ --悲魔血光&子_20
		deadlystrikeenhance_r={{{1,-20},{10,-140},{20,-200},{21,-205}}},
		damage_poison_resist={{{1,-15},{10,-70},{20,-100},{21,-105}}},
		allseriesstateresisttime={{{1,-15},{20,-125},{21,-130}}},
		missile_hitcount={{{1,7},{10,7}}},
		skill_statetime={{{1,18*120},{20,18*180},{21,18*183}}},
	},
	tiangangdisha={ --天罡地煞_20
		appenddamage_p= {{{1,90},{20,90},{21,90*FightSkill.tbParam.nSadd}}},
		skill_cost_v={{{1,50},{20,150}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		state_weak_attack={{{1,15},{10,45},{20,50}},{{1,36},{20,54},{21,54}}},
		poisondamage_v={{{1,220},{10,265},{20,315},{21,315*FightSkill.tbParam.nSadd}},{{1,8*9},{20,8*9}}},
		missile_hitcount={{{1,3},{10,4},{20,5},{21,5}}},
		addskilldamagep={93, {{1,2},{20,30},{21,35}},1},
		addskilldamagep2={94, {{1,2},{20,30},{21,35}}},
	},
	yinsifeizhu={ --银丝飞蛛_20
		fastwalkrun_p={{{1,10},{20,40}}},
		state_stun_resisttime={{{1,30},{20,135}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	chuanxinduci={ --穿心毒刺_10
		poisontimeenhance_p={{{1,10},{10,35},{13,40}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	qudushu={ --驱毒术_10
		autoskill={{{1,13},{2,13}},{{1,1},{10,10}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	qudushu_child={ --驱毒术子
		appenddamage_p= {{{1,200},{10,400},{11,400}}},
		poisondamage_v={{{1,500},{10,1000},{11,1200}},{{1,9*3},{10,9*3}}},
		missile_hitcount={{{1,3},{10,5},{11,5}}},
		seriesdamage_r={{{1,100},{10,250},{11,250}}},
		missile_range={13,0,13},
	},
	yinfengshigu={ --阴风蚀骨
		appenddamage_p= {{{1,40*FightSkill.tbParam.nS1},{10,40},{20,40*FightSkill.tbParam.nS20},{21,40*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		poisondamage_v={{{1,250*FightSkill.tbParam.nS1},{10,250},{20,250*FightSkill.tbParam.nS20},{21,250*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},{{1,4*9},{20,4*9}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		skill_vanishedevent={{{1,94},{20,94}}},
		skill_showevent={{{1,8},{20,8}}},
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
		missile_range={9,0,9},
	},
	yinfengshigu_child={ --天罡毒手，阴风蚀骨第二式
		appenddamage_p= {{{1,25*FightSkill.tbParam.nS1},{10,25},{20,25*FightSkill.tbParam.nS20},{21,25*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		poisondamage_v={{{1,200*FightSkill.tbParam.nS1},{10,200},{20,200*FightSkill.tbParam.nS20},{21,200*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},{{1,4*9},{20,4*9}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		state_weak_attack={{{1,15},{10,45},{20,50}},{{1,36},{20,54},{21,54}}},
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
		missile_range={11,0,11},
	},
	baigudujing={ --百蛊毒经_20
		state_weak_attackrate={{{1,10},{20,100}}},
		state_stun_resistrate={{{1,10},{10,100},{20,150}}},
		castspeed_v={{{1,10},{10,16},{20,26},{23,29},{24,29}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},
	duanjinfugu={ --断筋腐骨
		skilldamageptrim={{{1,1*FightSkill.tbParam.nS100Min},{10,1*FightSkill.tbParam.nS100Max}}},
		skillselfdamagetrim={{{1,1*FightSkill.tbParam.nS100Min},{10,1*FightSkill.tbParam.nS100Max}}},
		state_weak_attacktime={{{1,10},{10,80}}},
		state_stun_resisttime={{{1,10},{10,120}}},
		skill_statetime={{{1,-1},{2,-1}}},
	},

	zhuifengduji={ --中级秘籍：追风毒棘
		addenchant={15, {{1,1}, {2, 2}}},
		decautoskillcdtime={272, 13, {{1,18},{10, 18*5},{11, 18*5}}},
		autoskill={{{1,26},{2,26}},{{1,1},{10,10}}},
		deadlystrikeenhance_r={{{1,50},{10,175},{11,185}}},
		skill_skillexp_v=FightSkill.tbParam.tbMidBookSkillExp,
		skill_statetime={{{1,-1},{2,-1}}},
	},
	zhuifengduji_enemy={ --中级秘籍：追风毒棘
		state_fixed_attack	={{{1,55},{10,100},{11,105}},{{1,18*2},{10,18*3.5},{11,18*3.5}}},
		state_weak_attack	={{{1,55},{10,100},{11,105}},{{1,18*3},{10,18*5.0},{11,18*5.5}}},
		missile_hitcount={{{1,3},{10,5},{11,5}}},
	},
	zhuifengduji_self={ --中级秘籍：追风毒棘
		state_hurt_ignore={1},
		state_slowall_ignore={1},
		state_stun_ignore={1},
		skill_statetime={{{1,18*3},{10,18*5},{12,18*5.5}}},
	},
	huagumianzhang={ --化骨绵掌_10
		rdclifewithdis={{{1,40},{10,100},{11,105}}, 234, 1198},
		missile_hitcount={{{1,7},{10,7},{11,7}}},
		skill_mintimepercast_v={{{1,25*18},{10,25*18}}},
		skill_mintimepercastonhorse_v={{{1,25*18},{10,25*18}}},
		skill_statetime={{{1,18*5},{10,18*10}}},
	},
	huagumianzhang_child={ --化骨绵掌子_10
		seriesdamage_r={{{1,250},{10,250},{11,250}}},
	},
	zhangduadvancedbook={ --掌毒高级秘籍_10
		poisontimeenhance_p={{{1,2},{10,20},{11,21}}},
		autoskill={{{1,46},{2,46}},{{1,1},{10,10}}},
		addenchant={23, {{1,1}, {2, 2}}},
		skill_statetime={{{1,-1},{2,-1}}},
		skill_skillexp_v=FightSkill.tbParam.tbHighBookSkillExp,
	},
	zhangduadvancedbook_child={ --掌毒高级秘籍子_10
		damage_poison_resist={{{1,-3},{10,-35},{11,-35}}},
		superposemagic={{{1,2},{10,20},{11,21}}},
		skill_statetime={{{1,1*18},{10,4*18},{11,4*18}}},
	},
	zhangdu120={ --掌毒120_10
		state_stun_attack		={{{1,20},{10,100},{11,105}},{{1,18*1},{20,18*1}}},
		state_hurt_attack		={{{1,20},{10,100},{11,105}},{{1,18*1},{20,18*1}}},
		state_weak_attack		={{{1,20},{10,100},{11,105}},{{1,18*3},{20,18*3}}},
		state_burn_attack		={{{1,20},{10,100},{11,105}},{{1,18*3},{20,18*3}}},
		state_slowall_attack	={{{1,20},{10,100},{11,105}},{{1,18*2.5},{20,18*2.5}}},
		skill_cost_v={{{1,600},{10,600}}},
		skill_mintimepercast_v={{{1,10*18},{10,10*18}}},
		skill_mintimepercastonhorse_v={{{1,60*18},{10,60*18}}},
		skill_statetime={{{1,3*18},{10,3*18}}},
	},
	jiutiankuanglei={ --九天狂雷
		damage_light_resist={{{1,-5},{20,-100}}},
		skill_cost_v={{{1,15},{20,20}}},
		skill_statetime={{{1,18*120},{20,18*180}}},
	},
	bingpohanguang={ --冰魄寒光
		damage_cold_resist={{{1,-5},{20,-100}}},
		skill_cost_v={{{1,40},{20,60}}},
		skill_statetime={{{1,18*120},{20,18*180}}},
	},
	chiyanshitian={ --赤焰蚀天
		damage_fire_resist={{{1,-5},{20,-100}}},
		skill_cost_v={{{1,50},{20,80}}},
		skill_statetime={{{1,18*120},{20,18*180}}},
	},
	chuanyipojia={ --穿衣破甲
		damage_physics_resist={{{1,-5},{20,-100}}},
		skill_cost_v={{{1,200},{20,250}}},
		skill_statetime={{{1,18*120},{20,18*180}}},
	},
}

FightSkill:AddMagicData(tb)


local tbSkill	= FightSkill:GetClass("wenguzhiqi");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local tbAutoInfo2	= KFightSkill.GetAutoInfo(tbChildInfo.tbWholeMagic["autoskill"][1], tbChildInfo.tbWholeMagic["autoskill"][2]);
	local tbChildInfo2	= KFightSkill.GetSkillInfo(tbAutoInfo2.nSkillId, tbAutoInfo2.nSkillLevel);
	local szMsg=""
	szMsg = szMsg.."Đánh trúng mục tiêu gây ra trạng thái:\n";
	szMsg = szMsg.."Sinh lực mục tiêu giảm còn 25% thi triển: <color=gold>"..tbAutoInfo2.nPercent.."%<color>\n";
	szMsg = szMsg.."    <color=green>Ôn Cổ Chi Khí<color>\n";
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo2, 0);
	for i=1, #tbMsg do
		szMsg = szMsg.."    "..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	szMsg = szMsg.."\n    Giãn cách thi triển: <color=Gold>"..FightSkill:Frame2Sec(tbAutoInfo2.nPerCastTime).." giây<color>";
	szMsg = szMsg.."\nDuy trì: <color=Gold>"..FightSkill:Frame2Sec(tbChildInfo.nStateTime).." giây<color>";
	return szMsg;
end;

local tbSkill	= FightSkill:GetClass("wenguzhiqi_child");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local szMsg=""
	szMsg = szMsg.."Sinh lực mục tiêu giảm còn 25% thi triển: <color=gold>"..tbAutoInfo.nPercent.."%<color>\n";
	szMsg = szMsg.."    <color=green>Ôn Cổ Chi Khí<color>\n";
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	for i=1, #tbMsg do
		szMsg = szMsg.."    "..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	szMsg = szMsg.."    \nGiãn cách thi triển: <color=Gold>"..FightSkill:Frame2Sec(tbAutoInfo.nPerCastTime).." giây<color>";
	return szMsg;
end;

local tbSkill	= FightSkill:GetClass("qudushu");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local nPerCastTime = (tbAutoInfo.nPerCastTime - KFightSkill.GetAutoSkillCDTimeAddition(tbSkillInfo.nId, tbAutoInfo.nId));

	if (nPerCastTime < 0) then
		nPerCastTime = 0;
	end

	local szMsg = ""
	szMsg = szMsg.."Sinh lực giảm còn 25% thi triển: <color=gold>"..tbAutoInfo.nPercent.."%<color>\n";
	szMsg = szMsg.."    <color=green>Khu Độc Thuật<color>\n";
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	for i=1, #tbMsg do
		szMsg = szMsg.."    "..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	szMsg = szMsg.."\nGiãn cách thi triển: <color=Gold>"..FightSkill:Frame2Sec(nPerCastTime).." giây<color>";
	return szMsg;
end;

local tbSkill	= FightSkill:GetClass("huaxuejiemai");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local szMsg = ""
	szMsg = szMsg.."Đánh chí mạng <color=gold>"..tbAutoInfo.nPercent.."<color>% tỷ lệ thi triển:\n";
	szMsg = szMsg.."    <color=green>Tiệt Mạch Thức<color>\n";
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	for i=1, #tbMsg do
		szMsg = szMsg.."    "..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	szMsg = szMsg.."\nGiãn cách thi triển: <color=Gold>"..FightSkill:Frame2Sec(tbAutoInfo.nPerCastTime).." giây<color>";
	return szMsg;
end;

local tbSkill	= FightSkill:GetClass("zhuifengduji");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local tbCCInfo	= KFightSkill.GetSkillInfo(tbChildInfo.tbEvent.nStartSkillId, tbChildInfo.tbEvent.nLevel);
	local szMsg	= string.format("\n<color=green>Chiêu thức con<color>\nKhi đánh chí mạng, xác suất thi triển: <color=gold>%d%%<color>\nẢnh hưởng tối đa: <color=gold>%d<color>\nLàm đối thủ bất động: <color=gold>%d%%<color>, duy trì <color=Gold>%s giây<color>\nLàm đối thủ suy yếu: <color=gold>%d%%<color>, duy trì <color=Gold>%s giây<color>\nHóa giải và miễn nhiễm <color=gold>thọ thương, chậm, choáng<color>, duy trì <color=gold>%s giây<color>\nThời gian giãn cách: <color=Gold>%s giây<color>",
		tbAutoInfo.nPercent,
		tbChildInfo.nMissileHitcount,
		tbChildInfo.tbWholeMagic["state_fixed_attack"][1],
		FightSkill:Frame2Sec(tbChildInfo.tbWholeMagic["state_fixed_attack"][2]),
		tbChildInfo.tbWholeMagic["state_weak_attack"][1],
		FightSkill:Frame2Sec(tbChildInfo.tbWholeMagic["state_weak_attack"][2]),
		FightSkill:Frame2Sec(tbCCInfo.nStateTime),
		FightSkill:Frame2Sec(tbAutoInfo.nPerCastTime));
	return szMsg;
end;

local tbSkill	= FightSkill:GetClass("zhangduadvancedbook");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local szMsg	= string.format("\nKhi đánh trúng kẻ địch sẽ khiến mục tiêu rơi vào trạng thái sau: \nKháng độc công: <color=gold>-%d điểm<color>\nCộng dồn tối đa: <color=gold>%d lần<color>\nThời gian duy trì: <color=Gold>%s giây<color>",
		-tbChildInfo.tbWholeMagic["damage_poison_resist"][1],
		tbChildInfo.tbWholeMagic["superposemagic"][1],
		FightSkill:Frame2Sec(tbChildInfo.nStateTime));
	return szMsg;
end;

local tbSkill	= FightSkill:GetClass("daodu120");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local tbChildInfo2	= KFightSkill.GetSkillInfo(1670, tbAutoInfo.nSkillLevel);
	local szMsg = ""
	szMsg = szMsg.."Mỗi <color=gold>"..FightSkill:Frame2Sec(tbAutoInfo.nPerCastTime).." giây<color> gây cho mục tiêu xung quanh trạng thái:\n";
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	for i=1, #tbMsg do
		szMsg = szMsg.."    "..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	szMsg = szMsg.."\nKhi đánh trúng khiến hiệu quả tăng tấn công của <color=green>[Thất Tâm Cổ]<color> giảm 1/2 trong 4 giây";
	return szMsg;
end;

local tbSkill	= FightSkill:GetClass("daodu120_child2");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local szMsg = ""
	szMsg = szMsg.."Khi đánh trùng khiến hiệu quả tăng tấn công của <color=green>[Thất Tâm Cổ]<color> giảm 1/2 trong 4 giây";
	return szMsg;
end

local tbSkill	= FightSkill:GetClass("wangushixin");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local tbMsg = {};	
	local szMsg = "";
	szMsg = szMsg.."Khi đánh trúng tự thi triển:\n";
	szMsg = szMsg.."    <color=green>Vạn Cổ Thực Tâm<color>\n";
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	for i=1, #tbMsg do
		szMsg = szMsg.."    "..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill	= FightSkill:GetClass("beimoxueguang");

function tbSkill:GetAutoDesc(tbAutoInfo, tbSkillInfo)
	local tbChildInfo	= KFightSkill.GetSkillInfo(tbAutoInfo.nSkillId, tbAutoInfo.nSkillLevel);
	local tbMsg = {};	
	local szMsg = "";
	szMsg = szMsg.."Khi đánh trúng tự thi triển:\n";
	szMsg = szMsg.."    <color=green>Bi Ma Huyết Quang<color>\n";
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	for i=1, #tbMsg do
		szMsg = szMsg.."    "..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end
