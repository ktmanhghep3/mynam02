-- 文件名　：fuben.lua
-- 创建者　：jiazhenwei
-- 创建时间：2009-12-7
-- 描  述  ：

-- 副本道具脚本

local tbFuBen= Item:GetClass("fuben_enter");

function tbFuBen:OnUse()	
	local tbOpt = {};
	local szMsg = "Sao ch茅p v脿o c谩c m茫 th么ng b谩o,膽瓢a b岷 膽岷縩 m峄檛 ph贸 b岷 c峄 膽峄檌 tr瓢峄g 膽茫 m峄�";
	tbOpt = {
			{"Th峄眂 hi峄噉 theo 膽峄檌 tr瓢峄g", Npc:GetClass("dataosha_city").OnEnter, Npc:GetClass("dataosha_city"), me.nId},
			{"H峄 B峄�"},
		};
	Dialog:Say(szMsg, tbOpt);
	return;
end
	