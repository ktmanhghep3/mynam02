local tb	= {
	
ThienGia_Kiem ={
	
addphysicsmagic_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Vật công nội
damage_all_resist = {{{1,2},{2,3},{3,4},{4,5}}},		--Kháng tất cả
steallifeenhance_p={{{1,1},{2,2},{3,3},{4,4}},{{1,100},{10,100}}},--Chuyển Sát thương thành Sinh lực
state_hurt_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị thương
},

ThienGia_Thuong ={
	
addphysicsdamage_p = {{{1,1},{2,2},{3,3},{4,4}}},		--Vật công ngoại
damage_physics_resist = {{{1,5},{2,7},{3,9},{4,11}}},	--Kháng vật công
stealmanaenhance_p={{{1,1},{2,2},{3,3},{4,4}},{{1,100},{10,100}}},--Chuyển Sát thương thành Nội lực
state_weak_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị yếu
},

ThienGia_Chuy ={
	
deadlystrikeenhance_r = {{{1,2},{2,3},{3,4},{4,5}}},		--Chí mạng
damage_poison_resist = {{{1,5},{2,7},{3,9},{4,11}}},			--Kháng độc công
defencedeadlystrikedamagetrim = {{{1,2},{2,4},{3,6},{4,8}}},	--Chịu sát thương chí mạng
state_slowall_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},		--Thời gian bị làm chậm
},

ThienGia_Dao ={
	
deadlystrikedamageenhance_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Tấn công khi đánh Chí mạng
damage_cold_resist =  {{{1,1},{2,2},{3,3},{4,4}}},			--Kháng băng công
ignoreskill={{{1,1},{2,1},{3,1},{4,2},{5,2},{6,2},{7,3},{8,3},{9,3},{10,4},{11,4},{12,4},{13,5},{14,5},{15,5},{16,6},{17,6},{18,6},{19,7},{20,7}},0,{{1,3},{2,3}}},	--Né tránh Tấn công Nội-Ngoại
state_burn_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},			--Thời gian bị bỏng
},

ThienGia_Bong ={
	
skilldamageptrim =  {{{1,1},{2,2},{3,3},{4,4}}},		--Phát huy lực tấn công cơ bản
damage_fire_resist = {{{1,5},{2,7},{3,9},{4,11}}},		--Kháng hỏa công
ignoredefenseenhance_p =  {{{1,1},{2,2},{3,3},{4,4}}},		--Bỏ qua né tránh đối thủ
state_stun_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị choáng
},

ThienGia_Tien ={
	
skillselfdamagetrim =  {{{1,1},{2,2},{3,3},{4,4}}},			--Phát huy lực tấn công kỹ năng
damage_light_resist = {{{1,5},{2,7},{3,9},{4,11}}},			--Kháng lôi công
ignoreresist_p =  {{{1,1},{2,2},{3,3},{4,4}}},				--Tỷ lệ bỏ qua kháng
allseriesstateresisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị trạng thái ngũ hành
},


ThienGia ={
	
--addphysicsmagic_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Vật công nội
damage_all_resist = {{{1,2},{2,3},{3,4},{4,5}}},		--Kháng tất cả
steallifeenhance_p={{{1,1},{2,2},{3,3},{4,4}},{{1,100},{10,100}}},--Chuyển Sát thương thành Sinh lực
state_hurt_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị thương

--addphysicsdamage_p = {{{1,1},{2,2},{3,3},{4,4}}},		--Vật công ngoại
damage_physics_resist = {{{1,5},{2,7},{3,9},{4,11}}},	--Kháng vật công
stealmanaenhance_p={{{1,1},{2,2},{3,3},{4,4}},{{1,100},{10,100}}},--Chuyển Sát thương thành Nội lực
state_weak_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị yếu

--deadlystrikeenhance_r = {{{1,2},{2,3},{3,4},{4,5}}},		--Chí mạng
damage_poison_resist = {{{1,5},{2,7},{3,9},{4,11}}},			--Kháng độc công
defencedeadlystrikedamagetrim = {{{1,2},{2,4},{3,6},{4,8}}},	--Chịu sát thương chí mạng
state_slowall_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},		--Thời gian bị làm chậm

--deadlystrikedamageenhance_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Tấn công khi đánh Chí mạng
damage_cold_resist =  {{{1,1},{2,2},{3,3},{4,4}}},			--Kháng băng công
--ignoreskill={{{1,1},{2,1},{3,1},{4,2},{5,2},{6,2},{7,3},{8,3},{9,3},{10,4},{11,4},{12,4},{13,5},{14,5},{15,5},{16,6},{17,6},{18,6},{19,7},{20,7}},0,{{1,3},{2,3}}},	--Né tránh Tấn công Nội-Ngoại
state_burn_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},			--Thời gian bị bỏng

--skilldamageptrim =  {{{1,1},{2,2},{3,3},{4,4}}},		--Phát huy lực tấn công cơ bản
damage_fire_resist = {{{1,5},{2,7},{3,9},{4,11}}},		--Kháng hỏa công
--ignoredefenseenhance_p =  {{{1,1},{2,2},{3,3},{4,4}}},		--Bỏ qua né tránh đối thủ
state_stun_resisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị choáng

--skillselfdamagetrim =  {{{1,1},{2,2},{3,3},{4,4}}},			--Phát huy lực tấn công kỹ năng
damage_light_resist = {{{1,5},{2,7},{3,9},{4,11}}},			--Kháng lôi công
--ignoreresist_p =  {{{1,1},{2,2},{3,3},{4,4}}},				--Tỷ lệ bỏ qua kháng
allseriesstateresisttime = {{{1,2},{2,4},{3,6},{4,8}}},	--Thời gian bị trạng thái ngũ hành
},

ThienGia_Del ={
	


},

}

FightSkill:AddMagicData(tb)
