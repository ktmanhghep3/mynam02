local tb	= {
	
	yishuige ={ --易水歌
		skill_cost_v={{{1,100},{10,100}}},
		skill_attackradius = {{{1,125},{2,150},{3,175}}}, --Cự ly thi triển
		skill_param1_v = {{{1,125},{2,127},{3,129}}}, --Cự ly di chuyển tối đa
		skill_mintimepercast_v={{{1,30*18},{2,29*18},{3,28*18}}}, --Khoảng cách thi triển
	},

	yishuige_2 ={ --剑昆高级秘籍_10
		state_float_attack = {{{1,10},{2,12},{3,14}}}, --Tỷ lệ tạo thành phù không
		damage_all_resist = {{{1,25},{2,30},{3,35}}},--Kháng tất cả
		missile_hitcount={{{1,5},{10,5}}},
		skill_cost_v={{{1,100},{10,100}}},
		skill_mintimepercast_v={{{1,45*18},{10,45*18}}}, --Khoảng cách thi triển
		skill_mintimepercastonhorse_v={{{1,45*18},{10,45*18}}},
		skill_statetime={{{1,5*18},{2,6*18}}}, --Thời gian Duy trì
		state_stun_attack={{{1,10},{2,15},{3,20}},{{1,1},{2,2}}}, --Xác suất gây choáng

	},

	banmasuo={ --玉楼春
		lifereplenish_p={{{1,5},{2,7},{3,9}}}, --Hiệu suất hồi phục sinh lực
		manareplenish_p={{{1,5},{2,7},{3,9}}}, --Hiệu suất hồi phục nội lực
		skill_statetime={{{1,18*30},{6,18*30}}}, --Thời gian Duy trì
		skill_mintimepercast_v={{{1,18*120},{6,18*120}}}, --Khoảng cách thi triển
	},
	
	qianjinzhui={ --定风波
		defencedeadlystrikedamagetrim = {{{1,5},{2,6},{3,7}}}, --Chịu sát thương chí mạng
		damage_physics_receive_p = {{{1,5},{2,6},{3,7}}}, --Chịu sát thương vật lý
		damage_poison_receive_p = {{{1,5},{2,6},{3,7}}}, --Chịu sát thương độc công
		damage_cold_receive_p = {{{1,5},{2,6},{3,7}}}, --Chịu sát thương băng công
		damage_fire_receive_p = {{{1,5},{2,6},{3,7}}}, --Chịu sát thương hỏa công
		damage_light_receive_p = {{{1,5},{2,6},{3,7}}}, --Chịu sát thương lôi công
		skill_statetime={{{1,5*18},{2,6*18}}}, --Thời gian Duy trì
		skill_mintimepercast_v={{{1,18*120},{6,18*120}}}, --Khoảng cách thi triển
	},




	
}

FightSkill:AddMagicData(tb)

local tbSkill	= FightSkill:GetClass("yishuige");
function tbSkill:GetParamDesc(tbMsg, nParam1, nParam2, tbInfo)
	tbMsg[#tbMsg+1]	= string.format("Cự ly di chuyển tối đa: <color=gold>%d<color>", nParam1);
end;

local tbSkill	= FightSkill:GetClass("banmasuo");
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local szMsg = "";
	szMsg = szMsg.."Nhiều hiệu quả có <color=red>cấp giống nhau<color> có thể cộng dồn thời gian duy trì, tối đa <color=gold>120 giây<color>"
	return szMsg;
end

local tbSkill	= FightSkill:GetClass("qianjinzhui");
function tbSkill:GetExtraDesc(tbInfo)
	if (not tbInfo) then
		return "";
	end
	local szMsg = "";
	szMsg = szMsg.."Nhiều hiệu quả có <color=red>cấp giống nhau<color> có thể cộng dồn thời gian duy trì, tối đa <color=gold>120 giây<color>"
	return szMsg;
end


