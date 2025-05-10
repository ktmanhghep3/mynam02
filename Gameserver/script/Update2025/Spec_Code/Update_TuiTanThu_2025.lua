local tbUpdate_TuiTanThu_2025 ={};
SpecialEvent.Update_TuiTanThu_2025 = tbUpdate_TuiTanThu_2025;

tbUpdate_TuiTanThu_2025.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbUpdate_TuiTanThu_2025.TaskIDTT = 1;

function tbUpdate_TuiTanThu_2025:OnDialog()
DoScript("\\script\\Update2025\\Spec_Code\\Update_TuiTanThu_2025.lua");
local nCodeTanThu = me.GetTask(self.TaskGroupTT, self.TaskIDTT);
if nCodeTanThu < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Chưa Kích hoạt Code Tân Thủ, hãy Liên hệ Zalo Admin để cấp!<color>"));
return 0; 
end

local szMsg = "<color=cyan>Cường Hóa Max 1 Click<color>";
local tbOpt = 
{
--{"<bclr=0,0,200><color=white>Cường hóa Trang bị +16 nhanh", self.CuongHoa_Trangbi16, self};
{"<bclr=0,0,200><color=white>Cường Hóa +16 Trang bị nhanh", self.NhanBuaCH, self};
{"<bclr=0,0,200><color=white>Cường Hóa Max Ấn Nhanh", self.CuongHoa_An, self};
{"<bclr=0,0,200><color=white>Max Chân Nguyên Thánh Linh", self.CuongHoa_ChanNguyenThanhLinh, self};


{"Ta biết rồi"},
}
Dialog:Say(szMsg,tbOpt)
end


function tbUpdate_TuiTanThu_2025:NhanBuaCH()
me.AddStackItem(18,1,4037,16,{bForceBind=1,},9);

end

function tbUpdate_TuiTanThu_2025:CuongHoa_Trangbi16()
	local szMsg = "Đặt vào Trang bị Cần Cường Hóa";
	Dialog:OpenGift(szMsg, nil, {self.CuongHoa, self, 1});
end
function tbUpdate_TuiTanThu_2025:CuongHoa(nValue, tbItemObj)
		local tbItemInfo = {bForceBind=1,};
		local tbItemList	= {};
		for _, pItem in pairs(tbItemObj) do
		local pItemkhoa = me.AddItem(pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel,nil,16);
		pItemkhoa.Bind(1);
		end
		for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
		end
end

function tbUpdate_TuiTanThu_2025:CuongHoa_An()
	local pSignet = me.GetItem(Item.ROOM_EQUIP,Item.EQUIPPOS_SIGNET, 0);
	if not pSignet then
		Dialog:Say("Thăng cấp thành công.");
		return 0;
	end
	local nLevel 	= pSignet.GetGenInfo(1 * 2 - 1, 0);
	if nLevel >= 1500 then
		Dialog:Say("Ấn đã thăng cấp tối đa.");
		return 0;
	end
	nLevel = nLevel + 1500;
	if nLevel > 1500 then
		nLevel = 1500;
	end
	Item:SetSignetMagic(pSignet, 1, nLevel, 0);

	local nLevel 	= pSignet.GetGenInfo(2 * 2 - 1, 0);
	if nLevel >= 1500 then
		Dialog:Say("Ấn đã thăng cấp tối đa.");
		return 0;
	end
	nLevel = nLevel + 1500;
	if nLevel > 1500 then
		nLevel = 1500;
	end
	Item:SetSignetMagic(pSignet, 2, nLevel, 0);

end

function tbUpdate_TuiTanThu_2025:CuongHoa_ChanNguyenThanhLinh()
	local lhcu = me.GetTask(2123,1);
	local lhmoi = lhcu + 9000000000;
	me.SetTask(2123,1,lhmoi);

	local solinhhon = me.GetTask(2123,1);
	local Num_1 = solinhhon;
	local pItem = me.GetEquip(Item.EQUIPPOS_ZHENYUAN_SUB1);
	Item:UpgradeSoulSignetNoItem(pItem,Num_1,1);
	me.SetTask(2123,1,0);

	local Num_2 = solinhhon;
	local pItem = me.GetEquip(Item.EQUIPPOS_ZHENYUAN_SUB1);
	Item:UpgradeSoulSignetNoItem(pItem,Num_2,2);
	me.SetTask(2123,1,0);

	local Num_3 = solinhhon;
	local pItem = me.GetEquip(Item.EQUIPPOS_ZHENYUAN_SUB1);
	Item:UpgradeSoulSignetNoItem(pItem,Num_3,3);
	me.SetTask(2123,1,0);

	local Num_4 = solinhhon;
	local pItem = me.GetEquip(Item.EQUIPPOS_ZHENYUAN_SUB1);
	Item:UpgradeSoulSignetNoItem(pItem,Num_4,4);
	me.SetTask(2123,1,0);

	local Num_5 = solinhhon;
	local pItem = me.GetEquip(Item.EQUIPPOS_ZHENYUAN_SUB1);
	Item:UpgradeSoulSignetNoItem(pItem,Num_5,5);
	me.SetTask(2123,1,0);

local pItem = me.GetEquip(Item.EQUIPPOS_ZHENYUAN_MAIN);
for i = 1,4 do
Item:UpgradeZhenYuanNoItem(pItem,500000,i);
end
end
