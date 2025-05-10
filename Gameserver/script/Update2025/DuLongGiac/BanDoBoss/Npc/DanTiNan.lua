local tbNpc = Npc:GetClass("DanTiNan");



function tbNpc:OnDialog()
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local szMsg = "..........."
local tbOpt = {};

table.insert(tbOpt,{"Hãy giúp chúng ta", self.cancel, self});

Dialog:Say(szMsg, tbOpt);
end
