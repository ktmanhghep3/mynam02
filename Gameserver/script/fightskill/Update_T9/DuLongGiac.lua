local tb	= {
	

DuLongGiap ={

damage_all_resist = {{{1,2000},{2,3000},{3,4000},{4,5000}}},		--Kháng tất cả
damage_physics_resist = {{{1,1000},{2,2000},{3,3000},{4,4000}}},	--Kháng vật công
damage_poison_resist = {{{1,1000},{2,2000},{3,3000},{4,4000}}},	--Kháng độc công
damage_cold_resist =  {{{1,1000},{2,2000},{3,3000},{4,4000}}},		--Kháng băng công
damage_fire_resist = {{{1,1000},{2,2000},{3,3000},{4,4000}}},		--Kháng hỏa công
damage_light_resist = {{{1,1000},{2,2000},{3,3000},{4,4000}}},		--Kháng lôi công

allseriesstateresisttime = {{{1,100},{2,110},{3,120},{4,130}}},		--Thời gian bị trạng thái ngũ hành
--state_hurt_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},		--Thời gian bị thương
--state_weak_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},		--Thời gian bị yếu
--state_slowall_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},		--Thời gian bị làm chậm
--state_burn_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},		--Thời gian bị bỏng
--state_stun_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},		--Thời gian bị choáng

steallifeenhance_p = {{{1,10},{2,20},{3,30},{4,40}},{{1,100},{10,100}}},--Chuyển Sát thương thành Sinh lực
stealmanaenhance_p = {{{1,10},{2,20},{3,30},{4,40}},{{1,100},{10,100}}},--Chuyển Sát thương thành Nội lực
defencedeadlystrikedamagetrim = {{{1,50},{2,70},{3,90},{4,110}}},	--Chịu sát thương chí mạng


ignoreskill = {{{1,1},{2,2},{3,3},{4,4}},0,{{1,3},{2,3}}},	--Né tránh Tấn công Nội-Ngoại
},

}

FightSkill:AddMagicData(tb)
