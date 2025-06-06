
local tbYanLianDaShi = Npc:GetClass("yeliandashi");

tbYanLianDaShi.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbYanLianDaShi.TaskIDTT = 1;

function tbYanLianDaShi:OnDialog()
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

	-- 剥离选项：by zhangjinpin@kingsoft
	local tbOpt = {
			--{"<color=gold>Chuyển cường hóa trang bị<color>",SpecialEvent.RutCuongHoa.OnDialog,SpecialEvent.RutCuongHoa};
			{"Cường hóa vật phẩm", self.CheckPermission, self, {self.SelectMoneyType, self, Item.ENHANCE_MODE_ENHANCE}},
			{"Tách Huyền Tinh", self.CheckPermission, self, {me.OpenEnhance, Item.ENHANCE_MODE_PEEL, Item.BIND_MONEY}},
			{"Ghép Huyền Tinh", self.CheckPermission, self, {self.SelectMoneyType, self, Item.ENHANCE_MODE_COMPOSE}},
			{"Phân Giải Huyền Tinh cấp cao", self.CheckPermission, self, {Dialog.Gift, Dialog, "Item.tbGift"}},
			{"Tăng cấp Ngũ Hành Ấn", self.CheckPermission, self, {me.OpenEnhance, Item.ENHANCE_MODE_UPGRADE, Item.BIND_MONEY}},
			{"Luyện Hóa", self.CheckPermission, self, {me.OpenEnhance, Item.ENHANCE_MODE_REFINE, Item.BIND_MONEY}},
			{"Sửa Trang bị", self.CheckPermission, self, {self.SelectMoneyType, self, Item.ENHANCE_MODE_STRENGTHEN}},
			--{"<bclr=0,0,200><color=white>Đăng ký thời gian Tách-Chuyển Trang bị Dã Luyện Đại Sư", self.nhanthoigian, self},
			{"Ta chỉ tình cờ đi ngang qua"},
		};
		
	local bState = Item.CheckApplyPeelState();
	if bState == 0 then
		table.insert(tbOpt, 6, {"Muốn tách huyền tinh từ trang bị cao cấp", self.CheckPermission, self, {self.ApplyPeelHighEquip, self}});
	elseif bState == 1 then
		table.insert(tbOpt, 6, {"Ta muốn hủy bỏ tách", self.CheckPermission, self, {self.CancelPeelHighEquip, self}});
	end
	
	Dialog:Say("Cường hóa làm tăng thuộc tính của trang bị,cũng như giúp kích hoạt những thuộc tính ẩn,cấp cường hóa càng cao thuộc tính trang bị càng cao", tbOpt);
end




function tbYanLianDaShi:nhanthoigian()
local nTimeDL = 1800;
local nLevel = me.GetSkillState(1358);
	if nLevel > 1 then
		Dialog:Say("<color=cyan>Thời gian đăng ký của ngươi chưa hết, không thể đăng ký tiếp!<color>");
		return 0;
	end

me.AddSkillState(1358, 10, 1, nTimeDL * Env.GAME_FPS);	---tách trang bị
Dialog:SendBlackBoardMsg(me, string.format("<color=gold>Ngươi đã đăng ký thời gian tách thành công, hãy đợi: <color=red>[" .. (nTimeDL/60) .. "]<color> Phút mới có thể thao tác!<color>"));
end

function tbYanLianDaShi:SelectMoneyType(nMode)
	local pItem1 = me.GetItem(Item.ROOM_PARTNEREQUIP,Item.PARTNEREQUIP_WEAPON, 0);
	local pItem2 = me.GetItem(Item.ROOM_PARTNEREQUIP,Item.PARTNEREQUIP_BODY, 0);
	local pItem3 = me.GetItem(Item.ROOM_PARTNEREQUIP,Item.PARTNEREQUIP_RING, 0);
	local pItem4 = me.GetItem(Item.ROOM_PARTNEREQUIP,Item.PARTNEREQUIP_CUFF, 0);
	local pItem5 = me.GetItem(Item.ROOM_PARTNEREQUIP,Item.PARTNEREQUIP_AMULET, 0);
	if not pItem1 and not pItem2 and not pItem3 and not pItem4 and not pItem5 then
		local szMsg = "Lựa chọn";
		if nMode == Item.ENHANCE_MODE_ENHANCE then
			szMsg = "Bạn muốn nhận bạc?";
		elseif nMode == Item.ENHANCE_MODE_STRENGTHEN then
			szMsg = "Bạn muốn nhận bạc?";
		else
			szMsg = "Bạn muốn nhận bạc?";
		end
		Dialog:Say(szMsg,
			{
				{"Bạc Khóa", me.OpenEnhance, nMode, Item.BIND_MONEY},
				{"Bạc Thường", me.OpenEnhance, nMode, Item.NORMAL_MONEY},
				{"Ta chỉ ghé ngang qua"},
			});
	else
		me.Msg("Ngươi phải tháo trang bị pet xuống trước !");
		return 0;
	end
end

function tbYanLianDaShi:CheckPermission(tbOption)
	if me.IsAccountLock() ~= 0 then
		Dialog:Say("Tài Khoản của bạn đang ở trạng thái khóa bảo vệ,nên không thực hiện thao tác được");
		return;
	end
	Lib:CallBack(tbOption);
end

-- 申请装备剥离
function tbYanLianDaShi:ApplyPeelHighEquip()	
	local szMsg = "<color=yellow>Thời gian Xin tách là <color=cyan>60 phút<color>, nhưng phải đợi đến <color=cyan>phút thứ 30<color> mới tách được!<color>";
	local tbOpt = {
			{"Tôi muốn tách huyền tinh", Item.ApplyPeelHighEquipSure, Item},
			{"Hủy bỏ"}
		};
	Dialog:Say(szMsg, tbOpt);	
end

-- 取消装备剥离
function tbYanLianDaShi:CancelPeelHighEquip()
	local szMsg = "Bạn muốn thực hiện tách huyền tinh?";
	local tbOpt = {
			{"Có", Item.CancelPeelHighEquipSure, Item},
			{"Không"}
		};	
	Dialog:Say(szMsg, tbOpt);	
end
