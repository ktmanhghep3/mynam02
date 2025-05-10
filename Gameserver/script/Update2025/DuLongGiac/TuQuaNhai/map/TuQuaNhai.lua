Require("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\TuQuaNhai_def.lua");

local tbMap = Map:GetClass(Boss.TuQuaNhai.MAP_ID);

-- Khi người chơi vào bản đồ
function tbMap:OnEnter()
	Boss.TuQuaNhai:OnPlayerEnter(me);
end

-- Khi người chơi rời bản đồ
function tbMap:OnLeave()
	Boss.TuQuaNhai:OnPlayerLeave(me);
end