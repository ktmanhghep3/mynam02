local tbItem = Item:GetClass("BiAnStX10");
function tbItem:OnUse()	
	me.AddStackItem(18,1,3006,1,{bForceBind=1,},10);
	return 1;
end
