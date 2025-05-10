local tbItem = Item:GetClass("ThanKiemNguLoi_Lv5");

tbItem.SKill_ThanKiemNguLoi_Lv5 = 1781;						--Skill ID
tbItem.Level_ThanKiemNguLoi = 5;							--Cấp Skill
tbItem.nThoiGian = 900;										--Thời gian học(s)
tbItem.GioiHanChungServer_HocSkillNguLoiChanQuyet = 1000;		--GIỚI HẠN CẢ SERVER

tbItem.Item_Delete = {18,1,3910,1};							--ID Item

function tbItem:OnUse()
local SoLan_HocSkill = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_THANKIEMNGULOICHANQUYET);
local szMsg = 
"<color=pink>Thông tin Thần Kiếm Quyết:\n"..
"<color=yellow>- Thần Kiếm Ngự Lôi Chân Quyết: <color=cyan>".. self.Level_ThanKiemNguLoi .."<color>/10<color>\n"..
"<color=yellow>- Thần Kiếm Ngự Lôi Chân Quyết Cả Server đã đạt: <color=cyan>".. SoLan_HocSkill .."<color>/5<color>"

	local tbOpt = {
			
			{"<bclr=0,0,200><color=cyan>Lĩnh ngộ Chân quyết!<color>", self.Delay, self},
			
			{"Ta cần suy nghĩ thêm!"},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbItem:Delay()
local SoLan_HocSkill = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_THANKIEMNGULOICHANQUYET);
local Cap_ThanKiemNguLoi = me.GetSkillLevel(self.SKill_ThanKiemNguLoi_Lv5);


	if Cap_ThanKiemNguLoi >= self.Level_ThanKiemNguLoi then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thần Kiếm Ngự Lôi Chân Quyết đã đạt: <color=cyan>+".. self.Level_ThanKiemNguLoi .." <color>, không thể sử dụng nữa!<color>"));
		return 0;
	end

	--if SoLan_HocSkill >= self.GioiHanChungServer_HocSkillNguLoiChanQuyet then
		--Dialog:Say("<color=red>Thần Kiếm Ngự Lôi Chân Quyết Cả Server đã đạt "..SoLan_HocSkill.."/"..self.GioiHanChungServer_HocSkillNguLoiChanQuyet.."!\nNgươi không thể học nữa!<color>");
		--return 0;
	--end

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
GeneralProcess:StartProcess("<color=yellow>Đang lĩnh ngộ Chân Quyết...", self.nThoiGian * Env.GAME_FPS, {self.kichhoat, self}, nil, tbBreakEvent);
end

function tbItem:kichhoat()
local SoLan_HocSkill = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHAN_THANKIEMNGULOICHANQUYET);
local Time	= os.date("%d-%m-%Y", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_ThanKiemNguLoiChanQuyet.txt";
local TenPhanThuong = "Thần Kiếm Ngự Lôi Chân Quyết +5";

me.AddFightSkill(self.SKill_ThanKiemNguLoi_Lv5,self.Level_ThanKiemNguLoi);
KGblTask.SCSetDbTaskInt(DBTASD_GIOIHAN_THANKIEMNGULOICHANQUYET, (SoLan_HocSkill + 1));
Task:DelItem(me, self.Item_Delete, 1);


KFile.AppendFile(szHistory, ""..me.szName.."\t"..TenPhanThuong.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Người chơi: ["..me.szName.."] đã Lĩnh ngộ <color=green>(Thần Kiếm Ngự Lôi Chân Quyết +".. self.Level_ThanKiemNguLoi ..")<color> thành công!\n<bclr=0,0,200><color=cyan>Tổng số Thần Kiếm Ngự Lôi Chân Quyết cả Server đã có là: ".. (SoLan_HocSkill+1) .."/5.<color>";
me.Msg("Lĩnh ngộ Thần Kiếm Ngự Lôi Chân Quyết <color=green>(+".. self.Level_ThanKiemNguLoi ..")<color> thành công!")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
