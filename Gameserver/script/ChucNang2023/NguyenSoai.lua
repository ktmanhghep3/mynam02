local tbBoss = Npc:GetClass("NguyenSoai");-- class cua boss


function tbBoss:OnDeath(pNpcKiller)
me.AddStackItem(18,1,3067,1,nil,1);
me.AddStackItem(18,1,3068,1,nil,1);
me.AddStackItem(18,1,3069,1,nil,1);
end
