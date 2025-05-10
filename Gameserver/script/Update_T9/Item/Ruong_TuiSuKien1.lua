
local Ruong_TuiSuKien = Item:GetClass("Ruong_TuiSuKien1");

function Ruong_TuiSuKien:OnUse()	

	if me.CountFreeBagCell() < 5 then
	me.Msg("Túi của bạn đã đầy, cần ít nhất 5 ô trống.");
	return 0;
	end	
	me.AddStackItem(18,1,3008,1,{bForceBind=1,},3);
	me.Msg("Bạn nhận được <color=gold>3 Túi Sự Kiện 1<color>");
	return 1;
end

