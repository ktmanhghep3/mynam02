local tbItem = Item:GetClass("DietTheDiemThienTram_KichHoat");

tbItem.Skill_DietTheDiemThienTram_Lv1 = 1741;						--Skill ID
tbItem.Level_DietTheDiemThienTram = 1;							--Cấp Skill
tbItem.nThoiGian = 900;										--Thời gian học(s)
tbItem.Item_Delete = {18,1,4019,2};							--ID Item

function tbItem:OnUse()
local szMsg = 
"<color=pink>Thông tin Diệt Thế Diễm Thiên Trảm:\n"..
"<color=yellow>- Diệt Thế Diễm Thiên Trảm: <color=cyan>".. self.Level_DietTheDiemThienTram .."<color>/10<color>\n"

	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Lĩnh ngộ Tuyệt Kỹ!<color>", self.Delay, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:Delay()
	local Item_Non = me.GetEquip(Item.EQUIPPOS_HEAD); --Nón
	local Item_Ao = me.GetEquip(Item.EQUIPPOS_BODY);	--Áo
	local Item_YeuDai = me.GetEquip(Item.EQUIPPOS_BELT);	--Yêu đái
	local Item_VuKhi = me.GetEquip(Item.EQUIPPOS_WEAPON);	--Vũ khí
	local Item_Giay = me.GetEquip(Item.EQUIPPOS_FOOT);	--Giày
	local Item_Tay = me.GetEquip(Item.EQUIPPOS_CUFF);	--Tay
	local Item_Phu = me.GetEquip(Item.EQUIPPOS_AMULET);	--Phù
	local Item_Nhan = me.GetEquip(Item.EQUIPPOS_RING);	--Nhẫn
	local Item_Lien = me.GetEquip(Item.EQUIPPOS_NECKLACE);	--Liên
	local Item_Boi = me.GetEquip(Item.EQUIPPOS_PENDANT);	--Bội	
	local Item_Ngua = me.GetEquip(Item.EQUIPPOS_HORSE);	--Ngựa
	local Item_MatNa = me.GetEquip(Item.EQUIPPOS_MASK);	--Mặt Nạ
	local Item_BiKiep = me.GetEquip(Item.EQUIPPOS_BOOK);	--Bí kíp
	local Item_Tran = me.GetEquip(Item.EQUIPPOS_ZHEN);	--Trận
	local Item_An = me.GetEquip(Item.EQUIPPOS_SIGNET);	--Ấn
	local Item_FF = me.GetEquip(Item.EQUIPPOS_MANTLE);	--Phi Phong
	local Item_QuanAn = me.GetEquip(Item.EQUIPPOS_CHOP);	--Quan ấn
	if (Item_Non == nil) and (Item_Ao == nil) and (Item_YeuDai == nil) and (Item_VuKhi == nil) and (Item_Giay == nil) and (Item_Tay == nil) and (Item_Phu == nil) and (Item_Nhan == nil) and (Item_Lien == nil) and (Item_Boi == nil) and (Item_Ngua == nil) and (Item_MatNa == nil) and (Item_BiKiep == nil) and (Item_Tran == nil) and (Item_An == nil) and (Item_FF == nil) and (Item_QuanAn == nil) then
	--phần thưởng--

local tbBreakEvent =
{
Player.ProcessBreakEvent.emEVENT_MOVE,
Player.ProcessBreakEvent.emEVENT_ATTACK,
Player.ProcessBreakEvent.emEVENT_SIT,
Player.ProcessBreakEvent.emEVENT_RIDE,
Player.ProcessBreakEvent.emEVENT_USEITEM,
Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
Player.ProcessBreakEvent.emEVENT_DROPITEM,
Player.ProcessBreakEvent.emEVENT_CHANGEEQUIP,
Player.ProcessBreakEvent.emEVENT_SENDMAIL,
Player.ProcessBreakEvent.emEVENT_TRADE,
Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
Player.ProcessBreakEvent.emEVENT_ATTACKED,
Player.ProcessBreakEvent.emEVENT_DEATH,
Player.ProcessBreakEvent.emEVENT_LOGOUT,
Player.ProcessBreakEvent.emEVENT_REVIVE,
Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
}
GeneralProcess:StartProcess("<bclr=0,0,200><color=white>Đang lĩnh ngộ...", self.nThoiGian * Env.GAME_FPS, {self.kichhoat, self}, nil, tbBreakEvent);
	else
		Dialog:Say("<bclr=0,0,200><color=white>Các loại Trang bị sau phải lấy ra khỏi người mới Lĩnh ngộ được Kỹ Năng Diệt Thế Diễm Thiên Trảm: \n-Nón.\n-Áo.\n-Lưng.\n-Vũ khí.\n-Giày.\n-Tay.\n-Phù.\n-Nhẫn.\n-Liên.\n-Bội.\n-Ngựa.\n-Mặt Nạ.\n-Bí Kiếp.\n-Trận (Tuyệt Kỹ).\n-Ấn.\n-Phi Phong.\n-Quan Ấn.<color>")
		return 0;
	end

end

function tbItem:kichhoat()
me.AddFightSkill(self.Skill_DietTheDiemThienTram_Lv1,self.Level_DietTheDiemThienTram);
Task:DelItem(me, self.Item_Delete, 1);

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã Lĩnh ngộ <color=green>(Diệt Thế Diễm Thiên Trảm +".. self.Level_DietTheDiemThienTram ..")<color> thành công!<color>";
me.Msg("Lĩnh ngộ Diệt Thế Diễm Thiên Trảm <color=green>(+".. self.Level_DietTheDiemThienTram ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
