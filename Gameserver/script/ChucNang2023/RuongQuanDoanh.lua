local tbItem = Item:GetClass("RuongQD_ChinhTuyen");

function tbItem:OnUse()
me.AddStackItem(18,1,3079,1,{bForceBind=1,},600);--Tiểu Kim Nguyên Bảo
me.AddStackItem(18,1,3071,1,{bForceBind=1,},3);--Túi Mảnh Ghép
me.AddStackItem(18,1,114,5,{bForceBind=1,},2);--Huyền Tinh Cấp 5
me.Earn(50000,0); --Bạc thường
me.AddBindCoin(2500); --Đồng khóa
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(130);
return 1;				
end
