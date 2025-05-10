local tb	= {
	
ThatKiem_DuLong ={
addphysicsmagic_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Vật công Nội

},

ThatKiem_ThanhCan ={
addphysicsdamage_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Vật công Ngoại

},

ThatKiem_MacVan ={
deadlystrikeenhance_r = {{{1,1},{2,2},{3,3},{4,4}}},		--Chí mạng

},

ThatKiem_NhatNguyet ={
steallifeenhance_p={{{1,1},{2,2},{3,3},{4,4}},{{1,100},{10,100}}},--Chuyển Sát thương thành Sinh lực

},

ThatKiem_CanhTinh ={
defencedeadlystrikedamagetrim={{{1,1},{2,2},{3,3},{4,4}}},	--Chịu sát thương chí mạng

},

ThatKiem_ThienBoc ={
seriesenhance={{{1,20},{2,40},{3,60},{4,80}}},--Cường hóa ngũ hành tương khắc
ignoredefenseenhance_v={{{1,1},{2,2},{3,3},{4,4}}},--Bỏ qua né tránh đối thủ
},

ThatKiem_XaThan ={
seriesabate={{{1,20},{2,40},{3,60},{4,80}}},--Nhược hóa ngũ hành tương khắc	
attackrating_p={{{1,1},{2,2},{3,3},{4,4}}},--Điểm đánh trúng
},


ThatKiem ={
--addphysicsmagic_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Vật công Nội
--addphysicsdamage_p = {{{1,1},{2,2},{3,3},{4,4}}},			--Vật công Ngoại
--deadlystrikeenhance_r = {{{1,1},{2,2},{3,3},{4,4}}},		--Chí mạng
steallifeenhance_p={{{1,1},{2,2},{3,3},{4,4}},{{1,100},{10,100}}},--Chuyển Sát thương thành Sinh lực
defencedeadlystrikedamagetrim={{{1,1},{2,2},{3,3},{4,4}}},	--Chịu sát thương chí mạng
seriesenhance={{{1,20},{2,40},{3,60},{4,80}}},--Cường hóa ngũ hành tương khắc
--ignoredefenseenhance_v={{{1,1},{2,2},{3,3},{4,4}}},--Bỏ qua né tránh đối thủ
seriesabate={{{1,20},{2,40},{3,60},{4,80}}},--Nhược hóa ngũ hành tương khắc	
attackrating_p={{{1,1},{2,2},{3,3},{4,4}}},--Điểm đánh trúng
},

}

FightSkill:AddMagicData(tb)
