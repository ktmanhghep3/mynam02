local tbSuKienTet2025 = Npc:GetClass("NPC_TaoQuan2025");

tbSuKienTet2025.On_1 = 1000;
tbSuKienTet2025.Off_1 = 1045;
tbSuKienTet2025.On_2 = 1400;
tbSuKienTet2025.Off_2 = 1445;
tbSuKienTet2025.On_3 = 1800;
tbSuKienTet2025.Off_3 = 1845;
tbSuKienTet2025.On_4 = 2000;
tbSuKienTet2025.Off_4 = 2045;
tbSuKienTet2025.On_5 = 0000;
tbSuKienTet2025.Off_5 = 0045;

tbSuKienTet2025.Time_ChucPhuc = 30;	--Delay thời gian
tbSuKienTet2025.SoLuong_OHanhTrang = 15;
tbSuKienTet2025.Id_CaChepTanNien = {18,1,4018,5};	--Cá Chép Tân Niên
tbSuKienTet2025.SoLuong_CaChepTanNien = 1;
tbSuKienTet2025.Id_PhaoHoa1 = 307;

function tbSuKienTet2025:OnDialog()
local nCurTime = tonumber(os.date("%H%M", GetTime()));
if (nCurTime >= self.On_1 and nCurTime <= self.Off_1) or (nCurTime >= self.On_2 and nCurTime <= self.Off_2) or (nCurTime >= self.On_3 and nCurTime <= self.Off_3) or (nCurTime >= self.On_4 and nCurTime <= self.Off_4) or (nCurTime >= self.On_5 and nCurTime <= self.Off_5) then

local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local szMsg = "<bclr=0,0,200><color=white>Thông tin Sự kiện:\n"..
"<color=yellow>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=yellow>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"
local tbOpt = {};
table.insert(tbOpt,{"<bclr=0,0,200><color=pink>Ta muốn Chúc phúc", self.ChucPhuc, self});


table.insert(tbOpt,{"[Thoát]", self.Cancel, self});
Dialog:Say(szMsg, tbOpt);
return
end
Dialog:Say("<bclr=0,0,200><color=white>Thời gian Chúc phúc:<color=cyan>\n1-10h00-10h45\n2-14h00-14h45\n3-18h00-18h45\n4-20h00-20h45\n5-00h00-00h45")
end


function tbSuKienTet2025:ChucPhuc()

	local nCount = me.GetItemCountInBags(unpack(self.Id_CaChepTanNien))			--Cá Chép Tân Niên
	if nCount < self.SoLuong_CaChepTanNien then
	Dialog:Say("<bclr=0,0,200><color=white>Chúc phúc cần: ["..self.SoLuong_CaChepTanNien.."] Cá Chép Tân Niên<color>")
	return
	end
	
	if me.CountFreeBagCell() < self.SoLuong_OHanhTrang then
	Dialog:Say(string.format("<bclr=0,0,200><color=white>Cần: <color=cyan>%s<color> ô trống trong hành trang<color>", self.SoLuong_OHanhTrang));
	return 0;
	end



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
GeneralProcess:StartProcess("<bclr=0,0,200><color=white>đang Chúc phúc ....", self.Time_ChucPhuc * Env.GAME_FPS, {self.ChucPhuc_2, self}, nil, tbBreakEvent);
end

--Trang trí--
function tbSuKienTet2025:ChucPhuc_2()

	--Phần thưởng--

	me.CastSkill(self.Id_PhaoHoa1, 1, -1, me.GetNpc().nIndex);
	me.AddStackItem(18,1,4018,3,{bForceBind=1,},1);
	
	Task:DelItem(me, self.Id_CaChepTanNien, self.SoLuong_CaChepTanNien);	--Túi Quà: Lì Xì Táo Quân
	local szMsg = "<bclr=0,0,200><color=white>"..me.szName.." chúc mừng Tân Niên 2025 Hồng Phúc Thiên Hạ tại Sự kiện: Chúc Phúc Táo Quân!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
end

