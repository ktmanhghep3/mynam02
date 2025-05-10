local tb = {
	thieulamdao150={
		appenddamage_p= {{{1,40},{2,42},{3,44},{4,46}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,732*FightSkill.tbParam.nS1},{10,750},{20,760},{30,805},{40,840},{50,855}}},
		physicsdamage_v={
			[1]={{1,775*0.9*FightSkill.tbParam.nS1},{10,1345},{20,1978},{30,2548},{40,3451},{50,4264}},
			[3]={{1,775*1.1*FightSkill.tbParam.nS1},{10,1614},{20,2364},{30,2946},{40,4015},{50,4751}}
			},

		skill_cost_v={{{1,50},{20,100},{21,100}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_hurt_attack={{{1,21},{2,22}},{{1,2*19},{20,3*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
	},

	thieulamdao150_Child={
		appenddamage_p = {{{1,32},{2,33},{3,34},{4,35}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,657*FightSkill.tbParam.nS1},{10,675},{20,685},{30,730},{40,765},{50,780}}},
		physicsdamage_v={
			[1]={{1,275*0.9*FightSkill.tbParam.nS1},{10,845},{20,1478},{30,2048},{40,2951},{50,3764}},
			[3]={{1,275*1.1*FightSkill.tbParam.nS1},{10,1114},{20,1864},{30,2446},{40,3515},{50,4251}}
			},

		skill_cost_v={{{1,50},{20,100},{21,100}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_slowrun_attack={{{1,21},{2,22}},{{1,2*19},{20,3*18}}},
		state_slowall_attacktime={{{1,55},{2,60}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
	},

	thieulambong_150={
		appenddamage_p= {{{1,30},{2,33},{3,36},{4,39}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,87*FightSkill.tbParam.nS1},{10,110},{20,180},{21,180}}},
		physicsdamage_v={
			[1]={{1,750*0.9*FightSkill.tbParam.nS1},{10,853},{20,1280},{30,1707},{40,2133}},
			[3]={{1,750*1.1*FightSkill.tbParam.nS1},{10,1043},{20,1565},{30,2087},{40,2607}}
			},
			
		state_hurt_attack={{{1,41},{10,51},{20,61}},{{1,2*18},{20,4*18}}},
		state_hurt_attacktime={{{1,110},{10,200},{20,300},{21,310}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
	},

	thieulambong_150_child ={
		--appenddamage_p= {{{1,40},{2,44},{3,48},{4,52}}},
		--physicsenhance_p={{{1,175*FightSkill.tbParam.nS1},{10,220},{20,360},{21,360}}},
		physicsdamage_v={
			[1]={{1,750*0.9*FightSkill.tbParam.nS1},{10,853},{20,1280},{30,1707},{40,2133}},
			[3]={{1,750*1.1*FightSkill.tbParam.nS1},{10,1043},{20,1565},{30,2087},{40,2607}}
			},
			
		state_drag_attack={{{1,1},{10,40},{11,40}},{{1,25},{10,25},{11,25}},{{1,32},{2,32}}},
		
		--state_hurt_attack={{{1,41},{10,51},{20,61}},{{1,2*18},{20,4*18}}},
		--state_hurt_attacktime={{{1,110},{10,200},{20,300},{21,310}}},
		--seriesdamage_r={{{1,100},{20,400},{21,410}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
	},

	thienvuongthuong150={
		appenddamage_p= {{{1,28},{2,30},{3,32},{4,34}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,60*FightSkill.tbParam.nS1},{10,86},{20,95},{30,179},{40,265},{45,308}}},
		physicsdamage_v={
			[1]={{1,660*0.9*FightSkill.tbParam.nS1},{10,853},{20,939},{30,1783},{40,2628},{45,3051}},
			[3]={{1,660*1.1*FightSkill.tbParam.nS1},{10,1042},{20,1147},{30,2180},{40,3213},{45,3730}}
			},
		seriesdamage_r={0},
		skill_cost_v={{{1,22},{20,45},{21,45}}},
		state_hurt_attack={{{1,21},{2,22}},{{1,3*18},{20,3*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,3},{20,3}}},
		--skill_vanishedevent={{{1,1544},{20,1544}}},
		skill_showevent={{{1,8},{20,8}}},
	},
	thienvuongthuong150_child={
		appenddamage_p = {{{1,15},{2,17},{3,19},{4,21}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p = {{{1,40},{2,42},{3,44},{4,46}}},
		physicsdamage_v={
			[1]={{1,275*0.9*FightSkill.tbParam.nS1},{10,845},{20,1478},{30,2048},{40,2951},{50,3764}},
			[3]={{1,275*1.1*FightSkill.tbParam.nS1},{10,1114},{20,1864},{30,2446},{40,3515},{50,4251}}
			},

		skill_cost_v={{{1,50},{20,100},{21,100}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_slowrun_attack={{{1,21},{2,22}},{{1,2*19},{20,3*18}}},
		state_slowall_attacktime={{{1,55},{2,60}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
	},

	chuythien150={ --乘龙诀_20
		appenddamage_p= {{{1,39},{2,42},{3,45},{4,48}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,120*FightSkill.tbParam.nS1},{10,172},{20,190},{30,358},{40,530},{45,616}}},
		physicsdamage_v={
			[1]={{1,660*0.9*FightSkill.tbParam.nS1},{10,853},{20,939},{30,1783},{40,2628},{45,3051}},
			[3]={{1,660*1.1*FightSkill.tbParam.nS1},{10,1042},{20,1147},{30,2180},{40,3213},{45,3730}}
			},
		skill_cost_v={{{1,22},{20,45},{21,45}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_hurt_attack={{{1,26},{2,27}},{{1,2*18},{20,4*18},{21,4*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,10},{20,10}}},
	},

	chuythien150_child={ --乘龙诀_20
		appenddamage_p= {{{1,71},{2,75},{3,79},{4,83}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,120*FightSkill.tbParam.nS1},{10,172},{20,190},{30,358},{40,530},{45,616}}},
		physicsdamage_v={
			[1]={{1,660*0.9*FightSkill.tbParam.nS1},{10,853},{20,939},{30,1783},{40,2628},{45,3051}},
			[3]={{1,660*1.1*FightSkill.tbParam.nS1},{10,1042},{20,1147},{30,2180},{40,3213},{45,3730}}
			},
		skill_cost_v={{{1,22},{20,45},{21,45}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_burn_attack={{{1,26},{2,27}},{{1,2*18},{20,4*18},{21,4*18}}},
		state_burn_attacktime={{{1,110},{2,120}}},		
		state_stun_attack={{{1,10},{2,12}},{{1,2*18},{20,2*18},{21,2*18}}},
		state_stun_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,10},{20,10}}},
	},

	skill150dmtt={ --????
		appenddamage_p= {{{1,25},{2,28},{3,31},{4,34}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v={{{1,64},{10,172},{20,371},{30,450},{40,500},{45,525}},{{1,5*9},{20,5*9}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_hurt_attack={{{1,21},{20,40}},{{1,2*18},{20,2*18}}},
		state_weak_attack={{{1,12},{10,30},{20,50}},{{1,36},{20,54},{21,54}}},
		state_weak_attacktime={{{1,110},{10,200}}},
		missile_hitcount={{{1,5},{2,5}}},
		--skill_flyevent={{{1,1960},{20,1960}},{{1,10},{2,10}}},
		--skill_showevent={{{1,2},{20,2}}},
	},
	skill150dmtt_child={ --????,???????
		appenddamage_p= {{{1,38*FightSkill.tbParam.nS1},{10,38},{20,38*FightSkill.tbParam.nS20},{21,38*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v={{{1,45*FightSkill.tbParam.nS1},{10,45},{20,45*FightSkill.tbParam.nS20},{21,45*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},{{1,6*18},{20,6*18}}},
		seriesdamage_r={{{1,100},{20,1500},{21,1550}}},
		state_hurt_attack={{{1,15},{20,30}},{{1,18},{20,18}}},
		state_weak_attack={{{1,10},{10,20},{20,30}},{{1,36},{20,54},{21,54}}},
	},

	ngamykiem150={ --剑影佛光_10
		appenddamage_p = {{{1,20},{2,25},{3,30},{4,35}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,1240},{2,1280}},
			[3]={{1,1540*0.7*1.1},{10,1540*1.1},{11,1540*FightSkill.tbParam.nSadd*1.1}}
		},
		state_slowall_attack={{{1,32},{2,34}},{{1,2*18},{10,3*18},{11,3*18}}},
		state_slowall_attacktime={{{1,100},{2,110}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		missile_hitcount={{{1,7},{10,7},{11,7}}},
		skill_vanishedevent={{{1,1991},{20,1991}}},
		skill_showevent={{{1,8},{20,8}}},
		skill_cost_v={{{1,100},{10,200},{11,200}}},
	},
	ngamykiem150_child={ --剑影佛光_10
		appenddamage_p = {{{1,25},{2,32},{3,39},{4,46}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,1740},{2,1780}},
			[3]={{1,2040*0.7*1.1},{10,2040*1.1},{11,2040*FightSkill.tbParam.nSadd*1.1}}
		},

		state_fixed_attack={{{1,0.5},{2,1}},{{1,18*2},{2,18*2}}},
		state_slowall_attacktime={{{1,60},{2,62}}},
		--lifemax_p={{{1,30},{20,100},{21,105}}},
		castspeed_v={{{1,10},{10,16},{20,26},{23,29},{24,29}}},
		skill_statetime={{{1,2*18},{20,5*18}}}
	},

	duongmonbay150={ --小李飞刀_20
		appenddamage_p= {{{1,19},{2,20},{3,21},{4,22}}}, --Phát huy lực tấn công cơ bản
		skill_cost_v={{{1,5},{20,20},{21,20}}},
		state_hurt_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},
		state_weak_attack={{{1,15},{10,45},{20,50},{23,54}},{{1,36},{20,54},{21,54}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		poisondamage_v={{{1,314},{10,422},{20,621},{30,700},{40,750},{45,775}},{{1,5*9},{20,5*9}}},
		--state_drag_attack={{{1,50},{20,95},{21,95}},{{1,25},{10,25},{11,25}},{{1,16},{2,16}}},
		--state_knock_attack={{{1,16},{2,17}},{{1,3},{10,10},{20,10}},{{1,32},{2,32}}},
		skill_attackradius={640},
		missile_range={1,0,1},
	},
	duongmonbay150_child={ --幻影追魂枪_10
		appenddamage_p= {{{1,25},{2,28},{3,31},{4,34}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v={{{1,645},{10,672},{20,871},{30,950},{40,1000},{45,1025}},{{1,5*9},{20,5*9}}},
		state_drag_attack={{{1,16},{2,17}},{{1,3},{10,10},{20,10}},{{1,32},{2,32}}},
		fastwalkrun_p={{{1,-10},{10,-30},{11,-31}}},
		skill_statetime={{{1,18*2},{10,18*4},{11,18*4}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
	},

	ngudocdao150 ={ --玄阴斩
		appenddamage_p= {{{1,62},{2,64},{3,66},{4,68}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,285*FightSkill.tbParam.nS1},{10,294},{20,296},{30,365},{40,379},{45,397}}},
		poisondamage_v={{{1,50*FightSkill.tbParam.nS1},{10,57},{20,104},{30,294},{40,410},{45,468}},{{1,9*9},{20,9*9}}},
		seriesdamage_r={0},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		state_hurt_attack={{{1,26},{2,27}},{{1,36},{20,36}}},
		state_weak_attack={{{1,12},{2,14}},{{1,3*18},{20,4*18},{21,4*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		state_weak_attacktime={{{1,110},{2,120}}},
		fastwalkrun_p={{{1,-10},{10,-30},{11,-31}}},
		skill_statetime={{{1,18*2},{10,18*4},{11,18*4}}},
		missile_hitcount={{{1,5},{10,5},{20,5},{21,5}}},
		skill_vanishedevent={{{1,1985},{20,1985}}},
		skill_showevent={{{1,8},{20,8}}},

	},

	ngudocdao150_Child ={ --狮子吼_10
		appenddamage_p= {{{1,20},{2,21},{3,22},{4,23}}},	 --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,285*FightSkill.tbParam.nS1},{10,294},{20,296},{30,365},{40,379},{45,397}}},
		poisondamage_v={{{1,60},{10,180},{11,189}},{{1,9*4},{20,9*4}}},	
		
		state_fixed_attack={{{1,35},{10,70},{11,73}},{{1,18*2.5},{20,18*2.5}}},
		state_hurt_attack={{{1,27},{10,54},{11,56}},{{1,18*1.5},{20,18*1.5}}},
		
		state_slowall_attack = {{{1,1},{2,2},{3,3}},{{1,72},{10,72}}},
		state_stun_attack = {{{1,1},{2,2},{3,3}},{{1,36},{10,36}}},
		state_fixed_attack={{{1,1},{2,2},{3,3}},{{1,22},{10,22}}},
		state_confuse_attack={{{1,1},{2,2},{3,3}},{{1,22},{10,22}}},
		state_palsy_attack={{{1,1},{2,2},{3,3}},{{1,22},{10,22}}},
		
		skilldamageptrim={{{1,-15},{2,-15},{3,-15}}},
		skillselfdamagetrim={{{1,-15},{2,-15},{3,-15}}},
	
		missile_hitcount={{{1,3},{10,5},{11,5}}},
		skill_cost_v={{{1,50},{10,100},{11,100}}},
	},




	ngudocchuong150={ --阴风蚀骨
		appenddamage_p= {{{1,33},{2,34},{3,35},{4,36}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v={{{1,1125*FightSkill.tbParam.nS1},{10,1144},{20,1158},{30,1236},{40,1316},{45,1355}},{{1,5*9},{20,5*9}}},
		seriesdamage_r={0},
		state_weak_attack={{{1,12},{2,13.5}},{{1,36},{10,2*36},{20,2*36},{21,2*36}}},
		state_weak_attacktime={{{1,110},{2,120}}},
		state_fixed_attack={{{1,10},{10,33},{11,34}},{{1,2*18},{10,2*18}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		skill_flyevent={{{1,1987},{20,1987}},{{1,3},{2,3}}},
		skill_showevent={{{1,2},{20,2}}},
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
		missile_range={9,0,9},
	},
	
	ngudocchuong150_2 ={ --????
		appenddamage_p= {{{1,18*FightSkill.tbParam.nS1},{10,20},{20,20*FightSkill.tbParam.nS20},{21,20*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v={{{1,100*FightSkill.tbParam.nS1},{10,100},{20,100*FightSkill.tbParam.nS20},{21,157*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},{{1,4*9},{20,4*9}}},
		seriesdamage_r={{{1,50},{20,1000},{21,1050}}},
		state_weak_attack={{{1,12},{2,13.5}},{{1,36},{10,2*36},{20,2*36},{21,2*36}}},
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
		missile_range={11,0,11},
	},

	thuyyenkiem150 = { --????
		appenddamage_p= {{{1,35},{2,38},{3,41},{4,44}}}, --Phát huy lực tấn công cơ bản
			colddamage_v={
			[1]={{1,850*0.9*FightSkill.tbParam.nS1},{10,2077},{20,2510},{30,3710},{40,4710},{50,5110}},
			[3]={{1,850*1.1*FightSkill.tbParam.nS1},{10,2290},{20,2590},{30,4290},{40,5290},{50,5890}}
			},

		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1*0.8}}},		
		skill_vanishedevent={{{1,1552},{20,1552}}},
		skill_showevent={{{1,8},{20,8}}},
		missile_hitcount={{{1,5},{5,5},{10,6},{15,6},{20,8},{21,8}}},		
		state_slowall_attack={{{1,16},{2,17}},{{1,18},{20,18}}},
		state_slowall_attacktime={{{1,100},{2,110}}},
		state_weak_attack={{{1,16},{2,17}},{{1,18},{20,18}}},
		state_weak_attacktime={{{1,100},{2,110}}},	
		castspeed_v={{{1,10},{10,20},{11,21},{12,22},{13,22}}},--Tốc độ xuất chiêu hệ nội công
	},
	
	thuyyenkiem150_child1 ={ --????
		appenddamage_p= {{{1,43},{2,45},{3,47},{4,49}}}, --Phát huy lực tấn công cơ bản
			colddamage_v={
			[1]={{1,850*0.9*FightSkill.tbParam.nS1},{10,2077},{20,2510},{30,3710},{40,4710},{50,5110}},
			[3]={{1,850*1.1*FightSkill.tbParam.nS1},{10,2290},{20,2590},{30,4290},{40,5290},{50,5890}}
			},

		seriesdamage_r={{{1,100},{20,250},{21,250}}},		
		state_hurt_attack={{{1,22},{10,40},{20,61}},{{1,27},{20,54},{20,54}}},--Xác suất làm thọ thương
		state_burn_attack={{{1,10},{2,12}},{{1,27},{20,54},{20,54}}},--Xác suất gây bỏng
		state_stun_attack={{{1,1*0.5},{2,1}},{{1,27},{20,54},{20,54}}},--Xác suất gây choáng
		missile_hitcount={{{1,2},{10,3},{20,8},{21,8}}},
	},

	thuyyenkiem150_child2 ={ --????
		appenddamage_p= {{{1,20},{2,22},{3,24},{4,26}}}, --Phát huy lực tấn công cơ bản
			colddamage_v={
			[1]={{1,400*0.9*FightSkill.tbParam.nS1},{10,1627},{20,2060},{30,3260},{40,4260},{50,4660}},
			[3]={{1,400*1.1*FightSkill.tbParam.nS1},{10,1840},{20,2140},{30,3840},{40,4840},{50,5440}}
			},

		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		state_slowall_attack={{{1,22},{10,40},{20,61}},{{1,27},{20,54},{20,54}}},
		state_slowall_attacktime={{{1,100},{2,110}}},
		missile_hitcount={{{1,2},{10,3},{20,4},{21,4}}},
	},

	VanThien_Buff={	--纵横四海BUFF
        ignoredefenseenhance_v={{{1,30},{2,35},{3,40}}},--Bỏ qua né tránh đối thủ
		defencedeadlystrikedamagetrim={{{1,1},{2,2},{3,3}}},--Chịu sát thương chí mạng		
		deadlystrikedamageenhance_p={{{1,1},{2,2},{3,3}}},--Tấn công khi đánh chí mạng		
		damage_all_resist={{{1,80},{2,85},{3,90}}},--Kháng tất cả		
		meleedamagereturn_p={{{1,1*0.5},{2,1}}},--Phản đòn cận chiến
		rangedamagereturn_p={{{1,1*0.5},{2,1}}},--Phản đòn tầm xa

		skill_statetime={18*5},
	},

	thuyyendao150 ={ --冰踪无影
		appenddamage_p= {{{1,17},{2,21},{3,25},{4,29}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,80*FightSkill.tbParam.nS1},{10,120},{20,160},{30,200},{40,260},{45,290}}},
		colddamage_v={
			[1]={{1,400*0.9*FightSkill.tbParam.nS1},{10,1627},{20,2060},{30,3260},{40,4260},{50,4660}},
			[3]={{1,400*1.1*FightSkill.tbParam.nS1},{10,1840},{20,2140},{30,3840},{40,4840},{50,5440}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		
		state_hurt_attack={{{1,16},{2,17}},{{1,18},{20,18}}},
		state_hurt_attacktime={{{1,100},{2,110}}},

		allspecialstateresistrate={{{1,16},{2,17}},{{1,18},{20,18}}},
		state_silence_attacktime={{{1,100},{2,110}}},
		
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1}}},
		missile_range={1,0,1},
	},
	
	thuyyendao150_child1 ={ --冰心雪莲，冰踪无影第二式
		appenddamage_p= {{{1,15},{2,16},{3,17},{4,18}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,300*0.9*FightSkill.tbParam.nS1},{10,1527},{20,1960},{30,3160},{40,4160},{50,4560}},
			[3]={{1,300*1.1*FightSkill.tbParam.nS1},{10,1740},{20,2040},{30,3740},{40,4740},{50,5340}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_burn_attack={{{1,15},{27,65},{28,65}},{{10,36},{20,36}}},
		state_burn_attacktime={{{1,100},{2,110}}},		
		skill_vanishedevent={{{1,1691},{20,1691}}},
		skill_showevent={{{1,8},{20,8}}},
		missile_hitcount={{{1,3},{5,4},{10,5},{11,5}}},
	},


	thuyyendao150_child2 ={ --冰心雪莲，冰踪无影第二式
		state_slowall_attack={{{1,10},{10,25},{20,35}},{{1,27},{20,45},{21,45}}},
		missile_hitcount={{{1,3},{5,4},{10,5},{11,5}}},
	},


	thuyyendao150_child3 ={ --冰心雪莲，冰踪无影第二式
		appenddamage_p= {{{1,10},{2,12},{3,14},{4,16}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,300*0.9*FightSkill.tbParam.nS1},{10,1527},{20,1960},{30,3160},{40,4160},{50,4560}},
			[3]={{1,300*1.1*FightSkill.tbParam.nS1},{10,1740},{20,2040},{30,3740},{40,4740},{50,5340}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_palsy_attack={{{1,15},{27,65},{28,65}},{{10,36},{20,36}}},
		state_palsy_attacktime={{{1,100},{2,110}}},		
		missile_hitcount={{{1,3},{5,4},{10,5},{11,5}}},
	},


	minhgiaokiem150 ={ --圣火燎原
		appenddamage_p= {{{1,20},{2,21},{3,22}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v={{{1,800*FightSkill.tbParam.nS1},{10,875},{20,975},{21,985}},{{1,4*9},{20,4*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},
		
		state_fixed_attack={{{1,0.5},{2,1}},{{1,18*2},{2,18*2}}},
		state_weak_attack={{{1,25},{10,50},{20,64}},{{1,72},{20,72}}},
		
		state_weak_attacktime={{{1,100},{2,110}}},
		state_fixed_attacktime={{{1,50},{2,55}}},
		
		missile_range={4,0,4},
	},

	minhgiaokiem150_Child1 ={ --圣火燎原
		appenddamage_p= {{{1,16},{2,17},{3,18}}}, --Phát huy lực tấn công cơ bản
		addpoisonmagic_v={{{1,425*FightSkill.tbParam.nS1},{10,500},{20,600},{21,610}},{{1,5*9},{20,5*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},	
		
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1*0.8}}},		
		state_hurt_attack={{{1,15},{10,15}},{{1,18*1.5},{20,18*1.5}}},
		state_hurt_attacktime={{{1,100},{2,110}}},		
		missile_range={4,0,4},
	},


	minhgiaokiem150_Child2 ={ --圣火燎原
		appenddamage_p= {{{1,15},{2,16},{3,17}}}, --Phát huy lực tấn công cơ bản
		addpoisonmagic_v={{{1,525*FightSkill.tbParam.nS1},{10,600},{20,700},{21,760}},{{1,5*9},{20,5*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},	
		
		state_burn_attack={{{1,25},{10,50},{20,64}},{{1,18*1.5},{20,18*1.5}}},
		state_burn_attacktime={{{1,100},{2,110}}},		
		missile_range={4,0,4},
	},


	minhgiaokiem150_Child3 ={ --圣火燎原
		appenddamage_p= {{{1,10},{2,11},{3,12}}}, --Phát huy lực tấn công cơ bản
		addpoisonmagic_v={{{1,175*FightSkill.tbParam.nS1},{10,50},{20,350},{21,360}},{{1,5*9},{20,5*9}}},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150},{20,300},{21,315}}},	
		
		state_palsy_attack={{{1,15},{10,15}},{{1,18*1.5},{20,18*1.5}}},
		state_palsy_attacktime = {{{1,40},{2,42}}},		
		missile_range={4,0,4},
	},

	minhchuy150 ={ --龙吞式
		appenddamage_p= {{{1,28},{2,29},{3,30}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,30},{2,32},{3,34}}},
		poisondamage_v={{{1,1120*FightSkill.tbParam.nS1},{10,1120},{20,1120*FightSkill.tbParam.nS20},{21,1120*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}},{{1,45},{20,45}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,27},{20,54},{21,54}}},
		state_hurt_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_weak_attack={{{1,21},{2,22}},{{1,36},{20,54},{21,54}}},
		state_burn_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_weak_attacktime={{{1,110},{2,120}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		state_burn_attacktime={{{1,110},{2,120}}},

	},

	minhchuy150_child1 ={ --龙吞式
		appenddamage_p= {{{1,25},{2,26},{3,27}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,25},{2,27},{3,29}}},
		poisondamage_v={{{1,1120*FightSkill.tbParam.nS1},{10,1120},{20,1120*FightSkill.tbParam.nS20},{21,1120*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}},{{1,45},{20,45}}},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		missile_hitcount={{{1,5},{20,5}}},
		missile_random={{{1,100},{10,100},{11,100}},{{1,0},{10,0}}},
	},

	minhchuy150_child2 ={ --龙吞式
		appenddamage_p= {{{1,25},{2,27},{3,29}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,32},{2,35},{3,37}}},
		poisondamage_v={{{1,1120*FightSkill.tbParam.nS1},{10,1120},{20,1120*FightSkill.tbParam.nS20},{21,1120*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}},{{1,45},{20,45}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,27},{20,54},{21,54}}},		
		state_slowrun_attack={{{1,21},{2,22}},{{1,36},{20,54},{21,54}}},
		state_slowrun_attacktime={{{1,110},{2,120}}},
	},


	conlonkiem150={ --????_20
		appenddamage_p= {{{1,25},{2,27},{3,29},{4,31}}}, --Phát huy lực tấn công cơ bản
		lightingdamage_v={
			[1]={{1,1400},{2,1550}},
			[3]={{1,1600},{2,1800}}
		},
		state_stun_attack={{{1,15},{10,30},{20,40},{21,41}},{{1,18},{20,18}}},
		state_stun_attacktime={{{1,55},{2,60}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}}, -- Ngu Hành Tuong Kh?c
		steallifeenhance_p={{{1,1},{2,2}},{{1,100},{10,100}}},
		castspeed_v={{{1,10},{10,15},{11,16},{12,25},{13,25}}},
		skill_cost_v={{{1,50},{20,150},{21,150}}},
		missile_hitcount={{{1,5},{10,5}}},
	},
	conlonkiem150_child={ --?????
		appenddamage_p= {{{1,40},{2,44},{3,48},{4,52}}}, --Phát huy lực tấn công cơ bản
		lightingdamage_v={
			[1]={{1,800*0.8},{10,1115*0.9},{20,1465*0.9},{21,1465*FightSkill.tbParam.nSadd*0.9}},
			[3]={{1,800*1.2},{10,1115*1.1},{20,1465*1.1},{21,1465*FightSkill.tbParam.nSadd*1.1}}
		},
		state_hurt_attack={{{1,15},{10,30},{20,40}},{{1,18},{20,18}}},
		state_weak_attack={{{1,15},{10,30},{20,40}},{{1,18},{20,18}}},
		state_weak_attacktime={{{1,110},{2,120}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,10},{10,10}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		missile_range={4,0,4},
		skill_vanishedevent={{{1,1438},{20,1438}}},
		skill_showevent={{{1,8},{20,8}}},

	},
	conlonkiem150_child3={ --?????
		appenddamage_p= {{{1,22},{2,24},{3,26},{4,28}}}, --Phát huy lực tấn công cơ bản
		lightingdamage_v={
			[1]={{1,1800*0.8},{10,2115*0.9},{20,3465*0.9},{21,3465*FightSkill.tbParam.nSadd*0.9}},
			[3]={{1,1800*1.2},{10,2115*1.1},{20,3465*1.1},{21,3465*FightSkill.tbParam.nSadd*1.1}}
		},
		state_burn_attack={{{1,15},{10,30},{20,40}},{{1,18},{20,18}}},
		state_slowrun_attack={{{1,15},{10,30},{20,40}},{{1,18},{20,18}}},
		state_stun_attack={{{1,15},{10,30},{20,40}},{{1,18},{20,18}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		state_slowrun_attacktime={{{1,110},{2,120}}},
		state_stun_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,10},{10,10}}},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		missile_range={4,0,4},
	},


	conlondao150={ --????_20
		appenddamage_p= {{{1,41},{2,42},{3,43}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,47},{2,49}}},
		lightingdamage_v={
			[1]={{1,2500*0.9*FightSkill.tbParam.nS1},{10,2500*0.9},{20,2500*0.9*FightSkill.tbParam.nS20},{21,2500*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,3000*1.1*FightSkill.tbParam.nS1},{10,3000*1.1},{20,3000*1.1*FightSkill.tbParam.nS20},{21,3000*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		skill_cost_v={{{1,100},{20,200},{21,205}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1*0.8}}},
		state_stun_attack={{{1,31},{2,32}},{{1,36},{2,36*1.01}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		state_palsy_attack={{{1,1},{2,2},{3,3}},{{1,22},{10,22}}},
		state_palsy_attacktime={{{1,100},{2,110}}},
		state_burn_attack={{{1,25},{10,50},{20,64}},{{1,18*1.5},{20,18*1.5}}},
		state_burn_attacktime={{{1,100},{2,110}}},				
		skill_vanishedevent={{{1,1975},{20,1975}}},
		skill_showevent={{{1,8},{20,8}}},

	},
	conlondao150_child={ --?????
		appenddamage_p= {{{1,50},{2,51}}}, --Phát huy lực tấn công cơ bản
		lightingdamage_v={
			[1]={{1,1700*0.9*FightSkill.tbParam.nS1},{10,1700*0.9},{20,1700*0.9*FightSkill.tbParam.nS20},{21,1700*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1850*1.1*FightSkill.tbParam.nS1},{10,1850*1.1},{20,1850*1.1*FightSkill.tbParam.nS20},{21,1850*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		state_hurt_attack={{{1,21},{2,22}},{{1,36},{2,36}}},
		state_stun_attacktime={{{1,110},{2,120}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		missile_speed_v={30},
		missile_range={1,0,1},
	},


	vokhi150_1={ --????
		appenddamage_p= {{{1,15},{2,16},{3,17},{4,18}}}, --Phát huy lực tấn công cơ bản
		missile_hitcount={{{1,3},{5,4},{10,5},{15,6},{16,6},{21,6},{22,6}}},
		lightingdamage_v={
			[1]={{1,1600*0.9*FightSkill.tbParam.nS1},{10,1600*0.9},{20,2000*0.9*FightSkill.tbParam.nS20},{21,2000*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1600*1.1*FightSkill.tbParam.nS1},{10,1600*1.1},{20,2000*1.1*FightSkill.tbParam.nS20},{21,2000*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		state_stun_attack={{{1,31},{2,32}},{{1,2*18},{20,2*18}}},
		state_stun_attacktime={{{1,110},{2,120}}},
		steallifeenhance_p={{{1,0.25},{2,0.5}},{{1,100},{10,100}}},
		stealmanaenhance_p={{{1,0.25},{2,0.5}},{{1,100},{10,100}}},
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
	},

	vokhi150_2a = { --????
		appenddamage_p= {{{1,8},{2,9},{3,10},{4,11}}}, --Phát huy lực tấn công cơ bản
		missile_hitcount={{{1,3},{5,4},{10,5},{15,6},{16,6},{21,6},{22,6}}},
		lightingdamage_v={
			[1]={{1,300*0.9*FightSkill.tbParam.nS1},{10,300*0.9},{20,500*0.9*FightSkill.tbParam.nS20},{21,500*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,300*1.1*FightSkill.tbParam.nS1},{10,300*1.1},{20,500*1.1*FightSkill.tbParam.nS20},{21,500*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},		
		state_stun_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_stun_attacktime={{{1,55},{2,60}}},		
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
	},

	vokhi150_2b = { --????
		appenddamage_p= {{{1,7},{2,8},{3,9},{4,10}}}, --Phát huy lực tấn công cơ bản
		missile_hitcount={{{1,3},{5,4},{10,5},{15,6},{16,6},{21,6},{22,6}}},
		lightingdamage_v={
			[1]={{1,250*0.9*FightSkill.tbParam.nS1},{10,250*0.9},{20,400*0.9*FightSkill.tbParam.nS20},{21,400*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,250*1.1*FightSkill.tbParam.nS1},{10,250*1.1},{20,400*1.1*FightSkill.tbParam.nS20},{21,400*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},		
		state_weak_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_weak_attacktime={{{1,60},{2,62}}},		
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
	},

	vokhi150_2c = { --????
		appenddamage_p= {{{1,5},{2,6},{3,7},{4,8}}}, --Phát huy lực tấn công cơ bản
		missile_hitcount={{{1,3},{5,4},{10,5},{15,6},{16,6},{21,6},{22,6}}},
		lightingdamage_v={
			[1]={{1,150*0.9*FightSkill.tbParam.nS1},{10,150*0.9},{20,300*0.9*FightSkill.tbParam.nS20},{21,300*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,150*1.1*FightSkill.tbParam.nS1},{10,150*1.1},{20,300*1.1*FightSkill.tbParam.nS20},{21,300*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},		
		state_slowrun_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_slowrun_attacktime={{{1,60},{2,62}}},		
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
	},

	vokhi150_3 ={ --????
		appenddamage_p= {{{1,10},{2,12},{3,14},{4,16}}}, --Phát huy lực tấn công cơ bản
		missile_hitcount={{{1,3},{5,4},{10,5},{15,6},{16,6},{21,6},{22,6}}},
		lightingdamage_v={
			[1]={{1,1300*0.9*FightSkill.tbParam.nS1},{10,1300*0.9},{20,1700*0.9*FightSkill.tbParam.nS20},{21,1700*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1300*1.1*FightSkill.tbParam.nS1},{10,1300*1.1},{20,1700*1.1*FightSkill.tbParam.nS20},{21,1700*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		state_hurt_attack={{{1,31},{2,32}},{{1,2*18},{20,2*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,5},{5,6},{10,8},{15,9},{20,10},{21,10}}},
	},

	vokiem150={ --????
		appenddamage_p= {{{1,25},{2,28},{3,31},{4,34}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,45*FightSkill.tbParam.nS1},{10,45},{20,45*FightSkill.tbParam.nS20},{21,45*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		lightingdamage_v={
			[1]={{1,4000*0.9*FightSkill.tbParam.nS1},{10,4000*0.9},{20,4000*0.9*FightSkill.tbParam.nS20},{21,4000*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,4000*1.1*FightSkill.tbParam.nS1},{10,4000*1.1},{20,4000*1.1*FightSkill.tbParam.nS20},{21,4000*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		steallifeenhance_p={{{1,1},{2,2}},{{1,100},{10,100}}},
		stealmanaenhance_p={{{1,1},{2,2}},{{1,100},{10,100}}},		
		state_stun_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},
		state_stun_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{10,4},{20,5},{21,5}}},
	},

	vokiem150_1 ={ --????
		appenddamage_p= {{{1,25},{2,27},{3,29},{4,31}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,45*FightSkill.tbParam.nS1},{10,45},{20,45*FightSkill.tbParam.nS20},{21,45*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		lightingdamage_v={
			[1]={{1,3200*0.9*FightSkill.tbParam.nS1},{10,3200*0.9},{20,3200*0.9*FightSkill.tbParam.nS20},{21,3200*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,3200*1.1*FightSkill.tbParam.nS1},{10,3200*1.1},{20,3200*1.1*FightSkill.tbParam.nS20},{21,3200*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},		
		state_burn_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_stun_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},		
		state_stun_attacktime={{{1,110},{2,120}}},
		state_burn_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{10,4},{20,5},{21,5}}},
	},

	vokiem150_2 ={ --????
		appenddamage_p= {{{1,20},{2,21},{3,22},{4,23}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,45*FightSkill.tbParam.nS1},{10,45},{20,45*FightSkill.tbParam.nS20},{21,45*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}},
		lightingdamage_v={
			[1]={{1,2600*0.9*FightSkill.tbParam.nS1},{10,2600*0.9},{20,2600*0.9*FightSkill.tbParam.nS20},{21,2600*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,2600*1.1*FightSkill.tbParam.nS1},{10,2600*1.1},{20,2600*1.1*FightSkill.tbParam.nS20},{21,2600*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},		
		state_stun_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},
		state_stun_attacktime={{{1,110},{2,120}}},		
		state_confuse_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},
		state_confuse_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{10,4},{20,5},{21,5}}},
	},



	caibangbong150 ={ --天下无狗
		appenddamage_p= {{{1,20},{2,22},{3,24},{4,26}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,62},{2,64}}},
		firedamage_v={
			[1]={{1,1349*0.9*FightSkill.tbParam.nS1},{10,1355*0.9},{20,1360*0.9*FightSkill.tbParam.nS20},{21,1360*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1349*1.1*FightSkill.tbParam.nS1},{10,1355*1.1},{20,1360*1.1*FightSkill.tbParam.nS20},{21,1360*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		state_hurt_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},
		state_burn_attack={{{1,21},{2,22}},{{1,36},{20,64},{21,64}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		state_drag_attack={{{1,16},{2,17}},{{1,3},{10,10},{20,10}},{{1,32},{2,32}}},
		skill_vanishedevent={{{1,1696},{20,1696}}},
		skill_showevent={{{1,8},{20,8}}},		
		missile_hitcount={{{1,3},{10,4},{20,4},{21,4}}},
	},

	caibangbong150_1 ={ --天下无狗
		appenddamage_p= {{{1,25},{2,27},{3,29},{4,31}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,62},{2,64}}},
		firedamage_v={
			[1]={{1,849*0.9*FightSkill.tbParam.nS1},{10,855*0.9},{20,860*0.9*FightSkill.tbParam.nS20},{21,860*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,849*1.1*FightSkill.tbParam.nS1},{10,855*1.1},{20,860*1.1*FightSkill.tbParam.nS20},{21,860*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1*0.8}}},		
		state_burn_attack={{{1,15},{2,16}},{{1,36},{20,64},{21,64}}},		
		state_burn_attacktime={{{1,110},{2,120}}},		
		state_silence_attack={{{1,10},{2,12}},{{1,36},{20,64},{21,64}}},
		state_silence_attacktime={{{1,100},{2,110}}},
		missile_hitcount={{{1,3},{10,4},{20,10},{21,10}}},
	},

	caibangr150 ={ --飞龙在天
		appenddamage_p= {{{1,19},{2,21},{3,23},{4,25}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,3000*0.9*FightSkill.tbParam.nS1},{10,3000*0.9},{20,3000*0.9*FightSkill.tbParam.nS20},{21,3000*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,3000*1.1*FightSkill.tbParam.nS1},{10,3000*1.1},{20,3000*1.1*FightSkill.tbParam.nS20},{21,3000*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		state_burn_attack={{{1,6},{2,7},{3,8}},{{1,2*18},{20,4*18},{21,4*18}}},
		state_fixed_attack={{{1,0.5},{2,1}},{{1,18*2},{2,18*2}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		skill_missilenum_v={{{1,4},{20,4}}},
		skill_vanishedevent={{{1,1971},{20,1971}}},
		skill_showevent={{{1,8},{20,8}}},
		missile_range={1,0,1},
		missile_speed_v={40},
	},
	caibangr150_child1 = { --龙战于野，飞龙在天第二式
		appenddamage_p= {{{1,19},{2,21},{3,23},{4,25}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,2800*0.8*FightSkill.tbParam.nS1},{10,2800*0.8},{20,2800*0.8*FightSkill.tbParam.nS20},{21,2600*0.8*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,2800*1.2*FightSkill.tbParam.nS1},{10,2800*1.2},{20,2800*1.2*FightSkill.tbParam.nS20},{21,2600*1.2*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		missile_hitcount={{{1,2},{10,3},{20,4},{21,4}}},
		missile_missrate={{{1,90},{2,90}}},
		missile_range={5,0,18},
	},

	manhan150 = { --????
		appenddamage_p= {{{1,30},{2,32},{3,34},{4,36}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,1500},{2,1520}},
			[3]={{1,1540},{2,1580}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		state_burn_attack={{{1,22},{2,24}},{{1,18},{10,45},{11,45}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		state_drag_attack={{{1,0.5},{2,1}},{{1,32},{10,32},{11,32}},{{1,10},{2,10}}},
		skill_vanishedevent={{{1,1973},{20,1973}}},
		skill_showevent={{{1,8},{20,8}}},
		missile_hitcount={{{1,2},{5,2},{10,4},{11,4}}},
	},
	manhan150_child1 = { --????,???????
		appenddamage_p= {{{1,25},{2,27},{3,29},{4,31}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,540*0.9*FightSkill.tbParam.nS1},{10,540*0.9},{20,540*0.9*FightSkill.tbParam.nS20},{21,540*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,540*1.1*FightSkill.tbParam.nS1},{10,540*1.1},{20,540*1.1*FightSkill.tbParam.nS20},{21,540*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		state_burn_attack={{{1,5},{20,25}},{{10,9},{20,9}}},
		state_burn_attacktime={{{1,55},{2,60}}},
		missile_hitcount={{{1,3},{5,4},{10,5},{15,6},{20,7},{21,7}}},
	},

	manhan150_child2 = { --????,???????
		appenddamage_p= {{{1,28},{2,29},{3,30},{4,31}}}, --Phát huy lực tấn công cơ bản
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

	manhan150_child3 = { --????,???????
		appenddamage_p= {{{1,5},{2,6},{3,7},{4,8}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,600*0.9*FightSkill.tbParam.nS1},{10,600*0.9},{20,600*0.9*FightSkill.tbParam.nS20},{21,600*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,600*1.1*FightSkill.tbParam.nS1},{10,600*1.1},{20,600*1.1*FightSkill.tbParam.nS20},{21,600*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,250},{21,250}}},
		state_burn_attack={{{1,5},{20,25}},{{10,9},{20,9}}},
		state_burn_attacktime={{{1,55},{2,60}}},
		state_silence_attack={{{1,10},{2,12}},{{1,36},{20,64},{21,64}}},
		state_silence_attacktime={{{1,100},{2,110}}},
		missile_hitcount={{{1,3},{5,4},{10,10},{15,10},{20,15},{21,15}}},
	},

	chiennhan150_1={ --断筋刃_10
		appenddamage_p= {{{1,32},{2,33},{3,34},{4,35}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,47},{2,50}}},
		firedamage_v={
			[1]={{1,1175*0.9*FightSkill.tbParam.nS1},{10,1175*0.9},{20,1175*0.9*FightSkill.tbParam.nS20},{21,1175*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1175*1.1*FightSkill.tbParam.nS1},{10,1175*1.1},{20,1175*1.1*FightSkill.tbParam.nS20},{21,1175*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		--state_hurt_attack={{{1,31},{2,32}},{{1,2*18},{20,2*18}}},
		--state_hurt_attacktime={{{1,110},{2,120}}},
		state_burn_attack={{{1,36},{2,37}},{{1,18},{10,2*18},{20,4*18},{21,4*18}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		steallife_p={{{1,1},{20,10}},{{1,100},{20,100}}},
		stealmana_p={{{1,1},{20,10}},{{1,100},{20,100}}},
		missile_hitcount={{{1,3},{10,3},{20,3},{21,3}}},
	},
	chiennhan150_2 ={ --断筋刃_10
		appenddamage_p= {{{1,35},{2,36},{3,37},{4,38}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,40},{2,42}}},
		firedamage_v={
			[1]={{1,1000*0.9*FightSkill.tbParam.nS1},{10,1000*0.9},{20,1000*0.9*FightSkill.tbParam.nS20},{21,1000*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1000*1.1*FightSkill.tbParam.nS1},{10,1000*1.1},{20,1000*1.1*FightSkill.tbParam.nS20},{21,1000*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		state_hurt_attack={{{1,31},{2,32}},{{1,2*18},{20,2*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,3},{10,3},{20,3},{21,3}}},
	},
	chiennhan150_3 ={ --断筋刃_10
		appenddamage_p= {{{1,25},{2,26},{3,27},{4,28}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,40},{2,42}}},
		firedamage_v={
			[1]={{1,450*0.9*FightSkill.tbParam.nS1},{10,450*0.9},{20,450*0.9*FightSkill.tbParam.nS20},{21,450*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,450*1.1*FightSkill.tbParam.nS1},{10,450*1.1},{20,450*1.1*FightSkill.tbParam.nS20},{21,450*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		state_confuse_attack={{{1,10},{2,11}},{{1,1*18},{20,1*18}}},
		state_confuse_attacktime={{{1,50},{2,52}}},
		missile_hitcount={{{1,3},{10,3},{20,3},{21,3}}},
	},

	chiennhan150_add ={ --断筋刃_10
		appenddamage_p= {{{1,20},{2,22},{3,24},{4,26}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,40},{2,42}}},
		firedamage_v={
			[1]={{1,620*0.9*FightSkill.tbParam.nS1},{10,620*0.9},{20,620*0.9*FightSkill.tbParam.nS20},{21,620*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,620*1.1*FightSkill.tbParam.nS1},{10,620*1.1},{20,620*1.1*FightSkill.tbParam.nS20},{21,620*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		state_drag_attack={{{1,0.5},{2,1}},{{1,32},{10,32},{11,32}},{{1,10},{2,10}}},
		state_drag_attacktime={{{1,50},{2,52}}},
		skill_flyevent={{{1,1702},{20,1702}},{{1,3},{2,3}}},
		skill_showevent={{{1,2},{20,2}}},
		missile_hitcount={{{1,3},{10,3},{20,3},{21,3}}},
	},

	chiennhan150_child = { --断筋刃_10
		appenddamage_p= {{{1,20},{2,21},{3,22},{4,23}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,40},{2,42}}},
		firedamage_v={
			[1]={{1,380*0.9*FightSkill.tbParam.nS1},{10,380*0.9},{20,380*0.9*FightSkill.tbParam.nS20},{21,380*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,380*1.1*FightSkill.tbParam.nS1},{10,380*1.1},{20,380*1.1*FightSkill.tbParam.nS20},{21,380*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		missile_hitcount={{{1,3},{10,3},{20,3},{21,3}}},
	},

	yuehuaqingxie={ --月华倾泻
		appenddamage_p= {{{1,70},{2,72},{3,74}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,3736*0.9*FightSkill.tbParam.nS1},{10,3736*0.9},{20,3736*0.9*FightSkill.tbParam.nS20},{21,3536*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,3736*1.1*FightSkill.tbParam.nS1},{10,3736*1.1},{20,3736*1.1*FightSkill.tbParam.nS20},{21,3536*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		state_slowall_attack={{{1,15},{10,30},{27,75},{28,75}},{{1,18*3},{20,18*3}}},
		state_slowall_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,5},{10,6},{20,7},{21,7}}},
		missile_range={9,0,9},
	},
	yuehuaqingxiezi={ --
		appenddamage_p= {{{1,51},{2,53},{3,55}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,2736*0.9*FightSkill.tbParam.nS1},{10,2736*0.9},{20,2736*0.9*FightSkill.tbParam.nS20},{21,2536*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,2736*1.1*FightSkill.tbParam.nS1},{10,2736*1.1},{20,2736*1.1*FightSkill.tbParam.nS20},{21,2536*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		state_hurt_attack={{{1,4},{10,8},{20,10}},{{1,18},{20,18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,6},{20,6}}},
		missile_range={1,0,1},
	},
	sixiangtongguii={ --
		appenddamage_p= {{{1,25},{2,26},{3,27}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,1500*0.9*FightSkill.tbParam.nS1},{10,1500*0.9},{20,1500*0.9*FightSkill.tbParam.nS20},{21,500*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1500*1.1*FightSkill.tbParam.nS1},{10,1500*1.1},{20,1500*1.1*FightSkill.tbParam.nS20},{21,500*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}

		},
		state_slowall_attack={{{1,15},{10,30},{27,75},{28,75}},{{1,18*2},{20,18*2}}},
		state_slowall_attacktime={{{1,110},{2,120}}},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		skill_cost_v={{{1,50},{20,150},{21,150}}},
		missile_hitcount={{{1,3},{2,3}}},
		
	},
	sixiangtonggui_childi={ --四象同归子
		appenddamage_p= {{{1,25},{2,26},{3,27}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,1300*0.9*FightSkill.tbParam.nS1},{10,1300*0.9},{20,1300*0.9*FightSkill.tbParam.nS20},{21,300*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1300*1.1*FightSkill.tbParam.nS1},{10,1300*1.1},{20,1300*1.1*FightSkill.tbParam.nS20},{21,300*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}

		},
		state_slowall_attack={{{1,15},{10,30},{27,86},{28,86}},{{1,18*2},{20,18*2}}},
		state_slowall_attacktime={{{1,110},{2,120}}},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		missile_hitcount={{{1,3},{2,3}}},
	},




	tianlongshenzhi={ --天龙神指
		appenddamage_p= {{{1,35},{2,36},{3,37},{4,38}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,50*FightSkill.tbParam.nS1},{10,50},{20,50*FightSkill.tbParam.nS20},{21,50*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}}},
		colddamage_v={
			[1]={{1,950*0.9*FightSkill.tbParam.nS1},{10,950*0.9},{20,950*0.9*FightSkill.tbParam.nS20},{21,950*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}},
			[3]={{1,950*1.1*FightSkill.tbParam.nS1},{10,950*1.1},{20,950*1.1*FightSkill.tbParam.nS20},{21,950*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}}
			},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		skill_cost_v={{{1,45},{20,90},{21,90}}},
		state_hurt_attack={{{1,7},{27,110},{28,110}},{{1,36},{20,36}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		state_slowall_attack={{{1,7},{10,20},{27,76},{28,76}},{{1,18},{20,18*3},{21,18*3}}},
		state_slowall_attacktime={{{1,55},{2,60}}},
		missile_hitcount={{{1,5},{20,5}}},
	},
	tianlongshenzhizi={ --天龙神指触发伤害
		appenddamage_p= {{{1,30},{2,31},{3,32},{4,33}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,50*FightSkill.tbParam.nS1},{10,50},{20,50*FightSkill.tbParam.nS20},{21,50*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}}},
		colddamage_v={
			[1]={{1,820*0.9*FightSkill.tbParam.nS1},{10,820*0.9},{20,820*0.9*FightSkill.tbParam.nS20},{21,820*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}},
			[3]={{1,820*1.1*FightSkill.tbParam.nS1},{10,820*1.1},{20,820*1.1*FightSkill.tbParam.nS20},{21,820*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd1}}
			},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		skill_cost_v={{{1,45},{20,90},{21,90}}},
		
		state_slowrun_attack={{{1,21},{2,22}},{{1,2*19},{20,3*18}}},
		state_slowall_attacktime={{{1,110},{2,120}}},
		--state_freeze_attack={{{1,2},{2,4}},{{1,2*19},{20,3*18}}},
		--state_freeze_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,5},{20,5}}},
	},
	tianlongshenzhiBUFF={	--天龙神指BUFF
		ignoreskill={{{1,1*0.5},{2,1}},0,{{1,4},{2,4}}},
		defencedeadlystrikedamagetrim={{{1,4},{2,5},{3,6}}},
		deadlystrikedamageenhance_p={{{1,5},{2,8},{3,11}}},
		lifemax_v={{{1,2000},{2,2500},{3,3000}}},
		damage_all_resist={{{1,200},{2,210},{3,220}}},
		skill_statetime={{{1,18*3},{20,18*4},{21,18*4}}},
	},


	qitunwanli={ --气吞万里主_伤
		appenddamage_p= {{{1,40},{2,41},{3,42},{4,43}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,1950*0.9*FightSkill.tbParam.nS1},{10,2877},{20,3377},{30,4277},{40,5277},{50,5777}},
			[3]={{1,1950*1.1*FightSkill.tbParam.nS1},{10,2972},{20,3472},{30,4472},{40,4472},{50,5972}}
			},
		seriesdamage_r={0},--={{{1,100},{20,250},{21,250}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1*0.8}}},
		
		state_silence_attack={{{1,5},{2,8},{3,11}},{{1,18*3},{20,18*3}}},
		state_silence_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,6},{2,6}}},
		missile_range={3,0,3},
	},
	
	qitunwanlizi_kim = { --Kim
		appenddamage_p= {{{1,30},{2,31},{3,32},{4,33}}}, --Phát huy lực tấn công cơ bản
		physicsdamage_v={
			[1]={{1,950*0.9*FightSkill.tbParam.nS1},{10,1877},{20,3377},{30,3277},{40,4277},{50,4777}},
			[3]={{1,950*1.1*FightSkill.tbParam.nS1},{10,1972},{20,2472},{30,3472},{40,4472},{50,4972}}
			},
		state_hurt_attack={{{1,20},{2,21}},{{1,2*19},{20,3*18}}},
		state_hurt_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,8},{2,8}}},
	},
	
	qitunwanlizi_moc = { --Mộc
		appenddamage_p= {{{1,30},{2,31},{3,32},{4,33}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v={{{1,1079},{10,1295},{20,1692},{30,1851},{40,1951},{45,2001}},{{1,5*9},{20,5*9}}},
		state_weak_attack={{{1,20},{2,21}},{{1,2*19},{20,3*18}}},
		state_weak_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,8},{2,8}}},
	},
	
	qitunwanlizi_thuy = { --Thủy
		appenddamage_p= {{{1,30},{2,31},{3,32},{4,33}}}, --Phát huy lực tấn công cơ bản
		colddamage_v={
			[1]={{1,950*0.9*FightSkill.tbParam.nS1},{10,1877},{20,3377},{30,3277},{40,4277},{50,4777}},
			[3]={{1,950*1.1*FightSkill.tbParam.nS1},{10,1972},{20,2472},{30,3472},{40,4472},{50,4972}}
			},
		state_slowall_attack={{{1,20},{2,21}},{{1,2*19},{20,3*18}}},
		state_slowall_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,8},{2,8}}},
	},
	
	qitunwanlizi_hoa = { --Hỏa
		appenddamage_p= {{{1,30},{2,31},{3,32},{4,33}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,950*0.9*FightSkill.tbParam.nS1},{10,1877},{20,3377},{30,3277},{40,4277},{50,4777}},
			[3]={{1,950*1.1*FightSkill.tbParam.nS1},{10,1972},{20,2472},{30,3472},{40,4472},{50,4972}}
			},
		state_burn_attack={{{1,20},{2,21}},{{1,2*19},{20,3*18}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		missile_hitcount={{{1,8},{2,8}}},
	},
	
	qitunwanlizi_tho = { --Thổ
		appenddamage_p= {{{1,30},{2,31},{3,32},{4,33}}}, --Phát huy lực tấn công cơ bản
		lightingdamage_v={
			[1]={{1,950*0.9*FightSkill.tbParam.nS1},{10,1877},{20,3377},{30,3277},{40,4277},{50,4777}},
			[3]={{1,950*1.1*FightSkill.tbParam.nS1},{10,1972},{20,2472},{30,3472},{40,4472},{50,4972}}
			},
		state_stun_attack={{{1,10},{2,11}},{{1,2*19},{20,3*18}}},
		state_stun_attacktime={{{1,55},{2,60}}},
		missile_hitcount={{{1,8},{2,8}}},
	},
	


	ThanKiem_01 = { --Ngự Lôi Thần Kiếm Quyết-1781
		appenddamage_p = {{{1,12},{2,14},{3,16}}}, --Phát huy lực tấn công cơ bản--
		physicsenhance_p = {{{1,15},{2,16},{3,17}}}, --Vật công--
		lightingdamage_v = { --
			[1]={{1,50},{2,100},{3,150}},
			[3]={{1,50},{2,150},{3,250}},
			},
		damage_return_receive_p = {{{1,-50},{2,-60},{3,-70}}},--
		seriesdamage_r = {0}, -- Ngũ Hành Tương Khắc
		skill_cost_v = {{{1,50*3},{20,100*3},{21,100*3}}},
		steallifeenhance_p = {{{1,1*3},{2,2*3}},{{1,100*3},{10,100*3}}},--chuyển hóa thành sinh lực
		stealmanaenhance_p = {{{1,1*3},{2,2*3}},{{1,100*3},{10,100*3}}},	--chuyển hóa thành nội lực	
		state_stun_attack = {{{1,4},{2,5}},{{1,2*18},{20,2*18}}},--Xác suất gây choáng
		state_stun_attacktime = {{{1,110*3},{2,120*3}}},	 --Thời gian gây choáng	
		missile_hitcount = {{{1,10},{10,10},{20,10}}},
		skill_vanishedevent = {{{1,1782},{20,1782}}},
	},

	ThanKiem_012 ={ --????
		appenddamage_p= {{{1,17*3},{2,20*3},{3,23*3},{4,26*3}}}, --Phát huy lực tấn công cơ bản
		physicsenhance_p={{{1,35},{2,36},{3,37}}}, --Vật công
		lightingdamage_v={
			[1]={{1,1800*0.9*FightSkill.tbParam.nS1},{10,1800*0.9},{20,1800*0.9*FightSkill.tbParam.nS20},{21,1800*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1800*1.1*FightSkill.tbParam.nS1},{10,1800*1.1},{20,1800*1.1*FightSkill.tbParam.nS20},{21,1800*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,50},{20,100},{21,100}}},		
		state_burn_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_stun_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},		
		state_stun_attacktime={{{1,110},{2,120}}},
		state_burn_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{10,4},{20,5},{21,5}}},
	},

	ThanKiem_014 ={ --Phá Không Kiếm-1788
		appenddamage_p = {{{1,1},{2,2},{3,3},{4,4}}}, --Phát huy lực tấn công cơ bản--
		physicsenhance_p = {{{1,1},{2,2},{3,3},{4,4}}}, --Vật công--
		lightingdamage_v = { --
			[1]={{1,25},{2,50},{3,75},{4,100}},
			[3]={{1,50},{2,100},{3,150},{4,200}},
			},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v = {{{1,50},{20,100},{21,100}}},		
		state_burn_attack = {{{1,2},{2,3}},{{1,2*18},{20,2*18}}}, --Xác suất gây bỏng--
		state_stun_attack = {{{1,2},{2,3}},{{1,2*18},{20,2*18}}},--Xác suất gây choáng--	
		state_stun_attacktime = {{{1,10},{2,15}}}, --Thời gian gây choáng--
		state_burn_attacktime = {{{1,10},{2,15}}},	--Thời gian gây bỏng	--
		missile_hitcount = {{{1,3},{10,4},{20,5},{21,5}}},
	},
	
	ThanKiem_02 = { --Huyền Thiên Quyết-1782
		appenddamage_p = {{{1,12},{2,13},{3,15}}}, --Phát huy lực tấn công cơ bản--
		physicsenhance_p = {{{1,1},{2,2},{3,3},{4,4}}}, --Vật công--
		lightingdamage_v ={ --
			[1]={{1,10},{2,20},{3,30}},
			[3]={{1,50},{2,75},{3,100}},
			},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v ={{{1,50},{20,100},{21,100}}},		
		--state_stun_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},--Xác suất gây choáng
		--state_stun_attacktime={{{1,110},{2,120}}},	--Thời gian gây choáng	
		state_confuse_attack = {{{1,1},{2,2}},{{1,2*18},{20,2*18}}}, --Xác suất gây hỗn loạn
		state_confuse_attacktime = {{{1,10},{2,12}}},	 --Thời gian gây hỗn loạn	
		missile_hitcount = {{{1,3},{10,4},{20,5},{21,5}}},
	},

	ThanKiem_03 = { --圣火燎原
		appenddamage_p = {{{1,14*3},{2,15*3},{3,16*3}}}, --Phát huy lực tấn công cơ bản
		poisondamage_v ={{{1,960*FightSkill.tbParam.nS1},{10,1050},{20,1170},{21,1182}},{{1,4*9},{20,4*9}}},
		seriesdamage_r ={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v ={{{1,150*3},{20,300*3},{21,315*3}}},
		
		state_fixed_attack ={{{1,0.5*3},{2,1*3}},{{1,18*3},{2,18*3}}},
		state_weak_attack ={{{1,25*3},{10,50*3},{20,64*3}},{{1,72},{20,72}}},
		
		state_weak_attacktime ={{{1,100*3},{2,110*3}}},
		state_fixed_attacktime ={{{1,50*3},{2,55*3}}},
		
		missile_range ={4,0,4},
		missile_hitcount ={{{1,20},{10,20},{20,20}}},
	},

	ThanKiem_04 = { --Tuyệt Thánh Trí-1784
		appenddamage_p = {{{1,5},{2,6},{3,7}}}, --Phát huy lực tấn công cơ bản--
		colddamage_v={--
			[1]={{1,10},{2,20},{3,30}},
			[3]={{1,50},{2,75},{3,100}},
			},
		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150*3},{20,300*3},{21,315*3}}},	
		
		deadlystrikedamageenhance_p = {{{1,2*0.5},{2,2*0.8}}}, --Tấn công khi đánh chí mạng	--	
		state_hurt_attack = {{{1,1},{2,2}},{{1,18*1.5},{20,18*1.5}}}, --Xác suất làm thọ thương--
		state_hurt_attacktime = {{{1,10},{2,15}}},		--Thời gian gây thọ thương--
		missile_range = {4,0,4},
		missile_hitcount = {{{1,20},{10,20},{20,20}}},
	},

	ThanKiem_05 = { --圣火燎原
		appenddamage_p= {{{1,7},{2,8},{3,9}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,900},{2,912}},
			[3]={{1,924},{2,928}}
			},

		seriesdamage_r={0}, -- Ngũ Hành Tương Khắc
		skill_cost_v={{{1,150*3},{20,300*3},{21,315*3}}},	
		
		state_burn_attack = {{{1,2},{2,3},{1,18*1.5},{20,18*1.5}}}, --Xác suất gây bỏng
		state_burn_attacktime = {{{1,10},{2,15}}},	--Thời gian gây bỏng	
		missile_range={4,0,4},
		missile_hitcount={{{1,20},{10,20},{20,20}}},
	},
	
	ThanKiem_06 = { --Sương Thiên Tuyết Vũ-1786
		appenddamage_p = {{{1,7},{2,8},{3,9}}}, --Phát huy lực tấn công cơ bản
		lightingdamage_v = { --
			[1]={{1,25},{2,50},{3,75}},
			[3]={{1,50},{2,100},{3,150}},
			},

		seriesdamage_r = {0}, -- Ngũ Hành Tương Khắc
		skill_cost_v = {{{1,150*3},{20,300*3},{21,315*3}}},	
		
		state_palsy_attack = {{{1,2},{2,3}},{{1,18*1.5},{20,18*1.5}}}, --Xác suất gây tê liệt
		state_palsy_attacktime = {{{1,10},{2,15}}},	--Thời gian gây tê liệt	
		missile_range = {4,0,4},
		missile_hitcount = {{{1,20},{10,20},{20,20}}},
	},

	--SKILL MỚI--
	DietThe_DiemThienTram01={ --水映曼秀
		appenddamage_p= {{{1,33*3},{2,37*3},{3,41*3},{4,45*3}}}, --Phát huy lực tấn công cơ bản
		addphysicsdamage_p={{{1,35},{2,40},{3,45}}}, --Vật công ngoại
		firedamage_v={ --Hỏa công
			[1]={{1,2400*0.9*FightSkill.tbParam.nS1},{10,2400*0.9},{20,2400*0.9*FightSkill.tbParam.nS20},{21,2400*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,2400*1.1*FightSkill.tbParam.nS1},{10,2400*1.1},{20,2400*1.1*FightSkill.tbParam.nS20},{21,2400*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		attackspeed_v={{{1,1000},{2,1000},{3,1000}}}, --Tốc độ xuất chiêu hệ ngoại công
		damage_return_receive_p={{{1,-50},{2,-60},{3,-70}}}, --Kháng phản đòn thọ thương
		seriesdamage_r={{{1,100*3},{20,400*3},{21,410*3}}},
		skill_cost_v={{{1,50*3},{20,100*3},{21,100*3}}},
		steallifeenhance_p={{{1,1*3},{2,2*3}},{{1,100*3},{10,100*3}}},
		stealmanaenhance_p={{{1,1*3},{2,2*3}},{{1,100*3},{10,100*3}}},		
		state_burn_attack={{{1,21*3},{2,22*3}},{{1,2*18},{20,2*18}}},
		state_burn_attacktime={{{1,110*3},{2,120*3}}},
		skill_flyevent={{{1,1742},{20,1742}},{{1,3},{2,3}}},
		skill_showevent={{{1,2},{20,2}}},		
		missile_hitcount={{{1,10},{10,10},{20,10}}},
	},

	DietThe_DiemThienTram02 ={ --????
		appenddamage_p= {{{1,30*3},{2,33*3},{3,36*3},{4,39*3}}}, --Phát huy lực tấn công cơ bản
		addphysicsdamage_p={{{1,25},{2,30},{3,35}}}, --Vật công ngoại
		firedamage_v={
			[1]={{1,1800*0.9*FightSkill.tbParam.nS1},{10,1800*0.9},{20,1800*0.9*FightSkill.tbParam.nS20},{21,1800*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1800*1.1*FightSkill.tbParam.nS1},{10,1800*1.1},{20,1800*1.1*FightSkill.tbParam.nS20},{21,1800*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		attackspeed_v={{{1,1000},{2,1000},{3,1000}}}, --Tốc độ xuất chiêu hệ ngoại công
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},		
		state_burn_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_stun_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},		
		state_stun_attacktime={{{1,110},{2,120}}},
		state_burn_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{10,4},{20,5},{21,5}}},
	},

	DietThe_DiemThienTram03 ={ --????
		appenddamage_p= {{{1,27*3},{2,28*3},{3,29*3}}}, --Phát huy lực tấn công cơ bản
		addphysicsdamage_p={{{1,20},{2,24},{3,28}}}, --Vật công ngoại
		firedamage_v={
			[1]={{1,4000*0.9*FightSkill.tbParam.nS1},{10,4000*0.9},{20,4000*0.9*FightSkill.tbParam.nS20},{21,4000*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,4000*1.1*FightSkill.tbParam.nS1},{10,4000*1.1},{20,4000*1.1*FightSkill.tbParam.nS20},{21,4000*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		attackspeed_v={{{1,1000},{2,1000},{3,1000}}}, --Tốc độ xuất chiêu hệ ngoại công
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},		
		state_burn_attack={{{1,11},{2,12}},{{1,2*18},{20,2*18}}},
		state_stun_attack={{{1,21},{2,22}},{{1,2*18},{20,2*18}}},		
		state_stun_attacktime={{{1,110},{2,120}}},
		state_burn_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{10,4},{20,5},{21,5}}},
	},

	DietThe_DiemThienTram04 = { --????
		appenddamage_p= {{{1,33*3},{2,37*3},{3,41*3},{4,45*3}}}, --Phát huy lực tấn công cơ bản
		addphysicsdamage_p={{{1,35},{2,40},{3,45}}}, --Vật công ngoại
		firedamage_v={
			[1]={{1,1920*0.9*FightSkill.tbParam.nS1},{10,1920*0.9},{20,1920*0.9*FightSkill.tbParam.nS20},{21,1920*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1920*1.1*FightSkill.tbParam.nS1},{10,1920*1.1},{20,1920*1.1*FightSkill.tbParam.nS20},{21,1920*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		attackspeed_v={{{1,1000},{2,1000},{3,1000}}}, --Tốc độ xuất chiêu hệ ngoại công
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		deadlystrikedamageenhance_p={{{1,1*0.5},{2,1*0.8}}},		
		state_burn_attack={{{1,15},{2,16}},{{1,36},{20,64},{21,64}}},		
		state_burn_attacktime={{{1,110},{2,120}}},		
		state_silence_attack={{{1,10},{2,12}},{{1,36},{20,64},{21,64}}},
		state_silence_attacktime={{{1,100},{2,110}}},
		missile_hitcount={{{1,3},{10,4},{20,10},{21,10}}},
	},

	DietThe_DiemThienTram05={ --????
		appenddamage_p= {{{1,33*3},{2,37*3},{3,41*3},{4,45*3}}}, --Phát huy lực tấn công cơ bản
		addphysicsdamage_p={{{1,35},{2,40},{3,45}}}, --Vật công ngoại
		firedamage_v={
			[1]={{1,1920*0.9*FightSkill.tbParam.nS1},{10,1920*0.9},{20,1920*0.9*FightSkill.tbParam.nS20},{21,1920*0.9*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}},
			[3]={{1,1920*1.1*FightSkill.tbParam.nS1},{10,1920*1.1},{20,1920*1.1*FightSkill.tbParam.nS20},{21,1920*1.1*FightSkill.tbParam.nS20*FightSkill.tbParam.nSadd}}
			},
		attackspeed_v={{{1,1000},{2,1000},{3,1000}}}, --Tốc độ xuất chiêu hệ ngoại công
		skill_cost_v={{{1,50},{20,100},{21,100}}},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		state_hurt_attack={{{1,21},{20,40}},{{1,2*18},{20,2*18}}},
		state_weak_attack={{{1,12},{10,30},{20,50}},{{1,36},{20,54},{21,54}}},
		state_burn_attack={{{1,15},{2,16}},{{1,36},{20,64},{21,64}}},
		state_weak_attacktime={{{1,110},{10,200}}},
		state_fixed_attack={{{1,5},{20,15},{29,30}},{{1,18*2},{20,18*2},{29,2*18}}},
		state_burn_attacktime={{{1,110},{2,120}}},		
		missile_hitcount={{{1,3},{10,4},{20,10},{21,10}}},
	},

	DietThe_DiemThienTram06 = { --????
		appenddamage_p= {{{1,33},{2,35},{3,37},{4,39}}}, --Phát huy lực tấn công cơ bản
		firedamage_v={
			[1]={{1,1500},{2,1520}},
			[3]={{1,1540},{2,1580}}
			},
		seriesdamage_r={{{1,100},{20,400},{21,410}}},
		skill_cost_v={{{1,100},{20,200},{21,200}}},
		state_burn_attack={{{1,22},{2,24}},{{1,18},{10,45},{11,45}}},
		state_burn_attacktime={{{1,110},{2,120}}},
		state_drag_attack={{{1,0.5},{2,1}},{{1,32},{10,32},{11,32}},{{1,10},{2,10}}},
		missile_hitcount={{{1,2},{5,2},{10,4},{11,4}}},
	},




}
FightSkill:AddMagicData(tb)

local tbSkill = FightSkill:GetClass("thieulambong_150")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1447, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."Khi đánh trúng mỗi mục tiêu, có <color=gold>80%<color> xác suất thi triển: \n";
	szMsg = szMsg.."<color=green>[Vi Đà Hiến Chử-Tử] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("duongmonbay150")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1989, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."<color=cyan>Mục tiêu trúng đòn triển khai Tấn công rộng:<color> \n";
	szMsg = szMsg.."<color=green>[Cuồng Phong Đao - Trảm] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("ngudocdao150")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1985, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."<color=cyan>Triển khai xung quanh mình:<color> \n";
	szMsg = szMsg.."<color=green>[Phá Thiên Quân-Đao Trận] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("thuyyenkiem150")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1965, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."<color=cyan>Tấn công xuyên mục tiêu:<color> \n";
	szMsg = szMsg.."<color=green>[Thiên Hạ Kiếm] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("minhgiaokiem150")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1599, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."<color=cyan>Thi triển Xích Diệm thiêu đốt diện rộng:<color> \n";
	szMsg = szMsg.."<color=green>[Tiêu Diệm Liêu Nguyên 8] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("minhchuy150")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1745, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."Khi đánh trúng mỗi mục tiêu, có <color=gold>88%<color> xác suất thi triển: \n";
	szMsg = szMsg.."<color=green>[Đằng Sát Hỏa Chùy_Tử Diệt] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("vokiem150")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1690, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."<color=cyan><color=green>Bát Tinh Viêm<color> chí tàn thi triển: \n";
	szMsg = szMsg.."<color=green>[Phá Không Kiếm] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("yuehuaqingxie")
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1963, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."<color=cyan>Thi triển đồng thời:\n";
	szMsg = szMsg.."<color=green>[Hình Thiên Chưởng] Lv"..tbInfo.nLevel.."<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	return szMsg;
end

local tbSkill = FightSkill:GetClass("tianlongshenzhi")

function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1705, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."Trúng mục tiêu thi triển:\n";
	szMsg = szMsg.."<color=green>[Vô Song Chỉ Lực] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	
	local tbMsg1 = {};
	local tbChildInfo1	= KFightSkill.GetSkillInfo(1708, tbInfo.nLevel);
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg1, tbChildInfo1, 0);
	szMsg = szMsg.."\n\n"
	szMsg = szMsg.."Lúc tấn công bản thân nhận trạng thái:\n";
	szMsg = szMsg.."<color=green>[Bắc Minh Công] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg1 do
		szMsg = szMsg..""..tostring(tbMsg1[i])..(i ~= #tbMsg1 and "\n" or "");
	end
	
	return szMsg;
	
end

local tbSkill = FightSkill:GetClass("qitunwanli")

function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1969, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."Thi triển Kiếm khí tầng 1:\n";
	szMsg = szMsg.."<color=green>[Kim Long Kiếm] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	
	local tbMsg1 = {};
	local tbChildInfo1	= KFightSkill.GetSkillInfo(1701, tbInfo.nLevel);
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg1, tbChildInfo1, 0);
	szMsg = szMsg.."\n\n"
	szMsg = szMsg.."Thi triển Kiếm khí tầng 2:\n";
	szMsg = szMsg.."<color=green>[Mộc Thanh Kiếm] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg1 do
		szMsg = szMsg..""..tostring(tbMsg1[i])..(i ~= #tbMsg1 and "\n" or "");
	end

	local tbMsg2 = {};
	local tbChildInfo1	= KFightSkill.GetSkillInfo(1703, tbInfo.nLevel);
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg2, tbChildInfo1, 0);
	szMsg = szMsg.."\n\n"
	szMsg = szMsg.."Thi triển Kiếm khí tầng 3:\n";
	szMsg = szMsg.."<color=green>[Băng Sương Kiếm] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg2 do
		szMsg = szMsg..""..tostring(tbMsg2[i])..(i ~= #tbMsg2 and "\n" or "");
	end
	
	local tbMsg3 = {};
	local tbChildInfo1	= KFightSkill.GetSkillInfo(1711, tbInfo.nLevel);
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg3, tbChildInfo1, 0);
	szMsg = szMsg.."\n\n"
	szMsg = szMsg.."Thi triển Kiếm khí tầng 4:\n";
	szMsg = szMsg.."<color=green>[Hỏa Long Kiếm] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg3 do
		szMsg = szMsg..""..tostring(tbMsg3[i])..(i ~= #tbMsg3 and "\n" or "");
	end

	local tbMsg4 = {};
	local tbChildInfo1	= KFightSkill.GetSkillInfo(1712, tbInfo.nLevel);
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg4, tbChildInfo1, 0);
	szMsg = szMsg.."\n\n"
	szMsg = szMsg.."Thi triển Kiếm khí tầng 5:\n";
	szMsg = szMsg.."<color=green>[Chấn Lôi Kiếm] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg4 do
		szMsg = szMsg..""..tostring(tbMsg4[i])..(i ~= #tbMsg4 and "\n" or "");
	end
	
	return szMsg;
	
end

local tbSkill = FightSkill:GetClass("ThanKiem_01")

function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local tbChildInfo	= KFightSkill.GetSkillInfo(1782, tbInfo.nLevel);
	local szMsg = ""	
	local tbMsg = {};
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg, tbChildInfo, 0);
	szMsg = szMsg.."\n"
	szMsg = szMsg.."Trúng mục tiêu thi triển:\n";
	szMsg = szMsg.."<color=green>[Huyền Thiên Quyết] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg do
		szMsg = szMsg..""..tostring(tbMsg[i])..(i ~= #tbMsg and "\n" or "");
	end
	
	local tbMsg1 = {};
	local tbChildInfo1	= KFightSkill.GetSkillInfo(1786, tbInfo.nLevel);
	FightSkill:GetClass("default"):GetDescAboutLevel(tbMsg1, tbChildInfo1, 0);
	szMsg = szMsg.."\n\n"
	szMsg = szMsg.."Lôi công tấn công diện rộng xung quanh:\n";
	szMsg = szMsg.."<color=green>[Sương Thiên Tuyết Vũ] "..tbInfo.nLevel.." cấp<color>\n";
	for i=1, #tbMsg1 do
		szMsg = szMsg..""..tostring(tbMsg1[i])..(i ~= #tbMsg1 and "\n" or "");
	end
	
	return szMsg;
	
end
