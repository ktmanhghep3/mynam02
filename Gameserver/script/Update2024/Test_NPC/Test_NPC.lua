local tbNpc = Npc:GetClass("Test_NPCz");



function tbNpc:OnDialog()
local szMsg = "<color=cyan>Test NPC:\n"

local tbOpt = {};

table.insert(tbOpt,{"<color=yellow>Test NPC", self.Test_NPC, self});


Dialog:Say(szMsg, tbOpt);
end
