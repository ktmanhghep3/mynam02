local tbKTST150	= Item:GetClass("KTST150");
tbKTST150.MAX_RECENTPLAYER	= 15;
tbKTST150.tbRemoteList	= {};
SpecialEvent.Topplayer = SpecialEvent.Topplayer ; --Top và Xây Tượng
local Topplayer = SpecialEvent.Topplayer ;
tbKTST150.TG_LenDao = 4015;
tbKTST150.ID_LenDao = 1;

---------Test_Number_1---------
function tbKTST150:OnUse()
DoScript("\\script\\Update_2023\\TheQuanLyServer.lua");

self:Reloading()
local nHardWareId = me.dwHardWareId;
local nSoNgayMoSV = tbKTST150:GetServerOpenDay();
	local nMapId, nPosX, nPosY = me.GetWorldPos();
	local nMapId, nPosX, nPosY = me.GetWorldPos();
	local sms = string.format("<color=yellow>(%d/%d)<color>",nPosX*32,  nPosY*32);
	local sms1 = string.format("<color=green>(%d/%d)<color>",nPosX,  nPosY);
	-- Dialog:Say(sms);

	local szMsg = "<color=red>ID Map<color>: "..nMapId.."-"..GetMapNameFormId(nMapId).."\n<color=red>Tọa Độ<color>: "..sms.."-"..sms1.."";
	local tbOpt = {
	--{"<color=yellow>Bỏ tất cả đạo cụ trong túi",me.ThrowAllItem},
	--{"Kết thúc đối thoại..."},
	};
---------Test_Number_1---------	
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Ta muốn vào Tư Quá Nhai<color>", SpecialEvent.Active_TuQuaNhai.OnDialog,SpecialEvent.Active_TuQuaNhai});
	--table.insert(tbOpt,{"<color=cyan>Đến: Tư Quá Nhai 2<color>", me.NewWorld, 2116,1609, 3117});

	--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Test Boss", self.testmenu_Boss, self});
	--table.insert(tbOpt, {"<bclr=0,0,200><color=white>Đổi vũ khí boss", SpecialEvent.ChangeVuKhiBoss.OnDialog, SpecialEvent.ChangeVuKhiBoss})
	--table.insert(tbOpt,{"<color=yellow>Du Long Giác", self.DuLongGiac_Menu, self});	
	table.insert(tbOpt,{"<color=pink>Save_ToaDo", self.Save_ToaDo, self});
	--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Test RES NPC", SpecialEvent.ItemCsriptGoi_NPCTest.OnDialog,SpecialEvent.ItemCsriptGoi_NPCTest});
	--table.insert(tbOpt,{"<color=yellow>Gọi Boss Du Long Thường", self.GoiBossTest00, self});
	--table.insert(tbOpt,{"<color=yellow>Gọi Boss Du Long Khó", self.GoiBossTest01, self});
	--table.insert(tbOpt,{"<color=cyan>Đến: Thái Hành<color>", me.NewWorld, 86,1832, 3501});
	--table.insert(tbOpt,{"<color=yellow>ThemKyNang", self.ThemKyNang, self});
	--table.insert(tbOpt,{"<color=orange>Vào Trạng Thái Chiến Đấu",me.SetFightState,1});
	--table.insert(tbOpt,{"<color=orange>Hủy Trạng Thái Chiến Đấu",me.SetFightState,0});	


	--table.insert(tbOpt,{"<bclr=0,0,200><color=white>TEST CODE", SpecialEvent.TestCode.OnDialog,SpecialEvent.TestCode});
	--table.insert(tbOpt,{"<color=yellow>ADMIN", self.Full_Admin_Menu, self});
	--table.insert(tbOpt,{"<color=cyan>Đến: MapTest Tọa độ<color>", me.NewWorld, 1538,1727, 3445});
	--table.insert(tbOpt,{"<color=yellow>VÀO MAPS MỚI ĐANG DEV", self.ID_MapMoi, self});	

	table.insert(tbOpt,{"<color=yellow>Test NumBer", self.testmenu, self});
	--table.insert(tbOpt,{"<color=cyan>Đến: Chiến Trường Cổ<color>", me.NewWorld, 30,1646, 4002});
	table.insert(tbOpt,{"<color=red>Đến: Thiên Cơ Các<color>", me.NewWorld, 775,1489,3385});
	--table.insert(tbOpt,{"<color=cyan>Đến: Bồng Lai Đảo<color>", me.NewWorld, 2101,1580, 3173});

	--table.insert(tbOpt,{"<color=pink>Test Skill", self.TestThuSkill, self,});
	--table.insert(tbOpt,{"<color=yellow>Một Số Hàm Quan Trọng", self.SuDungCacHam, self,});
	--table.insert(tbOpt,{"<color=red>Test Map GS", self.Test_MapGS, self});
	--table.insert(tbOpt,{"<color=yellow>ThemNPC1", self.ThemNPC1, self,});
	--table.insert(tbOpt,{"<color=yellow>DEV-RES NPC", self.DEV_NPC, self});
	--table.insert(tbOpt,{"<color=cyan>Quản Lý Người Chơi", self.lsGameMaster, self,});
	--table.insert(tbOpt,{"<color=cyan>Người Chơi Bên Cạnh", self.AroundPlayer, self,});
	--table.insert(tbOpt,{"<color=cyan>Danh Sách Người Chơi", self.QuanLyNguoiChoi, self,});
	--table.insert(tbOpt,{"<color=red>Thông Báo Thế Giới<color>",self.ThongBaoTheGioi,self,});
	--table.insert(tbOpt,{"<color=yellow>Chức năng Nâng Cao<color>", self.NangCao, self,});
	table.insert(tbOpt,{"<bclr=0,0,200><color=white>Gọi Sự kiện-Giải Đấu-TK<color>", self.GoiSuKien_GiaiDau, self,});
	--table.insert(tbOpt,{"<color=green>Tiện ích Admin khác<color>", self.TienIch_1, self,});
	--table.insert(tbOpt,{"<color=pink>Reload Csript", self.Reloading, self});
	table.insert(tbOpt,{"<color=red>Tiêu hủy đạo cụ", self.DatVaoVPTieuHuy, self,});
	table.insert(tbOpt,{"<color=red>Bỏ tất cả đạo cụ trong túi",me.ThrowAllItem});

	--table.insert(tbOpt,{"<color=green>AddItem", self.AddItem_Test, self});
	--table.insert(tbOpt,{"<color=gold>ResetTask", self.ResetTask, self});
	--table.insert(tbOpt,{"<color=gold>ViewTask", self.ViewTask, self});
	
	
	
	
	Dialog:Say(szMsg, tbOpt);
end;


---------Test_Number_1---------	
----------------------------Reload_Csript----------------------------
function tbKTST150:Reloading()
	DoScript("\\script\\npc\\liguan.lua");
	DoScript("\\script\\npc\\tuiguangyuan.lua");
	DoScript("\\script\\event\\minievent\\newplayergift.lua");
	DoScript("\\script\\Update2025\\GM_Code\\TestCode.lua");
	DoScript("\\script\\Update2025\\GM_Code\\view_skill_effect.lua");
	DoScript("\\script\\item\\class\\chuansongfu.lua");
	DoScript("\\script\\npc\\basesetting.lua");
--Event Mới--


--Du Long Giác -- DLG

	--DoScript("\\script\\ChucNang\\LamNguyetCocPK\\LamNguyetCocPK_Boss.lua");
	--DoScript("\\script\\Update2025\\Spec_Code\\HuyDongQuy.lua");
	--DoScript("\\script\\ChucNang\\LamNguyetCocPK\\LamNguyetCocPK_GS.lua");
	--DoScript("\\script\\Update2025\\Spec_Code\\NguLoi_KhongGioiHan_Add1.lua");
	--DoScript("\\script\\Update2025\\Spec_Code\\DietThe_KhongGioiHan_Add1.lua");
	
	--DoScript("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\define.lua");
	--DoScript("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\Map.lua");
	
	--DoScript("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\TuQuaNhai_def.lua");
	--DoScript("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\TuQuaNhai_gs.lua");
	--DoScript("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\TuQuaNhai.lua");
	--DoScript("\\script\\Update2025\\DuLongGiac\\TuQuaNhai\\map\\TuQuaNhai.lua");


--me.Msg(string.format("Đã reload xong!"));
end

function tbKTST150:Test_MapGS()

	local szMsg = "";
	local tbOpt = {
	{"<color=yellow>GS 1<color>", me.NewWorld, 23,1486, 3179};
	{"<color=yellow>GS 2<color>", me.NewWorld, 6,1572, 3106};
	{"<color=yellow>GS 3<color>", me.NewWorld, 28,1439, 3366};
	{"<color=yellow>GS 4<color>", me.NewWorld, 26,1641, 3129};
	
	}
	Dialog:Say(szMsg,tbOpt);
end
function tbKTST150:GoiSuKien_GiaiDau()
	local szMsg = "";
	local tbOpt = {
		{"<color=yellow>Chiến trường Tống Kim", self.chtrgtongkim, self};
		{"<color=yellow>Võ Lâm Luận Kiếm" , SpecialEvent.DauTruongNew.GM_Option, SpecialEvent.DauTruongNew},		
		{"<bclr=0,0,200><color=cyan>Công Thành Chiến",  self.GMOption, self},
	
		{"<bclr=0,0,200><color=white>Lam Nguyệt Cốc" , SpecialEvent.LamNguyetCocPK.GM_Option, SpecialEvent.LamNguyetCocPK},	
		{"<color=yellow>Hoành Thành" , SpecialEvent.HoanhThanhPK.GM_Option, SpecialEvent.HoanhThanhPK},	
	}
	Dialog:Say(szMsg,tbOpt);
end
function tbKTST150:chtrgtongkim()
	Battle:GM();
end
function tbKTST150:GMOption()
		local tbNpc = Npc:GetClass("ctcchefu");
		local tbOpt = {
			{"1-Bắt đầu báo danh CTC",self.Register_GS,self},
			{"Xa phu",tbNpc.OnDialog,tbNpc},
			{"2-Bắt đầu hoạt động CTC",self.StartGame_GS,self},
			{"3-Kết thúc hoạt động CTC",self.EndGame_GS,self},
			
			
		};
	Dialog:Say("Hỗ trợ GM hoạt động Công thành",tbOpt);
end
function tbKTST150:testmenu()
	local szMsg = "Xin hãy chọn:";
	local tbOpt = 
	{
 --{"<color=red>ResetMoney", self.ResetMoney, self},
 {"<color=yellow>Test Number 1", self.TestItemGames1, self},
 {"<color=yellow>Test Number 2", self.TestItemGames2, self},
 {"<color=yellow>Test Number 3", self.TestItemGames3, self},
 {"<color=yellow>Test Number 4", self.TestItemGames4, self},
 {"<color=yellow>Test Number 5", self.TestItemGames5, self},
 {"<color=yellow>Test Number 6", self.TestItemGames6, self},
 {"<color=yellow>Test Number 7", self.TestItemGames7, self},
 {"<color=yellow>Test Number 8", self.TestItemGames8, self},
 {"<color=yellow>Test Number 9", self.TestItemGames9, self},
 {"<color=yellow>Test Number 10", self.TestItemGames10, self},
 {"<color=yellow>Test Number 11", self.TestItemGames11, self},
 {"<color=yellow>Test Number 12", self.TestItemGames12, self},
 {"<color=yellow>NewAccount", self.NewAccount, self},
};
Dialog:Say(szMsg, tbOpt);
end
function tbKTST150:TienIch_1()
	local szMsg = "";
	local tbOpt = {
		{"<color=orange>Vào Trạng Thái Chiến Đấu",me.SetFightState,1};
		{"<color=orange>Hủy Trạng Thái Chiến Đấu",me.SetFightState,0};	
		{"<color=orange>Cường Hóa +16",self.nCuongHoa,self};
		{"<color=red>Tiêu hủy đạo cụ",  self.DatVaoVPTieuHuy,self},
	}
	Dialog:Say(szMsg,tbOpt);
end
function tbKTST150:DatVaoVPTieuHuy()
Dialog:OpenGift("Hãy đặt vào", nil ,{self.OnOpenGMCardOkTieuHuyItem, self});
end
function tbKTST150:OnOpenGMCardOkTieuHuyItem(tbItemObj)
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
	end
end
function tbKTST150:nCuongHoa()
	local szMsg = "Đặt vào Item Cần Cường Hóa";
	Dialog:OpenGift(szMsg, nil, {self.CuongHoa, self, 1});
end
function tbKTST150:nCuongHoa()
	local szMsg = "Đặt vào Item Cần Cường Hóa";
	Dialog:OpenGift(szMsg, nil, {self.CuongHoa, self, 1});
end
function tbKTST150:CuongHoa(nValue, tbItemObj)
	local tbItemInfo = {bForceBind=1,};
	local tbItemList	= {};
	for _, pItem in pairs(tbItemObj) do
		me.AddItem(pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel,nil,16);
	end
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
	end
end
function tbKTST150:GetServerOpenDay()
	local nSec = tonumber(KGblTask.SCGetDbTaskInt(DBTASD_SERVER_STARTTIME));
	if nSec == 0 then
		return 1;
	end
	local nCurDay = Lib:GetLocalDay();
	local nOpenDay = Lib:GetLocalDay(nSec);
	local nDay =  (nCurDay - nOpenDay) + 1;
	return nDay;
end


function tbKTST150:NangCao()
	local szMsg = "";
	local tbOpt = {
		{"<color=yellow>Tiềm Năng & Kỹ Năng<color>",self.lsTiemNangKyNang,self};
		{"<color=yellow>Tốc chạy-đánh-skill bất tử<color>",self.lsTangToc,self};
		{"Ta Chỉ Xem Qua Thôi..."},
	};
	Dialog:Say(szMsg, tbOpt);
end
function tbKTST150:lsTangToc()
	me.AddFightSkill(163,20);	-- 60级梯云纵
	me.AddFightSkill(91,20);
	me.AddFightSkill(132,20);
	me.AddFightSkill(177,20);
	me.AddFightSkill(209,20);
	me.AddFightSkill(68,40); --Đường môn - Tâm ma
	me.AddFightSkill(75,40); --Đường môn - Tâm phách
	me.AddFightSkill(183,40); --Côn lôn - Thiên thanh địa trọc
	me.AddFightSkill(193,40); --Côn lôn - Ngũ lôi chánh pháp
	me.AddFightSkill(204,40); --Minh giáo - Trấn ngục phá thiên kình
	me.AddFightSkill(212,40); --Minh giáo - Ly hỏa đại pháp


end


function tbKTST150:lsTiemNangKyNang()
	local szMsg = "";
	local tbOpt = { 		
		{"Luyện Max Skill Kỹ Năng Môn Phái",self.MaxSkillMonPhai,self};
		{"Nhận 1000 Tiềm Năng",self.DiemTiemNang,self};
		{"Xóa 1000 Tiềm Năng",self.XoaDiemTiemNang,self};
		{"Nhận 20 Điểm Kỹ Năng",self.DiemKyNang,self};
		{"Luyện Max Skill Mật Tịch Trung",self.lsMatTichTrung,self};
		{"Luyện Max Skill Mật Tịch Cao",self.lsMatTichCao,self};
		{"Võ Lâm Mật Tịch - Tẩy Tủy - Bánh Tiềm Năng - Kỹ Năng",self.VoLamTayTuy,self};
		{"Reset Skill",self.Resetskill,self},
		{"Ta Chỉ Xem Qua Thôi..."},
	};
	Dialog:Say(szMsg, tbOpt);
end

function tbKTST150:SuDungCacHam()
local szMsg = "Chào mừng <color=cyan>"..me.szName.."<color> đến với <color=wheat>Kiếm Thế Mảnh Ghép<color>. Xin mời lựa chọn:"
local tbOpt = {
    {"Xóa Task", self.XoaTaskCanThiet, self};
    {"Thêm Danh Hiệu", self.ThemDanhHieu, self};
	{"Thêm NPC", self.ThemNPC1, self};
	{"Xóa NPC", self.XoaNPC1, self};
	{"Thêm Vật Phẩm", self.ThemItem, self};
	{"Thêm Trang Bị", self.ThemTrangBi, self};
	{"Thử Kỹ Năng", self.TestThuSkill, self};
	{"Thêm Kỹ Năng", self.ThemKyNang, self};
	{"Xóa Kỹ Năng", self.XoaKyNang, self};
	{"Thử Nghiệm Pic", self.TestPic, self};
	{"Ta chỉ xem qua thôi..."},

		};
		Dialog:Say(szMsg,tbOpt);
end


--Phần 1--
function tbKTST150:lsGameMaster()
	local nIsHide	= GM.tbGMRole:IsHide();
	local tbOpt = {
		{(nIsHide == 1 and "<color=yellow>Hủy Ẩn Thân<color>") or "<color=yellow>Bắt Đầu Ẩn Thân<color>", "GM.tbGMRole:SetHide", 1 - nIsHide},
		{"Nhập Tên Nhân Vật", self.AskRoleName, self},
		{"Thao Tác Gần Đây", self.RecentPlayer, self},
		{"Xếp Hạng Danh Vọng",self.XepHangDanhVong,self};
		--{"Danh Sách Người Chơi", self.QuanLyNguoiChoi, self},
		--{"Người Chơi Bên Cạnh", self.AroundPlayer, self},
		{"Kết thúc đối thoại"},
	};
	local tbRecentPlayerList	= me.GetTempTable("GM").tbRecentPlayerList or {};
	for nIndex, nPlayerId in ipairs(tbRecentPlayerList) do
		local tbInfo	= self.tbRemoteList[nPlayerId];
		if (tbInfo) then
			tbOpt[#tbOpt+1]	= {"<color=green>"..tbInfo[1], self.SelectPlayer, self, nPlayerId, tbInfo[1]};
		end
	end
	Dialog:Say("", tbOpt);
	self.tbRemoteList	= {};
	GlobalExcute({"GM.tbPlayer:RemoteList_Fetch", me.nId})
	DoScript("\\script\\misc\\gm_player.lua");
	return 0;
end;
function tbKTST150:AskRoleName()
	Dialog:AskString("Tên nhân vật", 16, self.OnInputRoleName, self);
end

function tbKTST150:OnInputRoleName(szRoleName)
	local nPlayerId	= KGCPlayer.GetPlayerIdByName(szRoleName);
	if (not nPlayerId) then
		Dialog:Say("Tên này không tồn tại!", {"Nhập lại", self.AskRoleName, self}, {"Kết thúc đối thoại"});
		return;
	end
	self:ViewPlayer(nPlayerId);
end
function tbKTST150:AroundPlayer()
	local tbPlayer	= {};
	local _, nMyMapX, nMyMapY	= me.GetWorldPos();
	for _, pPlayer in ipairs(KPlayer.GetAroundPlayerList(me.nId, 50)) do
		if (pPlayer.szName ~= me.szName) then
			local _, nMapX, nMapY	= pPlayer.GetWorldPos();
			local nDistance	= (nMapX - nMyMapX) ^ 2 + (nMapY - nMyMapY) ^ 2;
			tbPlayer[#tbPlayer+1]	= {nDistance, pPlayer};
		end
	end
	local function fnLess(tb1, tb2)
		return tb1[1] < tb2[1];
	end
	table.sort(tbPlayer, fnLess);
	local tbOpt	= {};
	for _, tb in ipairs(tbPlayer) do
		local pPlayer	= tb[2];
		tbOpt[#tbOpt+1]	= {pPlayer.szName, self.ViewPlayer, self, pPlayer.nId};
		if (#tbOpt >= 8) then
			break;
		end
	end
	tbOpt[#tbOpt + 1]	= {"Kết thúc đối thoại"};
	
	Dialog:Say("Người chơi cần chọn: ", tbOpt);
end
function tbKTST150:RecentPlayer()
	local tbOpt	= {};
	for nIndex, nPlayerId in ipairs(self.tbRecentPlayerList or {}) do
		local szName	= KGCPlayer.GetPlayerName(nPlayerId);
		local nState	= KGCPlayer.OptGetTask(nPlayerId, KGCPlayer.TSK_ONLINESERVER);
		tbOpt[#tbOpt+1]	= {((nState > 0 and "<color=green>") or "")..szName, self.ViewPlayer, self, nPlayerId};
	end
	tbOpt[#tbOpt + 1]	= {"Kết thúc đối thoại"};
	
	Dialog:Say("Người chơi cần chọn: ", tbOpt);
end
function tbKTST150:XepHangDanhVong()
    GCExcute({"PlayerHonor:UpdateWuLinHonorLadder"}); --Võ Lâm
    GCExcute({"PlayerHonor:UpdateMoneyHonorLadder"}); --Tài Phú
    GCExcute({"PlayerHonor:UpdateLeaderHonorLadder"}); --Thủ Lĩnh
    GCExcute({"PlayerHonor:UpdateSpringHonorLadder"}); 
    GCExcute({"PlayerHonor:UpdateXoyoLadder"});  --tiêu dao
	GCExcute({"PlayerHonor:UpdateLevelHonorLadder"}); --Level
    GCExcute({"PlayerHonor:OnSchemeLoadFactionHonorLadder"});  --môn phái
    GCExcute({"PlayerHonor:OnSchemeUpdateSongJinBattleHonorLadder"});  --
    GCExcute({"PlayerHonor:OnSchemeUpdateDragonBoatHonorLadder"}); 
    GCExcute({"PlayerHonor:OnSchemeUpdateWeiwangHonorLadder"}); 
    GCExcute({"PlayerHonor:OnSchemeUpdatePrettygirlHonorLadder"}); 
    GCExcute({"PlayerHonor:OnSchemeUpdateKaimenTaskHonorLadder"}); 
    KGblTask.SCSetDbTaskInt(86, GetTime()); 
    GlobalExcute({"PlayerHonor:OnLadderSorted"});
	GlobalExcute({"Dialog:GlobalNewsMsg_GS", "Hệ thống Danh vọng: Tài phú - Võ lâm - Thủ lĩnh đã được Xếp hạng mới!"});
end
function tbKTST150:QuanLyNguoiChoi()
	GM.tbPlayer:Main();
end
function tbKTST150:XoaTaskCanThiet()
Dialog:AskNumber("Nhập ID Task",9999,self.TaskCanXoa_1,self, nTaskXoa);
end
function tbKTST150:TaskCanXoa_1(nTaskXoa)
local nCount = me.GetTask(nTaskXoa, 1);
local Msg = "Hiện tại task <color=green>"..nTaskXoa.."<color> đang là <color=cyan>"..nCount.."<color>"
local tbOpt = {
    {"Xóa Hết", self.TaskCanXoa_2, self,nTaskXoa};
	};
	Dialog:Say(Msg,tbOpt);
end
function tbKTST150:TaskCanXoa_2(nTaskXoa)
local nCount = me.GetTask(nTaskXoa, 1);
me.SetTask(nTaskXoa, 1, 0*nCount);
end
function tbKTST150:ThemDanhHieu()
Dialog:AskNumber("Nhập Genre",999,self.DanhHieu_1,self, nGenreDH);
end
function tbKTST150:DanhHieu_1(nGenreDH)
Dialog:AskNumber("Nhập DetailType",999,self.DanhHieu_2 ,self, nGenreDH, nDetaiDH);
end
function tbKTST150:DanhHieu_2(nGenreDH, nDetaiDH)
Dialog:AskNumber("Nhập Id",999,self.DanhHieu_3 ,self, nGenreDH, nDetaiDH,nIdDH);
end
function tbKTST150:DanhHieu_3(nGenreDH, nDetaiDH,nIdDH)
Dialog:AskNumber("Nhập Rank",999,self.DanhHieu_4 ,self, nGenreDH, nDetaiDH,nIdDH,nRankDH);
end
function tbKTST150:DanhHieu_4(nGenreDH, nDetaiDH,nIdDH,nRankDH)
me.AddTitle(nGenreDH, nDetaiDH,nIdDH,nRankDH);
end
function tbKTST150:ThemNPC1()
	Dialog:AskNumber("Nhập ID NPC",300000,self.SoIDNPC,self, nSoIDNPC);
end
function tbKTST150:SoIDNPC(nSoIDNPC)
Dialog:AskNumber("Nhập Level NPC",255,self.KetQuaGoiNPC ,self, nSoIDNPC, nSoLevelNPC);
end
function tbKTST150:KetQuaGoiNPC(nSoIDNPC, nSoLevelNPC)
local nMapId, nPosX, nPosY = me.GetWorldPos();
local pNpc = KNpc.Add2(nSoIDNPC, nSoLevelNPC, 0, nMapId, nPosX, nPosY)
-- KNpc.Add2(szIDNPC, 255, 0, nMapId, nPosX, nPosY)
me.Msg("<color=yellow>Đã gọi <color=Turquoise>"..pNpc.szName.."<color> (Cấp "..nSoLevelNPC..") tại <color=Turquoise>"..GetMapNameFormId(nMapId).."<color> tọa độ <color=Turquoise>"..math.floor(nPosX/8).."/"..math.floor(nPosY/16).."<color>")
end
function tbKTST150:XoaNPC1()
	Dialog:AskNumber("ID Map",9999,self.So2111,self, nSo15);
end
function tbKTST150:So2111(nSo15)
Dialog:AskString("Nhập Tên",300000,self.KetQua123456 ,self, nSo15, tenboss);
end
function tbKTST150:KetQua123456(nSo15,tenboss)
local nMapId, nPosX, nPosY = me.GetWorldPos();
ClearMapNpcWithName(nSo15, ""..tenboss.."");
me.Msg("<color=yellow>Đã xóa <color=Turquoise>"..tenboss.."<color> tại <color=Turquoise>"..GetMapNameFormId(nMapId).."<color> (Số "..nSo15..")<color>") 
end
function tbKTST150:ThemItem()
Dialog:AskNumber("Nhập Genre",300000,self.So1,self, nSo1);
-- me.AddTitle(13,1,1,9)
end
function tbKTST150:So1(nSo1)
Dialog:AskNumber("Nhập DetailType",300000,self.So2 ,self, nSo1, nSo2);
end
function tbKTST150:So2(nSo1,nSo2)
Dialog:AskNumber("Nhập ParticularType",300000,self.So3 ,self, nSo1, nSo2,nSo3);
end
function tbKTST150:So3(nSo1,nSo2,nSo3)
Dialog:AskNumber("Nhập Level",300000,self.So4 ,self, nSo1, nSo2,nSo3,nSo4);
end
function tbKTST150:So4(nSo1,nSo2,nSo3,nSo4)
Dialog:AskNumber("Nhập Số Lượng",100000,self.KetQua ,self, nSo1, nSo2,nSo3,nSo4,nSo5);
end
function tbKTST150:KetQua(nSo1, nSo2,nSo3,nSo4,nSo5)
me.AddStackItem(nSo1, nSo2,nSo3,nSo4,nil,nSo5);
end
function tbKTST150:ThemTrangBi()
Dialog:AskNumber("Nhập Genre",300000,self.So11,self, nSo1);
end
function tbKTST150:So11(nSo11)
Dialog:AskNumber("Nhập DetailType",300000,self.So22 ,self, nSo11, nSo22);
end
function tbKTST150:So22(nSo11,nSo22)
Dialog:AskNumber("Nhập ParticularType",300000,self.So33 ,self, nSo11, nSo22,nSo33);
end
function tbKTST150:So33(nSo11,nSo22,nSo33)
Dialog:AskNumber("Nhập Level",10,self.So44 ,self, nSo11, nSo22,nSo33,nSo44);
end
function tbKTST150:So44(nSo11,nSo22,nSo33,nSo44)
Dialog:AskNumber("Nhập Series",16,self.So55 ,self, nSo11, nSo22,nSo33,nSo44,nSo55);
end
function tbKTST150:So55(nSo11,nSo22,nSo33,nSo44,nSo55)
Dialog:AskNumber("Cấp Cường Hóa",16,self.KetQua11 ,self, nSo11, nSo22,nSo33,nSo44,nSo55,nSo66);
end
function tbKTST150:KetQua11(nSo11, nSo22,nSo33,nSo44,nSo55,nSo66)
local pItem = me.AddItem(nSo11, nSo22,nSo33,nSo44,nSo5,nSo66);
		
		me.Msg("Add thành công "..pItem.szName.." cường hóa cấp "..nSo66.."");
end
function tbKTST150:TestThuSkill()
Dialog:AskNumber("ID Skill", 9999, self.TestSkill12, self);
end
function tbKTST150:TestSkill12(szIDSkill)
me.CastSkill(szIDSkill, 1, -1, me.GetNpc().nIndex);
end
function tbKTST150:ThemKyNang(nFlag,nSkill,nSkillLevel)
	if not nFlag then
		Dialog:AskNumber("Nhập Skill ID",30000, self.ThemKyNang,self,1);
	elseif nFlag ==1 then
		Dialog:AskNumber("Nhập Skill Level",30000, self.ThemKyNang,self,2,nSkill);
	else
	me.AddFightSkill(nSkill,nSkillLevel);	
	end
end
function tbKTST150:XoaKyNang()
Dialog:AskNumber("ID Skill", 9999, self.XoaKyNang1, self);
me.DelFightSkill(332);
end
function tbKTST150:XoaKyNang1(nIDSkill12)
		me.DelFightSkill(nIDSkill12);
end
function tbKTST150:TestPic()
Dialog:AskNumber("Nhập Số", 999, self.TestAnhNC, self);
end
function tbKTST150:TestAnhNC(szIDPic)
Dialog:Say("\n       <pic="..szIDPic..">")
end
function tbKTST150:ThongBaoTheGioi()
	Dialog:AskString("<color=yellow>Thông Báo      <color>", 1000, self.ThongBao555, self);
 end
function tbKTST150:ThongBao555(msg)
    GlobalExcute({"Dialog:GlobalNewsMsg_GS","<color=red>-----[GM Thông Báo]:<color> <color=cyan> "..msg.."<color>"});
	KDialog.NewsMsg(1, Env.NEWSMSG_COUNT,"<color=red>-----[GM Thông Báo]:<color> <color=cyan> "..msg.."<color>");
	KDialog.MsgToGlobal("<color=red>-----[GM Thông Báo]:<color> <color=cyan> "..msg.."<color>");	
end 
function tbKTST150:MaxSkillMonPhai() 
    if me.nFaction > 0 then 
        if me.nFaction == 1 then    --Skill Thiếu Lâm 
            --Skill Đao Thiếu 
            me.AddFightSkill(21,20);    --Phục Ma Đao Pháp 
            me.AddFightSkill(22,20);    --Thiếu Lâm Đao Pháp 
            me.AddFightSkill(23,20);    --Dịch Cốt Kinh 
            me.AddFightSkill(25,20);    --A La Hán Thần Công 
            me.AddFightSkill(24,20);    --Phá Giới Đao Pháp 
            me.AddFightSkill(250,20);    --Hàng Long Phục Hổ 
            me.AddFightSkill(26,20);    --Bồ Đề Tâm Pháp 
            me.AddFightSkill(28,20);    --Hỗn Nguyên Nhất Khí 
            me.AddFightSkill(27,20);    --Thiên Trúc Tuyệt Đao 
            me.AddFightSkill(252,20);    --Như Lai Thiên Diệp 
            me.AddFightSkill(819,20);    --Thiền Nguyên Công 
            --me.AddFightSkill(820,20);    --Kỹ năng cấp 120 
            --Skill Côn Thiếu 
            me.AddFightSkill(29,20);    --Phổ Độ Côn Pháp 
            me.AddFightSkill(30,20);    --Thiếu Lâm Côn Pháp 
            me.AddFightSkill(31,20);    --Sư Tử Hống 
            me.AddFightSkill(25,20);    --A La Hán Thần Công 
            me.AddFightSkill(33,20);    --Phục Ma Côn Pháp 
            me.AddFightSkill(34,20);    --Bất Động Minh Vương 
            me.AddFightSkill(254,20);    --Dịch Cốt Kinh 
            me.AddFightSkill(37,20);    --Đạt Ma Vũ Kinh 
            me.AddFightSkill(36,20);    --Thất Tinh La Sát Côn 
            me.AddFightSkill(255,20);    --Vô Tướng Thần Công 
            me.AddFightSkill(821,20);    --Túy Bát Tiên Côn 
            --me.AddFightSkill(822,20);    --Kỹ năng cấp 120 
        elseif me.nFaction == 2 then    --Skill Thiên Vương 
            --Thương Thiên 
            me.AddFightSkill(38,20);    --Hồi Phong Lạc Nhạn 
            me.AddFightSkill(40,20);    --Thiên Vương Thương Pháp 
            me.AddFightSkill(41,20);    --Đoạn Hồn Thích     
            me.AddFightSkill(45,20);    --Tĩnh Tâm Quyết 
            me.AddFightSkill(43,20);    --Dương Quan Tam Điệp 
            me.AddFightSkill(256,20);    --Kinh Lôi Phá Thiên 
            me.AddFightSkill(46,20);    --Thiên Vương Chiến Ý     
            me.AddFightSkill(49,20);    --Thiên Canh Chiến Khí     
            me.AddFightSkill(47,20);    --Truy Tinh Trục Nguyệt 
            me.AddFightSkill(259,20);    --Huyết Chiến Bát Phương     
            me.AddFightSkill(823,20);    --Bôn Lôi Toàn Long Thương     
            --me.AddFightSkill(824,20);    --Kỹ năng cấp 120
            --Chùy Thiên 
            me.AddFightSkill(50,20);    --Hành Vân Quyết 
            me.AddFightSkill(52,20);    --Thiên Vương Chùy Pháp 
            me.AddFightSkill(41,20);    --Đoạn Hồn Thích 
            me.AddFightSkill(781,20);    --Tĩnh Tâm Thuật 
            me.AddFightSkill(53,20);    --Truy Phong Quyết 
            me.AddFightSkill(260,20);    --Thiên Vương Bản Sinh 
            me.AddFightSkill(55,20);    --Kim Chung Tráo 
            me.AddFightSkill(58,20);    --Đảo Hư Thiên 
            me.AddFightSkill(56,20);    --Thừa Long Quyết 
            me.AddFightSkill(262,20);    --Bất Diệt Sát Ý 
            me.AddFightSkill(825,20);    --Trảm Long Quyết 
            --me.AddFightSkill(826,20);    --Kỹ năng cấp 120
        elseif me.nFaction == 3 then    --Đường Môn 
            --Hãm Tĩnh 
            me.AddFightSkill(69,20);    --Độc Thích Cốt 
            me.AddFightSkill(70,20);    --Đường Môn Hãm Tĩnh 
            me.AddFightSkill(64,20);    --Mê Ảnh Tung     
            me.AddFightSkill(71,20);    --Câu Hồn Tĩnh 
            me.AddFightSkill(72,20);    --Tiểu Lý Phi Đao 
            me.AddFightSkill(263,20);    --Hấp Tinh Trận 
            me.AddFightSkill(73,20);    --Triền Thân Thích     
            me.AddFightSkill(75,20);    --Tâm Phách     
            me.AddFightSkill(74,20);    --Loạn Hoàn Kích 
            me.AddFightSkill(265,20);    --Thực Cốt Huyết Nhẫn     
            me.AddFightSkill(827,20);    --Cơ Quan Bí Thuật     
            --me.AddFightSkill(828,20);    --Kỹ năng cấp 120     
            --Tụ Tiễn 
            me.AddFightSkill(59,20);    --Truy Tâm Tiễn 
            me.AddFightSkill(60,20);    --Đường Môn Tụ Tiễn 
            me.AddFightSkill(64,20);    --Mê Ảnh Tung     
            me.AddFightSkill(61,20);    --Tôi Độc Thuật 
            me.AddFightSkill(62,20);    --Thiên La Địa Võng 
            me.AddFightSkill(266,20);    --Đoạn Cân Nhẫn 
            me.AddFightSkill(65,20);    --Ngự Độc Thuật     
            me.AddFightSkill(68,20);    --Tâm Ma     
            me.AddFightSkill(66,20);    --Bạo Vũ Lê Hoa 
            me.AddFightSkill(268,20);    --Tâm Nhãn     
            me.AddFightSkill(829,20);    --Thất Tuyệt Sát Quang     
            --me.AddFightSkill(830,20);    --Kỹ năng cấp 120
        elseif me.nFaction == 4 then    --Ngũ Độc 
            --Đao Độc 
            me.AddFightSkill(76 ,20);  -- Huyết Đao Độc Sát 
            me.AddFightSkill(77 ,20);  -- Ngũ Độc Đao Pháp 
            me.AddFightSkill(78 ,20);  -- Vô Hình Cổ 
            me.AddFightSkill(81 ,20);  -- Thí Độc Thuật 
            me.AddFightSkill(80 ,20);  -- Bách Độc Xuyên Tâm 
            me.AddFightSkill(269 ,20);  -- Ôn Cổ Chi Khí 
            me.AddFightSkill(82 ,20);  -- Vạn Cổ Thực Tâm 
            me.AddFightSkill(85 ,20);  -- Ngũ Độc Kỳ Kinh 
            me.AddFightSkill(83 ,20);  -- Huyền Âm Trảm 
            me.AddFightSkill(271 ,20);  -- Thiên Thù Vạn Độc 
            me.AddFightSkill(831 ,20);  -- Chu Cáp Thanh Minh 
            --me.AddFightSkill(832 ,20);  -- Kỹ năng cấp 120 
            --Chưởng Độc 
            me.AddFightSkill(86 ,20);  -- Độc Sa Chưởng 
            me.AddFightSkill(87 ,20);  -- Ngũ Độc Chưởng Pháp 
            me.AddFightSkill(92 ,20);  -- Xuyên Tâm Độc Thích 
            me.AddFightSkill(91 ,20);  -- Ngân Ti Phi Thù 
            me.AddFightSkill(90 ,20);  -- Thiên Canh Địa Sát 
            me.AddFightSkill(272 ,20);  -- Khu Độc Thuật 
            me.AddFightSkill(88 ,20);  -- Bi Ma Huyết Quang 
            me.AddFightSkill(95 ,20);  -- Bách Cổ Độc Kinh 
            me.AddFightSkill(93 ,20);  -- Âm Phong Thực Cốt 
            me.AddFightSkill(274 ,20);  -- Đoạn Cân Hủ Cốt 
            me.AddFightSkill(833 ,20);  -- Hóa Cốt Miên Chưởng 
            --me.AddFightSkill(834 ,20);  -- Kỹ năng cấp 120
        elseif me.nFaction == 5 then    --Nga My 
            --Chưởng Nga 
            me.AddFightSkill(96 ,20);  -- Phiêu Tuyết Xuyên Vân 
            me.AddFightSkill(97 ,20);  -- Nga My Chưởng Pháp 
            me.AddFightSkill(98 ,20);  -- Từ Hàng Phổ Độ 
            me.AddFightSkill(101 ,20);  -- Phật Tâm Từ Hựu 
            me.AddFightSkill(99 ,20);  -- Tứ Tượng Đồng Quy 
            me.AddFightSkill(479 ,20);  -- Bất Diệt Bất Tuyệt 
            me.AddFightSkill(782 ,20);  -- Lưu Thủy Tâm Pháp 
            me.AddFightSkill(105 ,20);  -- Phật Pháp Vô Biên 
            me.AddFightSkill(103 ,20);  -- Phong Sương Toái Ảnh 
            me.AddFightSkill(280 ,20);  -- Vạn Phật Quy Tông 
            me.AddFightSkill(835 ,20);  -- Phật Quang Chiến Khí 
            --me.AddFightSkill(836 ,20);  -- Kỹ năng cấp 120
            --Phụ Trợ 
            me.AddFightSkill(107 ,20);  -- Phật Âm Chiến Ý 
            me.AddFightSkill(106 ,20);  -- Mộng Điệp 
            me.AddFightSkill(98 ,20);  -- Từ Hàng Phổ Độ 
            me.AddFightSkill(101 ,20);  -- Phật Tâm Từ Hựu 
            me.AddFightSkill(109 ,20);  -- Thiên Phật Thiên Diệp 
            me.AddFightSkill(110 ,20);  -- Phật Quang Phổ Chiếu 
            me.AddFightSkill(102 ,20);  -- Lưu Thủy Quyết 
            me.AddFightSkill(481 ,20);  -- Ba La Tâm Kinh 
            me.AddFightSkill(108 ,20);  -- Thanh Âm Phạn Xướng 
            me.AddFightSkill(482 ,20);  -- Phổ Độ Chúng Sinh 
            me.AddFightSkill(837 ,20);  -- Kiếm Ảnh Phật Quang 
           --me.AddFightSkill(838 ,20);  -- Kỹ năng cấp 120
        elseif me.nFaction == 6 then    --Thúy Yên 
            --Kiếm Thúy 
            me.AddFightSkill(111 ,20);  -- Phong Quyển Tàn Tuyết 
            me.AddFightSkill(112 ,20);  -- Thúy Yên Kiếm Pháp 
            me.AddFightSkill(113 ,20);  -- Hộ Thể Hàn Băng 
            me.AddFightSkill(115 ,20);  -- Tuyết Ảnh 
            me.AddFightSkill(114 ,20);  -- Bích Hải Triều Sinh 
            me.AddFightSkill(483 ,20);  -- Huyền Băng Vô Tức 
            me.AddFightSkill(116 ,20);  -- Tuyết Ánh Hồng Trần 
            me.AddFightSkill(119 ,20);  -- Băng Cốt Tuyết Tâm 
            me.AddFightSkill(117 ,20);  -- Băng Tâm Tiên Tử 
            me.AddFightSkill(485 ,20);  -- Phù Vân Tán Tuyết 
            me.AddFightSkill(839 ,20);  -- Thập Diện Mai Phục 
            --me.AddFightSkill(840 ,20);  -- Kỹ năng cấp 120 
            --Đao Thúy 
            me.AddFightSkill(120 ,20);  -- Phong Hoa Tuyết Nguyệt 
            me.AddFightSkill(121 ,20);  -- Thúy Yên Đao Pháp 
            me.AddFightSkill(122 ,20);  -- Ngự Tuyết Ẩn 
            me.AddFightSkill(115 ,20);  -- Tuyết Ảnh 
            me.AddFightSkill(123 ,20);  -- Mục Dã Lưu Tinh 
            me.AddFightSkill(483 ,20);  -- Huyền Băng Vô Tức 
            me.AddFightSkill(124 ,20);  -- Băng Tâm Thiến Ảnh 
            me.AddFightSkill(127 ,20);  -- Băng Cơ Ngọc Cốt 
            me.AddFightSkill(125 ,20);  -- Băng Tung Vô Ảnh 
            me.AddFightSkill(486 ,20);  -- Thiên Lý Băng Phong 
            me.AddFightSkill(841 ,20);  -- Quy Khứ Lai Hề 
            --me.AddFightSkill(842 ,20);  -- Kỹ năng cấp 120
        elseif me.nFaction == 7 then    --Cái Bang 
            --Chưởng Cái 
            me.AddFightSkill(128 ,20);  -- Kiến Nhân Thân Thủ 
            me.AddFightSkill(129 ,20);  -- Cái Bang Chưởng Pháp 
            me.AddFightSkill(130 ,20);  -- Hóa Hiểm Vi Di 
            me.AddFightSkill(132 ,20);  -- Hoạt Bất Lưu Thủ 
            me.AddFightSkill(131 ,20);  -- Hàng Long Hữu Hối 
            me.AddFightSkill(489 ,20);  -- Thời Thừa Lục Long 
            me.AddFightSkill(133 ,20);  -- Túy Điệp Cuồng Vũ 
            me.AddFightSkill(136 ,20);  -- Tiềm Long Tại Uyên 
            me.AddFightSkill(134 ,20);  -- Phi Long Tại Thiên 
            me.AddFightSkill(487 ,20);  -- Giáng Long Chưởng 
            me.AddFightSkill(843 ,20);  -- Trảo Long Công 
            --me.AddFightSkill(844 ,20);  -- Kỹ năng cấp 120 
            --Côn Cái 
            me.AddFightSkill(137 ,20);  -- Duyên Môn Thác Bát 
            me.AddFightSkill(138 ,20);  -- Cái Bang Bổng Pháp 
            me.AddFightSkill(139 ,20);  -- Tiêu Dao Công 
            me.AddFightSkill(132 ,20);  -- Hoạt Bất Lưu Thủ 
            me.AddFightSkill(140 ,20);  -- Bổng Đả Ác Cẩu 
            me.AddFightSkill(491 ,20);  -- Ác Cẩu Lan Lộ 
            me.AddFightSkill(238 ,20);  -- Hỗn Thiên Khí Công 
            me.AddFightSkill(142 ,20);  -- Bôn Lưu Đáo Hải 
            me.AddFightSkill(141 ,20);  -- Thiên Hạ Vô Cẩu 
            me.AddFightSkill(488 ,20);  -- Đả Cẩu Bổng Pháp 
            me.AddFightSkill(845 ,20);  -- Đả Cẩu Trận Pháp 
            --me.AddFightSkill(846 ,20);  -- Kỹ năng cấp 120 
        elseif me.nFaction == 8 then    --Thiên Nhẫn 
            --Chiến Nhẫn 
            me.AddFightSkill(143 ,20);  -- Tàn Dương Như Huyết 
            me.AddFightSkill(144 ,20);  -- Thiên Nhẫn Mâu Pháp 
            me.AddFightSkill(492 ,20);  -- Huyễn Ảnh Truy Hồn Thương 
            me.AddFightSkill(145 ,20);  -- Kim Thiền Thoát Xác 
            me.AddFightSkill(146 ,20);  -- Liệt Hỏa Tình Thiên 
            me.AddFightSkill(147 ,20);  -- Bi Tô Thanh Phong 
            me.AddFightSkill(148 ,20);  -- Ma Âm Phệ Phách 
            me.AddFightSkill(150 ,20);  -- Thiên Ma Giải Thể 
            me.AddFightSkill(149 ,20);  -- Vân Long Kích 
            me.AddFightSkill(493 ,20);  -- Ma Viêm Tại Thiên 
            me.AddFightSkill(847 ,20);  -- Phi Hồng Vô Tích 
            --me.AddFightSkill(848 ,20);  -- Kỹ năng cấp 120 
            --Ma Nhẫn 
            me.AddFightSkill(151 ,20);  -- Đạn Chỉ Liệt Diệm 
            me.AddFightSkill(152 ,20);  -- Thiên Nhẫn Đao Pháp 
            me.AddFightSkill(154 ,20);  -- Lệ Ma Đoạt Hồn 
            me.AddFightSkill(145 ,20);  -- Kim Thiền Thoát Xác 
            me.AddFightSkill(153 ,20);  -- Thôi Sơn Điền Hải 
            me.AddFightSkill(494 ,20);  -- Hỏa Liên Phần Hoa 
            me.AddFightSkill(155 ,20);  -- Nhiếp Hồn Loạn Tâm 
            me.AddFightSkill(158 ,20);  -- Xí Không Ma Diệm 
            me.AddFightSkill(156 ,20);  -- Thiên Ngoại Lưu Tinh 
            me.AddFightSkill(496 ,20);  -- Ma Diệm Thất Sát 
            me.AddFightSkill(849 ,20);  -- Thúc Phọc Chú 
            --me.AddFightSkill(850 ,20);  -- Kỹ năng cấp 120 
        elseif me.nFaction == 9 then    --Võ Đang 
            --Khí Võ 
            me.AddFightSkill(159 ,20);  -- Bác Cập Nhi Phục 
            me.AddFightSkill(160 ,20);  -- Võ Đang Quyền Pháp 
            me.AddFightSkill(161 ,20);  -- Tọa Vọng Vô Ngã 
            me.AddFightSkill(163 ,20);  -- Thê Vân Tung 
            me.AddFightSkill(162 ,20);  -- Vô Ngã Vô Kiếm 
            me.AddFightSkill(497 ,20);  -- Thuần Dương Vô Cực 
            me.AddFightSkill(164 ,20);  -- Chân Vũ Thất Tiệt 
            me.AddFightSkill(166 ,20);  -- Thái Cực Vô Ý 
            me.AddFightSkill(165 ,20);  -- Thiên Địa Vô Cực 
            me.AddFightSkill(498 ,20);  -- Thái Cực Thần Công 
            me.AddFightSkill(851 ,20);  -- Võ Đang Cửu Dương 
            --me.AddFightSkill(852 ,20);  -- Kỹ năng cấp 120 
            --Kiếm Võ 
            me.AddFightSkill(167 ,20);  -- Kiếm Phi Kinh Thiên 
            me.AddFightSkill(168 ,20);  -- Võ Đang Kiếm Pháp 
            me.AddFightSkill(783 ,20);  -- Vô Ngã Tâm Pháp 
            me.AddFightSkill(163 ,20);  -- Thê Vân Tung 
            me.AddFightSkill(169 ,20);  -- Tam Hoàn Sáo Nguyệt 
            me.AddFightSkill(499 ,20);  -- Thái Nhất Chân Khí 
            me.AddFightSkill(170 ,20);  -- Thất Tinh Quyết 
            me.AddFightSkill(174 ,20);  -- Kiếm Khí Tung Hoành 
            me.AddFightSkill(171 ,20);  -- Nhân Kiếm Hợp Nhất 
            me.AddFightSkill(500 ,20);  -- Thái Cực Kiếm Pháp 
            me.AddFightSkill(853 ,20);  -- Mê Tung Huyễn Ảnh 
            --me.AddFightSkill(854 ,20);  -- Kỹ năng cấp 120
        elseif me.nFaction == 10 then    --Côn Lôn 
            --Đao Côn 
            me.AddFightSkill(175 ,20);  -- Hô Phong Pháp 
            me.AddFightSkill(176 ,20);  -- Côn Lôn Đao Pháp 
            me.AddFightSkill(179 ,20);  -- Huyền Thiên Vô Cực 
            me.AddFightSkill(177 ,20);  -- Thanh Phong Phù 
            me.AddFightSkill(178 ,20);  -- Cuồng Phong Sậu Điện 
            me.AddFightSkill(697 ,20);  -- Khai Thần Thuật 
            me.AddFightSkill(180 ,20);  -- Nhất Khí Tam Thanh 
            me.AddFightSkill(183 ,20);  -- Thiên Thanh Địa Trọc 
            me.AddFightSkill(181 ,20);  -- Ngạo Tuyết Tiếu Phong 
            me.AddFightSkill(698 ,20);  -- Sương Ngạo Côn Lôn 
            me.AddFightSkill(855 ,20);  -- Vô Nhân Vô Ngã 
            --me.AddFightSkill(856 ,20);  -- Kỹ năng cấp 120 
            --Kiếm Côn 
            me.AddFightSkill(188 ,20);  -- Cuồng Lôi Chấn Địa 
            me.AddFightSkill(189 ,20);  -- Côn Lôn Kiếm Pháp 
            me.AddFightSkill(179 ,20);  -- Huyền Thiên Vô Cực 
            me.AddFightSkill(177 ,20);  -- Thanh Phong Phù 
            me.AddFightSkill(190 ,20);  -- Thiên Tế Tấn Lôi 
            me.AddFightSkill(699 ,20);  -- Túy Tiên Thác Cốt 
            me.AddFightSkill(191 ,20);  -- Đạo Cốt Tiên Phong 
            me.AddFightSkill(193 ,20);  -- Ngũ Lôi Chánh Pháp 
            me.AddFightSkill(192 ,20);  -- Lôi Động Cửu Thiên 
            me.AddFightSkill(767 ,20);  -- Hỗn Nguyên Càn Khôn 
            me.AddFightSkill(857 ,20);  -- Lôi Đình Quyết 
            --me.AddFightSkill(858 ,20);  -- Kỹ năng cấp 120 
        elseif me.nFaction == 11 then    --Minh Giáo 
            --Chùy Minh 
            me.AddFightSkill(194 ,20);  -- Khai Thiên Thức 
            me.AddFightSkill(196 ,20);  -- Minh Giáo Chùy Pháp 
            me.AddFightSkill(199 ,20);  -- Khốn Hổ Vân Tiếu 
            me.AddFightSkill(768 ,20);  -- Huyền Dương Công 
            me.AddFightSkill(198 ,20);  -- Phách Địa Thế 
            me.AddFightSkill(201 ,20);  -- Kim Qua Thiết Mã 
            me.AddFightSkill(197 ,20);  -- Ngự Mã Thuật 
            me.AddFightSkill(204 ,20);  -- Trấn Ngục Phá Thiên Kình 
            me.AddFightSkill(202 ,20);  -- Long Thôn Thức 
            me.AddFightSkill(769 ,20);  -- Không Tuyệt Tâm Pháp 
            me.AddFightSkill(859 ,20);  -- Cửu Hi Hỗn Dương 
            --me.AddFightSkill(860 ,20);  -- Kỹ năng cấp 120 
            --Kiếm Minh 
            me.AddFightSkill(205 ,20);  -- Thánh Hỏa Phần Tâm 
            me.AddFightSkill(206 ,20);  -- Minh Giáo Kiếm Pháp 
            me.AddFightSkill(207 ,20);  -- Di Khí Phiêu Tung 
            me.AddFightSkill(209 ,20);  -- Phiêu Dực Thân Pháp 
            me.AddFightSkill(208 ,20);  -- Vạn Vật Câu Phần 
            me.AddFightSkill(210 ,20);  -- Càn Khôn Đại Na Di 
            me.AddFightSkill(770 ,20);  -- Thâu Thiên Hoán Nhật 
            me.AddFightSkill(212 ,20);  -- Ly Hỏa Đại Pháp 
            me.AddFightSkill(211 ,20);  -- Thánh Hỏa Liêu Nguyên 
            me.AddFightSkill(772 ,20);  -- Thánh Hỏa Thần Công 
            me.AddFightSkill(861 ,20);  -- Thánh Hỏa Lệnh Pháp 
            --me.AddFightSkill(862 ,20);  -- Kỹ năng cấp 120 
        elseif me.nFaction == 12 then    --Đoàn Thị 
            --Chỉ Đoàn 
            me.AddFightSkill(213 ,20);  -- Thần Chỉ Điểm Huyệt 
            me.AddFightSkill(215 ,20);  -- Đoàn Thị Chỉ Pháp 
            me.AddFightSkill(216 ,20);  -- Nhất Dương Chỉ 
            me.AddFightSkill(219 ,20);  -- Lăng Ba Vi Bộ 
            me.AddFightSkill(217 ,20);  -- Nhất Chỉ Càn Khôn 
            me.AddFightSkill(773 ,20);  -- Từ Bi Quyết 
            me.AddFightSkill(220 ,20);  -- Thí Nguyên Quyết 
            me.AddFightSkill(225 ,20);  -- Kim Ngọc Chỉ Pháp 
            me.AddFightSkill(223 ,20);  -- Càn Dương Thần Chỉ 
            me.AddFightSkill(775 ,20);  -- Càn Thiên Chỉ Pháp 
            me.AddFightSkill(863 ,20);  -- Diệu Đề Chỉ 
            --me.AddFightSkill(864 ,20);  -- Kỹ năng cấp 120 
            --Khí Đoàn 
            me.AddFightSkill(226 ,20);  -- Phong Vân Biến Huyễn 
            me.AddFightSkill(227 ,20);  -- Đoàn Thị Tâm Pháp 
            me.AddFightSkill(228 ,20);  -- Bắc Minh Thần Công 
            me.AddFightSkill(230 ,20);  -- Thiên Nam Bộ Pháp 
            me.AddFightSkill(229 ,20);  -- Kim Ngọc Mãn Đường 
            me.AddFightSkill(776 ,20);  -- Lục Kiếm Tề Phát 
            me.AddFightSkill(231 ,20);  -- Khô Vinh Thiền Công 
            me.AddFightSkill(233 ,20);  -- Thiên Long Thần Công 
            me.AddFightSkill(232 ,20);  -- Lục Mạch Thần Kiếm 
            me.AddFightSkill(778 ,20);  -- Đoàn Gia Khí Kiếm 
            me.AddFightSkill(865 ,20);  -- Kinh Thiên Nhất Kiếm 
            --me.AddFightSkill(1662 ,20);  --Ám Hương 
            --me.AddFightSkill(866 ,20);  --Sơ Ảnh 
        end 
    end 
end
function tbKTST150:DiemTiemNang()
	me.AddPotential(1000)
end

function tbKTST150:DiemKyNang()
	me.AddFightSkillPoint(20)
end
function tbKTST150:lsMatTichTrung()
	me.AddFightSkill(1200,10);
    me.AddFightSkill(1201,10);
    me.AddFightSkill(1202,10);
	me.AddFightSkill(1203,10);
    me.AddFightSkill(1204,10);
	me.AddFightSkill(1205,10);
    me.AddFightSkill(1206,10);
	me.AddFightSkill(1219,10);
    me.AddFightSkill(1220,10);
	me.AddFightSkill(1207,10);
    me.AddFightSkill(1208,10);
	me.AddFightSkill(1209,10);
    me.AddFightSkill(1210,10);
	me.AddFightSkill(1221,10);
    me.AddFightSkill(1222,10);
	me.AddFightSkill(1211,10);
	me.AddFightSkill(1212,10);
    me.AddFightSkill(1213,10);
	me.AddFightSkill(1214,10);
	me.AddFightSkill(1215,10);
	me.AddFightSkill(1216,10);
	me.AddFightSkill(1217,10);
	me.AddFightSkill(1218,10);

end
function tbKTST150:lsMatTichCao()
	me.AddFightSkill(1241,10);
    me.AddFightSkill(1242,10);
    me.AddFightSkill(1243,10);
    me.AddFightSkill(1244,10);
	me.AddFightSkill(1245,10);
    me.AddFightSkill(1246,10);
	me.AddFightSkill(1247,10);
    me.AddFightSkill(1248,10);
	me.AddFightSkill(1261,10);
    me.AddFightSkill(1262,10);
	me.AddFightSkill(1249,10);
    me.AddFightSkill(1250,10);
	me.AddFightSkill(1251,10);
    me.AddFightSkill(1252,10);
	me.AddFightSkill(1263,10);
    me.AddFightSkill(1264,10);
	me.AddFightSkill(1253,10);
	me.AddFightSkill(1254,10);
    me.AddFightSkill(1255,10);
	me.AddFightSkill(1256,10);
	me.AddFightSkill(1257,10);
	me.AddFightSkill(1258,10);
	me.AddFightSkill(1259,10);
	me.AddFightSkill(1260,10);

end
function tbKTST150:VoLamTayTuy()
	for i=1,5 do
		if me.CountFreeBagCell() > 0 then
			me.AddItem(18,1,191,1); --Võ Lâm Mật Tịch Sơ
		else
			break
		end
	end
	for i=1,5 do
		if me.CountFreeBagCell() > 0 then
			me.AddItem(18,1,191,2); --Võ Lâm Mật Tịch Trung
		else
			break
		end
	end
	for i=1,5 do
		if me.CountFreeBagCell() > 0 then
			me.AddItem(18,1,192,1); --Tẩy Tủy Kinh Sơ
		else
			break
		end
	end
	for i=1,5 do
		if me.CountFreeBagCell() > 0 then
			me.AddItem(18,1,192,2); --Tẩy Tủy Kinh Trung
		else
			break
		end
	end
	me.AddItem(18,1,326,2); --Bánh ít Bát Bảo
	me.AddItem(18,1,326,2); --Bánh ít Bát Bảo
	me.AddItem(18,1,326,3); --bánh ít thập cẩm
	me.AddItem(18,1,326,3); --bánh ít thập cẩm
	me.AddItem(18,1,464,1); --Thái Vân Truy Nguyệt (10 tiềm năng)
	me.AddItem(18,1,464,1); --Thái Vân Truy Nguyệt (10 tiềm năng)
	me.AddItem(18,1,465,1); --Thương Hải Nguyệt Minh (1 điểm kỹ năng)
	me.AddItem(18,1,465,1); --Thương Hải Nguyệt Minh (1 điểm kỹ năng)

end
function tbKTST150:Resetskill()
	me.ResetFightSkillPoint();
end

---------Quản Lý Người Chơi ở gần---------

function tbKTST150:AskRoleName()
	Dialog:AskString("Tên nhân vật", 16, self.OnInputRoleName, self);
end

function tbKTST150:OnInputRoleName(szRoleName)
	local nPlayerId	= KGCPlayer.GetPlayerIdByName(szRoleName);
	if (not nPlayerId) then
		Dialog:Say("Tên này không tồn tại!", {"Nhập lại", self.AskRoleName, self}, {"Kết thúc đối thoại"});
		return;
	end
	self:ViewPlayer(nPlayerId);
end

function tbKTST150:ViewPlayer(nPlayerId)
	-- 插入最近玩家列表
	local tbRecentPlayerList	= self.tbRecentPlayerList or {};
	self.tbRecentPlayerList		= tbRecentPlayerList;
	for nIndex, nRecentPlayerId in ipairs(tbRecentPlayerList) do
		if (nRecentPlayerId == nPlayerId) then
			table.remove(tbRecentPlayerList, nIndex);
			break;
		end
	end
	if (#tbRecentPlayerList >= self.MAX_RECENTPLAYER) then
		table.remove(tbRecentPlayerList);
	end
	table.insert(tbRecentPlayerList, 1, nPlayerId);

	local szName	= KGCPlayer.GetPlayerName(nPlayerId);
	local tbInfo	= GetPlayerInfoForLadderGC(szName);
	local tbState	= {
		[0]		= "Không online",
		[-1]	= "Đang xử lý",
		[-2]	= "Auto?",
	};
	local nState	= KGCPlayer.OptGetTask(nPlayerId, KGCPlayer.TSK_ONLINESERVER);
	local tbText	= {
		{"Tên", szName},
		{"Tài khoản", tbInfo.szAccount},
		{"Cấp", tbInfo.nLevel},
		{"Giới tính", (tbInfo.nSex == 1 and "Nữ") or "Nam"},
		{"Hệ phái", Player:GetFactionRouteName(tbInfo.nFaction, tbInfo.nRoute)},
		{"Tộc", tbInfo.szKinName},
		{"Bang hội", tbInfo.szTongName},
		{"Uy danh", KGCPlayer.GetPlayerPrestige(nPlayerId)},
		{"Trạng thái", (tbState[nState] or "<color=green>Trên mạng<color>") .. "("..nState..")"},
	}
	local szMsg	= "";
	for _, tb in ipairs(tbText) do
		szMsg	= szMsg .. "\n  " .. Lib:StrFillL(tb[1], 6) .. tostring(tb[2]);
	end
	local szButtonColor	= (nState > 0 and "") or "<color=gray>";
	local tbOpt = {
		{szButtonColor.."Kéo hắn qua đây", "GM.tbGMRole:CallHimHere", nPlayerId},
		{szButtonColor.."Đưa ta đi", "GM.tbGMRole:SendMeThere", nPlayerId},
		{szButtonColor.."Cho hắn rớt mạng", "GM.tbGMRole:KickHim", nPlayerId},
		{"<color=red>Đưa vào Đào Nguyên 1<color>", self.DaoNguyen1, self, nPlayerId},
		{"<color=red>Đưa vào Đào Nguyên 2<color>", self.DaoNguyen2, self, nPlayerId},
		{"<color=red>Đưa vào Đào Nguyên 3<color>", self.DaoNguyen3, self, nPlayerId},
		{"<color=red>Đưa vào Đào Nguyên 4<color>", self.DaoNguyen4, self, nPlayerId},
		{"<color=red>Đưa vào Đào Nguyên 5<color>", self.DaoNguyen5, self, nPlayerId},
		{"<color=red>Đưa vào Đào Nguyên 6<color>", self.DaoNguyen6, self, nPlayerId},
		{"<color=red>Đưa vào Đào Nguyên 7<color>", self.DaoNguyen7, self, nPlayerId},
		{"<color=green>Gửi thư", self.SendMail, self, nPlayerId},
		{"<color=gray>Bỏ Tất cả vật phẩm", self.NemVatPham, self, nPlayerId},
		{"<color=yellow>Gửi Vật Phẩm", self.GuiVatPham, self, nPlayerId},
		{"Kết thúc đối thoại"},
	};
	Dialog:Say(szMsg, tbOpt);
end

function tbKTST150:NemVatPham(nPlayerId)
	local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
	pPlayer.ThrowAllItem();
end

function tbKTST150:RecentPlayer()
	local tbOpt	= {};
	for nIndex, nPlayerId in ipairs(self.tbRecentPlayerList or {}) do
		local szName	= KGCPlayer.GetPlayerName(nPlayerId);
		local nState	= KGCPlayer.OptGetTask(nPlayerId, KGCPlayer.TSK_ONLINESERVER);
		tbOpt[#tbOpt+1]	= {((nState > 0 and "<color=green>") or "")..szName, self.ViewPlayer, self, nPlayerId};
	end
	tbOpt[#tbOpt + 1]	= {"Kết thúc đối thoại"};
	
	Dialog:Say("Người chơi cần chọn: ", tbOpt);
end

function tbKTST150:AroundPlayer()
	local tbPlayer	= {};
	local _, nMyMapX, nMyMapY	= me.GetWorldPos();
	for _, pPlayer in ipairs(KPlayer.GetAroundPlayerList(me.nId, 50)) do
		if (pPlayer.szName ~= me.szName) then
			local _, nMapX, nMapY	= pPlayer.GetWorldPos();
			local nDistance	= (nMapX - nMyMapX) ^ 2 + (nMapY - nMyMapY) ^ 2;
			tbPlayer[#tbPlayer+1]	= {nDistance, pPlayer};
		end
	end
	local function fnLess(tb1, tb2)
		return tb1[1] < tb2[1];
	end
	table.sort(tbPlayer, fnLess);
	local tbOpt	= {};
	for _, tb in ipairs(tbPlayer) do
		local pPlayer	= tb[2];
		tbOpt[#tbOpt+1]	= {pPlayer.szName, self.ViewPlayer, self, pPlayer.nId};
		if (#tbOpt >= 8) then
			break;
		end
	end
	tbOpt[#tbOpt + 1]	= {"Kết thúc đối thoại"};
	
	Dialog:Say("Người chơi cần chọn: ", tbOpt);
end

function tbKTST150:DaoNguyen1(nPlayerId)
local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
local SoLanLenDao = pPlayer.GetTask(tbKTST150.TG_LenDao, tbKTST150.ID_LenDao);
pPlayer.SetTask(tbKTST150.TG_LenDao,tbKTST150.ID_LenDao,SoLanLenDao + 1);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ThuongHoatDong\\DaoNguyen\\DanhSachLenDao.txt";
KFile.AppendFile(szHistory, ""..pPlayer.szAccount.."\t"..pPlayer.szName.."\tĐào Nguyên_1\t"..Time.."\t"..szIp.."\n");

pPlayer.NewWorld(1497, 1626, 3187);

end
function tbKTST150:DaoNguyen2(nPlayerId)
local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
local SoLanLenDao = pPlayer.GetTask(tbKTST150.TG_LenDao, tbKTST150.ID_LenDao);
pPlayer.SetTask(tbKTST150.TG_LenDao,tbKTST150.ID_LenDao,SoLanLenDao + 1);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ThuongHoatDong\\DaoNguyen\\DanhSachLenDao.txt";
KFile.AppendFile(szHistory, ""..pPlayer.szAccount.."\t"..pPlayer.szName.."\tĐào Nguyên_2\t"..Time.."\t"..szIp.."\n");

	pPlayer.NewWorld(1498, 1626, 3187);
end
function tbKTST150:DaoNguyen3(nPlayerId)
local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
local SoLanLenDao = pPlayer.GetTask(tbKTST150.TG_LenDao, tbKTST150.ID_LenDao);
pPlayer.SetTask(tbKTST150.TG_LenDao,tbKTST150.ID_LenDao,SoLanLenDao + 1);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ThuongHoatDong\\DaoNguyen\\DanhSachLenDao.txt";
KFile.AppendFile(szHistory, ""..pPlayer.szAccount.."\t"..pPlayer.szName.."\tĐào Nguyên_3\t"..Time.."\t"..szIp.."\n");

	pPlayer.NewWorld(1499, 1626, 3187);
end
function tbKTST150:DaoNguyen4(nPlayerId)
local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
local SoLanLenDao = pPlayer.GetTask(tbKTST150.TG_LenDao, tbKTST150.ID_LenDao);
pPlayer.SetTask(tbKTST150.TG_LenDao,tbKTST150.ID_LenDao,SoLanLenDao + 1);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ThuongHoatDong\\DaoNguyen\\DanhSachLenDao.txt";
KFile.AppendFile(szHistory, ""..pPlayer.szAccount.."\t"..pPlayer.szName.."\tĐào Nguyên_4\t"..Time.."\t"..szIp.."\n");

	pPlayer.NewWorld(1500, 1626, 3187);
end
function tbKTST150:DaoNguyen5(nPlayerId)
local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
local SoLanLenDao = pPlayer.GetTask(tbKTST150.TG_LenDao, tbKTST150.ID_LenDao);
pPlayer.SetTask(tbKTST150.TG_LenDao,tbKTST150.ID_LenDao,SoLanLenDao + 1);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ThuongHoatDong\\DaoNguyen\\DanhSachLenDao.txt";
KFile.AppendFile(szHistory, ""..pPlayer.szAccount.."\t"..pPlayer.szName.."\tĐào Nguyên_5\t"..Time.."\t"..szIp.."\n");

	pPlayer.NewWorld(1501, 1626, 3187);
end
function tbKTST150:DaoNguyen6(nPlayerId)
local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
local SoLanLenDao = pPlayer.GetTask(tbKTST150.TG_LenDao, tbKTST150.ID_LenDao);
pPlayer.SetTask(tbKTST150.TG_LenDao,tbKTST150.ID_LenDao,SoLanLenDao + 1);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ThuongHoatDong\\DaoNguyen\\DanhSachLenDao.txt";
KFile.AppendFile(szHistory, ""..pPlayer.szAccount.."\t"..pPlayer.szName.."\tĐào Nguyên_6\t"..Time.."\t"..szIp.."\n");

	pPlayer.NewWorld(1502, 1626, 3187);
end
function tbKTST150:DaoNguyen7(nPlayerId)
local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
local SoLanLenDao = pPlayer.GetTask(tbKTST150.TG_LenDao, tbKTST150.ID_LenDao);
pPlayer.SetTask(tbKTST150.TG_LenDao,tbKTST150.ID_LenDao,SoLanLenDao + 1);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\ThuongHoatDong\\DaoNguyen\\DanhSachLenDao.txt";
KFile.AppendFile(szHistory, ""..pPlayer.szAccount.."\t"..pPlayer.szName.."\tĐào Nguyên_7\t"..Time.."\t"..szIp.."\n");

	pPlayer.NewWorld(1503, 1626, 3187);
end

function tbKTST150:SendMail(nPlayerId)
	Dialog:AskString("Nội dung thư", 500, "GM.tbGMRole:SendMail", nPlayerId);
end

function tbKTST150:GuiVatPham(nPlayerId)
	local szMsg = "Hãy chọn vật phẩm muốn gửi";
	local tbOpt = {
			{"<color=gold>Than Mat Cap 2<color>",self.ThanMat,self, nPlayerId},
			{"Bạc Khóa (1000v)", self.SendBacKhoa5, self, nPlayerId},
			{"Bạc (1000v)", self.SendBac4, self, nPlayerId},
			{"Đồng Khóa (100v)", self.SendDongKhoa3, self, nPlayerId},
			{"Xoa Dong (Vo Hieu)", self.XoaDongXX, self, nPlayerId},
			{"Gửi Items", self.ThemVatPham2, self, nPlayerId},
			{"Xin đợi"},
		};
	Dialog:Say(szMsg, tbOpt);
end

function tbKTST150:ThanMat(nPlayerId)
	local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
	Relation:AddFriendFavor(me.szName, pPlayer.szName, 102);
end
function tbKTST150:SendBacKhoa5(nPlayerId)
	local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
	pPlayer.AddBindMoney(10000000);	--1000v bạc khóa
end
function tbKTST150:SendBac4(nPlayerId)
	local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
	pPlayer.Earn(10000000,0);	--1000v bạc
end
function tbKTST150:SendDongKhoa3(nPlayerId)
	local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
	pPlayer.AddBindCoin(1000000);	--100v Đồng khóa
end
function tbKTST150:XoaDongXX(nPlayerId)
	local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
	local nCoin	= pPlayer.GetJbCoin();
	pPlayer.AddJbCoin(-1 * nCoin);	--trừ hết đồng
end
function tbKTST150:ThemVatPham2(nPlayerId)
	Dialog:AskNumber("Nhập Genre",30000, self.Genre2,self, nPlayerId);
end

function tbKTST150:Genre2(nPlayerId, nGenre)
	Dialog:AskNumber("Nhập Detail",30000,self.Detail2,self, nPlayerId, nGenre);
end

function tbKTST150:Detail2(nPlayerId, nGenre, nDetail)
	Dialog:AskNumber("Nhập Particular",30000,self.Particular2,self, nPlayerId, nGenre, nDetail);
end

function tbKTST150:Particular2(nPlayerId, nGenre, nDetail, nParticular)
	Dialog:AskNumber("Nhập Level",30000,self.Level2 ,self, nPlayerId, nGenre, nDetail, nParticular);
end

function tbKTST150:Level2(nPlayerId, nGenre, nDetail, nParticular, nLevel)
	Dialog:AskNumber("Nhập Series",30000,self.nSeries2 ,self, nPlayerId, nGenre, nDetail, nParticular, nLevel);
end

function tbKTST150:nSeries2(nPlayerId, nGenre, nDetail, nParticular, nLevel, nSeries)
	local pPlayer	= KPlayer.GetPlayerObjById(nPlayerId);
		pPlayer.AddItem(nGenre, nDetail, nParticular, nLevel, nSeries);
		pPlayer.Msg("Hệ thống gửi tới ngươi 1 món quà");
		me.Msg("Gửi thành công items");
end
function tbKTST150:ResetMoney()

local nMyMoney	= me.nCashMoney; --Trừ Bạc thường
me.CostMoney(nMyMoney,0);

local nMyMoney1    = me.GetBindMoney()--Trừ Bạc khóa
me.CostBindMoney(nMyMoney1,0); 

local nMyMoney2	= me.nBindCoin;
me.AddBindCoin(-1*nMyMoney2); --Trừ Đồng khóa

local nMyMoney3	= me.nCoin;
me.AddJbCoin(-1*nMyMoney3); --Trừ Đồng

local HL = me.dwCurGTP;
local TL = me.dwCurMKP;
me.ChangeCurMakePoint(-1*TL);--X là số tinh lực cần add
me.ChangeCurGatherPoint(-1*HL);-- Y là số hoạt lực cần add


end
function tbKTST150:NewAccount()
--me.AddLevel(200 - me.nLevel); -- X là level cần add
me.SetTask(4000,1,1000);
me.SetTask(4030,1,1);
me.AddRepute(14,1,100000)
me.AddStackItem(18,9,999,1,nil,100000);
	me.AddFightSkill(163,20);	-- 60级梯云纵
	me.AddFightSkill(91,20);
	me.AddFightSkill(132,20);
	me.AddFightSkill(177,20);
	me.AddFightSkill(209,20);
	me.AddFightSkill(68,40); --Đường môn - Tâm ma
	me.AddFightSkill(75,40); --Đường môn - Tâm phách
	me.AddFightSkill(183,40); --Côn lôn - Thiên thanh địa trọc
	me.AddFightSkill(193,40); --Côn lôn - Ngũ lôi chánh pháp
	me.AddFightSkill(204,40); --Minh giáo - Trấn ngục phá thiên kình
	me.AddFightSkill(212,40); --Minh giáo - Ly hỏa đại pháp
me.AddFightSkillPoint(500);
	me.AddFightSkill(1200,10);
    me.AddFightSkill(1201,10);
    me.AddFightSkill(1202,10);
	me.AddFightSkill(1203,10);
    me.AddFightSkill(1204,10);
	me.AddFightSkill(1205,10);
    me.AddFightSkill(1206,10);
	me.AddFightSkill(1219,10);
    me.AddFightSkill(1220,10);
	me.AddFightSkill(1207,10);
    me.AddFightSkill(1208,10);
	me.AddFightSkill(1209,10);
    me.AddFightSkill(1210,10);
	me.AddFightSkill(1221,10);
    me.AddFightSkill(1222,10);
	me.AddFightSkill(1211,10);
	me.AddFightSkill(1212,10);
    me.AddFightSkill(1213,10);
	me.AddFightSkill(1214,10);
	me.AddFightSkill(1215,10);
	me.AddFightSkill(1216,10);
	me.AddFightSkill(1217,10);
	me.AddFightSkill(1218,10);
	me.AddFightSkill(1241,10);
    me.AddFightSkill(1242,10);
    me.AddFightSkill(1243,10);
    me.AddFightSkill(1244,10);
	me.AddFightSkill(1245,10);
    me.AddFightSkill(1246,10);
	me.AddFightSkill(1247,10);
    me.AddFightSkill(1248,10);
	me.AddFightSkill(1261,10);
    me.AddFightSkill(1262,10);
	me.AddFightSkill(1249,10);
    me.AddFightSkill(1250,10);
	me.AddFightSkill(1251,10);
    me.AddFightSkill(1252,10);
	me.AddFightSkill(1263,10);
    me.AddFightSkill(1264,10);
	me.AddFightSkill(1253,10);
	me.AddFightSkill(1254,10);
    me.AddFightSkill(1255,10);
	me.AddFightSkill(1256,10);
	me.AddFightSkill(1257,10);
	me.AddFightSkill(1258,10);
	me.AddFightSkill(1259,10);
	me.AddFightSkill(1260,10);
me.AddFightSkillPoint(500);

for i = 1,7 do
me.AddItem(1,24,i,1)
me.AddItem(1,27,i,1)
end

end

---DEV-NPC
function tbKTST150:DEV_NPC()
	local szMsg = "";
	local tbOpt = {

{"<color=yellow>Add NPC", self.Add_NPC_RES, self};
{"<color=cyan>Xóa All NPC", self.Dell_NPC_RES, self};

{"<color=yellow>+ Task", self.Add_TASK, self};	
{"<color=yellow>- Task", self.Dell_TASK, self};
{"<color=yellow>Xóa All Task", self.Dell_All_TASK, self};
{"<color=yellow>Check_TASK", self.Check_TASK, self};
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbKTST150:Add_NPC_RES()
local CheckRESNPC = me.GetTask(4030,1);
local IDNPC = 9100+CheckRESNPC;


local pNpc1= KNpc.Add2(IDNPC+1, 255, 0,256,1612,3153);
local pNpc1= KNpc.Add2(IDNPC+2, 255, 0,256,1624,3141);
local pNpc1= KNpc.Add2(IDNPC+3, 255, 0,256,1620,3161);
local pNpc1= KNpc.Add2(IDNPC+4, 255, 0,256,1627,3168);
local pNpc1= KNpc.Add2(IDNPC+5, 255, 0,256,1637,3128);
local pNpc1= KNpc.Add2(IDNPC+6, 255, 0,256,1645,3136);
local pNpc1= KNpc.Add2(IDNPC+7, 255, 0,256,1632,3149);
local pNpc1= KNpc.Add2(IDNPC+8, 255, 0,256,1639,3156);
local pNpc1= KNpc.Add2(IDNPC+9, 255, 0,256,1646,3163);
local pNpc1= KNpc.Add2(IDNPC+10, 255, 0,256,1634,3175);
local pNpc1= KNpc.Add2(IDNPC+11, 255, 0,256,1649,3115);
local pNpc1= KNpc.Add2(IDNPC+12, 255, 0,256,1657,3123);
local pNpc1= KNpc.Add2(IDNPC+13, 255, 0,256,1660,3104);
local pNpc1= KNpc.Add2(IDNPC+14, 255, 0,256,1652,3143);
local pNpc1= KNpc.Add2(IDNPC+15, 255, 0,256,1659,3150);
local pNpc1= KNpc.Add2(IDNPC+16, 255, 0,256,1671,3094);
local pNpc1= KNpc.Add2(IDNPC+17, 255, 0,256,1679,3102);
local pNpc1= KNpc.Add2(IDNPC+18, 255, 0,256,1664,3130);
local pNpc1= KNpc.Add2(IDNPC+19, 255, 0,256,1668,3112);
local pNpc1= KNpc.Add2(IDNPC+20, 255, 0,256,1675,3119);
local pNpc1= KNpc.Add2(IDNPC+21, 255, 0,256,1671,3137);
local pNpc1= KNpc.Add2(IDNPC+22, 255, 0,256,1692,3072);
local pNpc1= KNpc.Add2(IDNPC+23, 255, 0,256,1681,3083);
local pNpc1= KNpc.Add2(IDNPC+24, 255, 0,256,1689,3091);
local pNpc1= KNpc.Add2(IDNPC+25, 255, 0,256,1686,3109);
local pNpc1= KNpc.Add2(IDNPC+26, 255, 0,256,1693,3116);
local pNpc1= KNpc.Add2(IDNPC+27, 255, 0,256,1682,3126);
local pNpc1= KNpc.Add2(IDNPC+28, 255, 0,256,1700,3080);
local pNpc1= KNpc.Add2(IDNPC+29, 255, 0,256,1707,3087);
local pNpc1= KNpc.Add2(IDNPC+30, 255, 0,256,1696,3098);
local pNpc1= KNpc.Add2(IDNPC+31, 255, 0,256,1703,3105);
local pNpc1= KNpc.Add2(IDNPC+32, 255, 0,256,1714,3094);

me.SetTask(4030,1,CheckRESNPC + 32);
me.NewWorld(256,1606,3180);
end


function tbKTST150:Check_TASK()
local CheckRESNPC = me.GetTask(4030,1);

me.Msg(string.format("Task Hiện tại: %d",CheckRESNPC));
end

function tbKTST150:Add_TASK()
local CheckRESNPC = me.GetTask(4030,1);
me.SetTask(4030,1,CheckRESNPC + 32);

end
function tbKTST150:Dell_TASK()
local CheckRESNPC = me.GetTask(4030,1);
me.SetTask(4030,1,CheckRESNPC - 32);

end
function tbKTST150:Dell_All_TASK()

me.SetTask(4030,1,0);

end

function tbKTST150:Dell_NPC_RES()
ClearMapNpcWithName(256, "Mộc Nhân");
for i = 9101,10232 do
ClearMapNpcWithName(256, ""..i.."");
end
end
function tbKTST150:Full_Admin_Menu()
	local szMsg = "Xin hãy chọn:";
	local tbOpt = 
	{
	{"<color=green>Gia nhập Môn phái", "Npc.tbMenPaiNpc:FactionDialog", Npc.tbMenPaiNpc.DialogMaster},
	{"<color=yellow>Full new 1", self.NewAccount, self},
	{"<color=yellow>Item Chung", self.Item_Chung, self},
	{"<color=yellow>Vũ khí Hiệu ứng", self.VuKhi_HU, self},
	{"<color=yellow>Vũ khí Song Tu", self.VuKhi_ST, self},
	{"<color=yellow>Item Nam: NT-FF", self.Item_Nam_NTFF, self},
	{"<color=yellow>Item Nam: Set Trang bị", self.Item_Nam_TB, self},
	{"<color=yellow>Item Nữ: NT-FF", self.Item_Nu_NTFF, self},
	{"<color=yellow>Item Nữ: Set Trang bị", self.Item_Nu_TB, self},
	{"<color=yellow>Max Chân Nguyên Thánh Linh", self.MaxThanhLinh, self},
	{"<color=yellow>Max Ấn", self.MaxAn, self},
	{"<color=yellow>Max Thiên Gia-Thất Kiếm-Huy Chương-KN khác", self.MaxF1, self},
	{"<color=yellow>40 Cấp Kỹ Năng Giang Hồ", self.KTGH, self},
	{"<color=yellow>Ngựa-NT", self.Ngua_NT, self},
 
 
 
 
 
 
};
Dialog:Say(szMsg, tbOpt);
end
function tbKTST150:Item_Chung()
me.AddItem(1,13,55,10);--Thiên Hạ Tân Niên +54✭✭✭✭
me.AddItem(1,16,69,10);--Tân Niên Thiên Hạ Ấn 44✭✭✭✭
me.AddItem(1,12,1968,10);--Hỏa Cự Long-✭✭✭✭
me.AddItem(1,12,1969,10);--Thủy Cự Long-✭✭✭✭
me.AddItem(1,12,1970,10);--Tinh Vân Đạp Nguyệt
me.AddItem(1,12,1971,10);--Đạp Viêm Ô Nha
me.AddItem(5,23,26,5);--Phù Đồng Hành Lv.26
me.AddItem(5,20,26,5);--Y Phục Đồng Hành Lv.26
me.AddItem(5,22,26,5);--Hộ Uyển Đồng Hành Lv.26
me.AddItem(5,21,26,5);--Nhẫn đồng hành Lv.26
me.AddItem(5,19,27,5);--Vũ Khí Đồng Hành-Lv.26
me.AddItem(1,24,15,1);--Bách Lý Trúc Đan [Nội khí]
me.AddItem(1,24,16,1);--Bách Lý Cơ Long [Ngoại khí]
me.AddItem(1,27,7,1);--[Thánh Linh]-Thiên Vân Nội
me.AddItem(1,27,8,1);--[Thánh Linh]-Thiên Vân Ngoại
me.AddItem(1,27,9,1);--[Thánh Linh]-Thiên Vân Ngoại
me.AddItem(1,27,10,1);--[Thánh Linh]-Thiên Vân Ngoại
end

function tbKTST150:VuKhi_HU()
me.AddItem(2,1,3889,10,1,16);--Lv.8-Hiệu ứng Kim Đao Ngoại 20
me.AddItem(2,1,3909,10,2,16);--Lv.8-Hiệu ứng Mộc Đao Ngoại 20
me.AddItem(2,1,3929,10,3,16);--Lv.8-Hiệu ứng Thủy Đao Ngoại 20
me.AddItem(2,1,3949,10,4,16);--Lv.8-Hiệu ứng Hỏa Đao Nội 20
me.AddItem(2,1,3969,10,5,16);--Lv.8-Hiệu ứng Thổ Đao Ngoại 20
me.AddItem(2,1,3989,10,1,16);--Lv.8-Hiệu ứng Kim Côn Ngoại 20
me.AddItem(2,1,4009,10,4,16);--Lv.8-Hiệu ứng Hỏa Côn Ngoại 20
me.AddItem(2,1,4029,10,1,16);--Lv.8-Hiệu ứng Kim Thương Ngoại 20
me.AddItem(2,1,4049,10,4,16);--Lv.8-Hiệu ứng Hỏa Thương Ngoại 20
me.AddItem(2,1,4069,10,1,16);--Lv.8-Hiệu ứng Kim Chùy Ngoại 20
me.AddItem(2,1,4089,10,2,16);--Lv.8-Hiệu ứng Mộc Chùy Ngoại 20
me.AddItem(2,1,4109,10,2,16);--Lv.8-Hiệu ứng Mộc Thủ Nội 20
me.AddItem(2,1,4129,10,3,16);--Lv.8-Hiệu ứng Thủy Thủ Ngoại 20
me.AddItem(2,1,4149,10,3,16);--Lv.8-Hiệu ứng Thủy Thủ Nội 20
me.AddItem(2,1,4169,10,4,16);--Lv.8-Hiệu ứng Hỏa Thủ Nội 20
me.AddItem(2,1,4189,10,2,16);--Lv.8-Hiệu ứng Mộc Kiếm Nội 20
me.AddItem(2,1,4209,10,3,16);--Lv.8-Hiệu ứng Thủy Kiếm Nội 20
me.AddItem(2,1,4229,10,5,16);--Lv.8-Hiệu ứng Thổ Kiếm Nội 20
me.AddItem(2,1,4249,10,5,16);--Lv.8-Hiệu ứng Thổ Kiếm Ngoại 20
me.AddItem(2,2,2729,10,2,16);--Lv.8-Hiệu Ứng-Phi Đao 20
me.AddItem(2,2,2749,10,2,16);--Lv.8-Hiệu Ứng-Tụ Tiễn 20
end

function tbKTST150:VuKhi_ST()
me.AddItem(2,1,4269,10,1,16);--Lv.8-Nội công Kim Đao 20
me.AddItem(2,1,4289,10,2,16);--Lv.8-Nội công Mộc Đao 20
me.AddItem(2,1,4309,10,3,16);--Lv.8-Nội công Thủy Đao 20
me.AddItem(2,1,4329,10,4,16);--Lv.8-Ngoại công Hỏa Đao 20
me.AddItem(2,1,4349,10,5,16);--Lv.8-Nội công Thổ Đao 20
me.AddItem(2,1,4369,10,2,16);--Lv.8-Ngoại công Mộc Côn 20
me.AddItem(2,1,4389,10,3,16);--Lv.8-Ngoại công Thủy Côn 20
me.AddItem(2,1,4409,10,5,16);--Lv.8-Ngoại công Thổ Côn 20
me.AddItem(2,1,4429,10,2,16);--Lv.8-Hệ cách đấu Mộc Thương 20
me.AddItem(2,1,4449,10,3,16);--Lv.8-Hệ cách đấu Thủy Thương 20
me.AddItem(2,1,4469,10,5,16);--Lv.8-Hệ cách đấu Thổ Thương 20
me.AddItem(2,1,4489,10,3,16);--Lv.8-Hệ cách đấu Thủy Chùy 20
me.AddItem(2,1,4509,10,4,16);--Lv.8-Hệ cách đấu Hỏa Chùy 20
me.AddItem(2,1,4529,10,5,16);--Lv.8-Hệ cách đấu Thổ Chùy 20
me.AddItem(2,1,4549,10,1,16);--Lv.8-Ngoại Công Kim Thủ 20
me.AddItem(2,1,4569,10,1,16);--Lv.8-Nội công Kim Thủ 20
me.AddItem(2,1,4589,10,2,16);--Lv.8-Ngoại Công Mộc Thủ 20
me.AddItem(2,1,4609,10,4,16);--Lv.8-Hệ cách đấu Hỏa Thủ 20
me.AddItem(2,1,4629,10,5,16);--Lv.8-Ngoại Công Thổ Thủ 20
me.AddItem(2,1,4649,10,5,16);--Lv.8-Nội công Thổ Thủ 20
me.AddItem(2,1,4669,10,1,16);--Lv.8-Ngoại công Kim Kiếm 20
me.AddItem(2,1,4689,10,1,16);--Lv.8-Nội công Kim Kiếm 20
me.AddItem(2,1,4709,10,2,16);--Lv.8-Ngoại công Mộc Kiếm 20
me.AddItem(2,1,4729,10,2,16);--Lv.8-Nội công Mộc Kiếm 20
me.AddItem(2,1,4749,10,3,16);--Lv.8-Ngoại công Thủy Kiếm 20
me.AddItem(2,1,4769,10,4,16);--Lv.8-Ngoại công Hỏa Kiếm 20
me.AddItem(2,1,4789,10,4,16);--Lv.8-Nội công Hỏa Kiếm 20
me.AddItem(2,2,2769,10,1,16);--Lv.8-Song Tu-Kim-Phi Đao 20
me.AddItem(2,2,2789,10,3,16);--Lv.8-Song Tu-Mộc-Phi Đao 20
me.AddItem(2,2,2809,10,4,16);--Lv.8-Song Tu-Hỏa-Phi Đao 20
me.AddItem(2,2,2829,10,5,16);--Lv.8-Song Tu-Thổ-Phi Đao 20
me.AddItem(2,2,2849,10,1,16);--Lv.8-Song Tu-Kim-Tụ Tiễn 20
me.AddItem(2,2,2869,10,3,16);--Lv.8-Song Tu-Thủy-Tụ Tiễn 20
me.AddItem(2,2,2889,10,4,16);--Lv.8-Song Tu-Hỏa-Tụ Tiễn 20
me.AddItem(2,2,2909,10,5,16);--Lv.8-Song Tu-Thổ-Tụ Tiễn 20
end

function tbKTST150:Item_Nam_NTFF()
me.AddItem(1,17,2541,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2542,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2543,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2544,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2545,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2551,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2552,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2553,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2554,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2555,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2561,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2562,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2563,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2564,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2565,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2571,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2572,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2573,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2574,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2575,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2581,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2582,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2583,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2584,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2585,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2591,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2592,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2593,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2594,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2595,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2601,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2602,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2603,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2604,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2605,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2611,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2612,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2613,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2614,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2615,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddItem(1,17,2621,10);--Lv.19-Event Tết 2025- Kim Nam
me.AddItem(1,17,2622,10);--Lv.19-Event Tết 2025- Mộc Nam
me.AddItem(1,17,2623,10);--Lv.19-Event Tết 2025- Thủy Nam
me.AddItem(1,17,2624,10);--Lv.19-Event Tết 2025- Hỏa Nam
me.AddItem(1,17,2625,10);--Lv.19-Event Tết 2025- Thổ Nam
me.AddStackItem(18,1,4035,1,nil,20);
me.AddItem(1,25,952,2);--Opt_Kháng-Khoác-Nam_Lv11
me.AddItem(1,25,953,2);--Opt_Kháng-Khoác-Nam_Lv11
me.AddItem(1,25,954,2);--Opt_Kháng-Khoác-Nam_Lv11
me.AddItem(1,25,955,2);--Opt_Kháng-Khoác-Nam_Lv11
me.AddItem(1,25,956,2);--Opt_Kháng-Khoác-Nam_Lv11
me.AddItem(1,25,957,2);--Opt_Kháng-Khoác-Nam_Lv11
me.AddItem(1,26,851,2);--Opt_Kháng-Nón-Nam_Lv10
me.AddItem(1,26,852,2);--Opt_Kháng-Nón-Nam_Lv10
me.AddItem(1,26,853,2);--Opt_Kháng-Nón-Nam_Lv10
me.AddItem(1,26,854,2);--Opt_Kháng-Nón-Nam_Lv10
me.AddItem(1,26,855,2);--Opt_Kháng-Nón-Nam_Lv10
me.AddItem(1,26,856,2);--Opt_Kháng-Nón-Nam_Lv10
end
function tbKTST150:Item_Nu_NTFF()
me.AddItem(1,17,2546,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2547,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2548,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2549,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2550,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2556,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2557,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2558,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2559,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2560,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2566,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2567,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2568,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2569,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2570,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2576,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2577,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2578,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2579,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2580,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2586,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2587,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2588,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2589,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2590,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2596,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2597,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2598,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2599,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2600,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2606,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2607,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2608,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2609,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2610,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2616,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2617,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2618,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2619,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2620,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddItem(1,17,2626,10);--Lv.19-Event Tết 2025- Kim Nữ
me.AddItem(1,17,2627,10);--Lv.19-Event Tết 2025- Mộc Nữ
me.AddItem(1,17,2628,10);--Lv.19-Event Tết 2025- Thủy Nữ
me.AddItem(1,17,2629,10);--Lv.19-Event Tết 2025- Hỏa Nữ
me.AddItem(1,17,2630,10);--Lv.19-Event Tết 2025- Thổ Nữ
me.AddStackItem(18,1,4035,1,nil,20);
me.AddItem(1,25,958,2);--Opt_Kháng-Khoác-Nữ_Lv11
me.AddItem(1,25,959,2);--Opt_Kháng-Khoác-Nữ_Lv11
me.AddItem(1,25,960,2);--Opt_Kháng-Khoác-Nữ_Lv11
me.AddItem(1,25,961,2);--Opt_Kháng-Khoác-Nữ_Lv11
me.AddItem(1,25,962,2);--Opt_Kháng-Khoác-Nữ_Lv11
me.AddItem(1,25,963,2);--Opt_Kháng-Khoác-Nữ_Lv11
me.AddItem(1,26,857,2);--Opt_Kháng-Nón-Nữ_Lv11
me.AddItem(1,26,858,2);--Opt_Kháng-Nón-Nữ_Lv11
me.AddItem(1,26,859,2);--Opt_Kháng-Nón-Nữ_Lv11
me.AddItem(1,26,860,2);--Opt_Kháng-Nón-Nữ_Lv11
me.AddItem(1,26,861,2);--Opt_Kháng-Nón-Nữ_Lv11
me.AddItem(1,26,862,2);--Opt_Kháng-Nón-Nữ_Lv11


end
function tbKTST150:Item_Nam_TB()
me.AddItem(4,9,3020,10,1,16);--Nón Cấp 3- Nam - Kim
me.AddItem(4,3,3020,10,5,16);--Áo Cấp 3- Nam - Kim
me.AddItem(4,8,3020,10,4,16);--Lưng Cấp 3- Nam - Kim
me.AddItem(4,10,3020,10,2,16);--Tay Cấp 3- Nam - Kim
me.AddItem(4,7,3020,10,3,16);--Giày Cấp 3- Nam - Kim
me.AddItem(4,5,3020,10,5,16);--Liên Cấp 3- Nam - Kim
me.AddItem(4,4,3020,10,4,16);--Nhẫn Cấp 3- Nam - Kim
me.AddItem(4,11,3020,10,2,16);--Bội Cấp 3- Nam - Kim
me.AddItem(4,6,3020,10,3,16);--Phù Cấp 3- Nam - Kim
me.AddItem(4,9,3022,10,2,16);--Nón Cấp 3- Nam - Mộc
me.AddItem(4,3,3022,10,3,16);--Áo Cấp 3- Nam - Mộc
me.AddItem(4,8,3022,10,1,16);--Lưng Cấp 3- Nam - Mộc
me.AddItem(4,10,3022,10,5,16);--Tay Cấp 3- Nam - Mộc
me.AddItem(4,7,3022,10,4,16);--Giày Cấp 3- Nam - Mộc
me.AddItem(4,5,3022,10,3,16);--Liên Cấp 3- Nam - Mộc
me.AddItem(4,4,3022,10,1,16);--Nhẫn Cấp 3- Nam - Mộc
me.AddItem(4,11,3022,10,5,16);--Bội Cấp 3- Nam - Mộc
me.AddItem(4,6,3022,10,4,16);--Phù Cấp 3- Nam - Mộc
me.AddItem(4,9,3024,10,3,16);--Nón Cấp 3- Nam - Thủy
me.AddItem(4,3,3024,10,1,16);--Áo Cấp 3- Nam - Thủy
me.AddItem(4,8,3024,10,5,16);--Lưng Cấp 3- Nam - Thủy
me.AddItem(4,10,3024,10,4,16);--Tay Cấp 3- Nam - Thủy
me.AddItem(4,7,3024,10,2,16);--Giày Cấp 3- Nam - Thủy
me.AddItem(4,5,3024,10,1,16);--Liên Cấp 3- Nam - Thủy
me.AddItem(4,4,3024,10,5,16);--Nhẫn Cấp 3- Nam - Thủy
me.AddItem(4,11,3024,10,4,16);--Bội Cấp 3- Nam - Thủy
me.AddItem(4,6,3024,10,2,16);--Phù Cấp 3- Nam - Thủy
me.AddItem(4,9,3026,10,4,16);--Nón Cấp 3- Nam - Hỏa
me.AddItem(4,3,3026,10,2,16);--Áo Cấp 3- Nam - Hỏa
me.AddItem(4,8,3026,10,3,16);--Lưng Cấp 3- Nam - Hỏa
me.AddItem(4,10,3026,10,1,16);--Tay Cấp 3- Nam - Hỏa
me.AddItem(4,7,3026,10,5,16);--Giày Cấp 3- Nam - Hỏa
me.AddItem(4,5,3026,10,2,16);--Liên Cấp 3- Nam - Hỏa
me.AddItem(4,4,3026,10,3,16);--Nhẫn Cấp 3- Nam - Hỏa
me.AddItem(4,11,3026,10,1,16);--Bội Cấp 3- Nam - Hỏa
me.AddItem(4,6,3026,10,5,16);--Phù Cấp 3- Nam - Hỏa
me.AddItem(4,9,3028,10,5,16);--Nón Cấp 3- Nam - Thổ
me.AddItem(4,3,3028,10,4,16);--Áo Cấp 3- Nam - Thổ
me.AddItem(4,8,3028,10,2,16);--Lưng Cấp 3- Nam - Thổ
me.AddItem(4,10,3028,10,3,16);--Tay Cấp 3- Nam - Thổ
me.AddItem(4,7,3028,10,1,16);--Giày Cấp 3- Nam - Thổ
me.AddItem(4,5,3028,10,4,16);--Liên Cấp 3- Nam - Thổ
me.AddItem(4,4,3028,10,2,16);--Nhẫn Cấp 3- Nam - Thổ
me.AddItem(4,11,3028,10,3,16);--Bội Cấp 3- Nam - Thổ
me.AddItem(4,6,3028,10,1,16);--Phù Cấp 3- Nam - Thổ


end
function tbKTST150:Item_Nu_TB()
me.AddItem(4,9,3021,10,1,16);--Nón Cấp 3- Nữ - Kim
me.AddItem(4,3,3021,10,5,16);--Áo Cấp 3- Nữ - Kim
me.AddItem(4,8,3021,10,4,16);--Lưng Cấp 3- Nữ - Kim
me.AddItem(4,10,3021,10,2,16);--Tay Cấp 3- Nữ - Kim
me.AddItem(4,7,3021,10,3,16);--Giày Cấp 3- Nữ - Kim
me.AddItem(4,5,3021,10,5,16);--Liên Cấp 3- Nữ - Kim
me.AddItem(4,4,3021,10,4,16);--Nhẫn Cấp 3- Nữ - Kim
me.AddItem(4,11,3021,10,2,16);--Bội Cấp 3- Nữ - Kim
me.AddItem(4,6,3021,10,3,16);--Phù Cấp 3- Nữ - Kim
me.AddItem(4,9,3023,10,2,16);--Nón Cấp 3- Nữ - Mộc
me.AddItem(4,3,3023,10,3,16);--Áo Cấp 3- Nữ - Mộc
me.AddItem(4,8,3023,10,1,16);--Lưng Cấp 3- Nữ - Mộc
me.AddItem(4,10,3023,10,5,16);--Tay Cấp 3- Nữ - Mộc
me.AddItem(4,7,3023,10,4,16);--Giày Cấp 3- Nữ - Mộc
me.AddItem(4,5,3023,10,3,16);--Liên Cấp 3- Nữ - Mộc
me.AddItem(4,4,3023,10,1,16);--Nhẫn Cấp 3- Nữ - Mộc
me.AddItem(4,11,3023,10,5,16);--Bội Cấp 3- Nữ - Mộc
me.AddItem(4,6,3023,10,4,16);--Phù Cấp 3- Nữ - Mộc
me.AddItem(4,9,3025,10,3,16);--Nón Cấp 3- Nữ - Thủy
me.AddItem(4,3,3025,10,1,16);--Áo Cấp 3- Nữ - Thủy
me.AddItem(4,8,3025,10,5,16);--Lưng Cấp 3- Nữ - Thủy
me.AddItem(4,10,3025,10,4,16);--Tay Cấp 3- Nữ - Thủy
me.AddItem(4,7,3025,10,2,16);--Giày Cấp 3- Nữ - Thủy
me.AddItem(4,5,3025,10,1,16);--Liên Cấp 3- Nữ - Thủy
me.AddItem(4,4,3025,10,5,16);--Nhẫn Cấp 3- Nữ - Thủy
me.AddItem(4,11,3025,10,4,16);--Bội Cấp 3- Nữ - Thủy
me.AddItem(4,6,3025,10,2,16);--Phù Cấp 3- Nữ - Thủy
me.AddItem(4,9,3027,10,4,16);--Nón Cấp 3- Nữ - Hỏa
me.AddItem(4,3,3027,10,2,16);--Áo Cấp 3- Nữ - Hỏa
me.AddItem(4,8,3027,10,3,16);--Lưng Cấp 3- Nữ - Hỏa
me.AddItem(4,10,3027,10,1,16);--Tay Cấp 3- Nữ - Hỏa
me.AddItem(4,7,3027,10,5,16);--Giày Cấp 3- Nữ - Hỏa
me.AddItem(4,5,3027,10,2,16);--Liên Cấp 3- Nữ - Hỏa
me.AddItem(4,4,3027,10,3,16);--Nhẫn Cấp 3- Nữ - Hỏa
me.AddItem(4,11,3027,10,1,16);--Bội Cấp 3- Nữ - Hỏa
me.AddItem(4,6,3027,10,5,16);--Phù Cấp 3- Nữ - Hỏa
me.AddItem(4,9,3029,10,5,16);--Nón Cấp 3- Nữ - Thổ
me.AddItem(4,3,3029,10,4,16);--Áo Cấp 3- Nữ - Thổ
me.AddItem(4,8,3029,10,2,16);--Lưng Cấp 3- Nữ - Thổ
me.AddItem(4,10,3029,10,3,16);--Tay Cấp 3- Nữ - Thổ
me.AddItem(4,7,3029,10,1,16);--Giày Cấp 3- Nữ - Thổ
me.AddItem(4,5,3029,10,4,16);--Liên Cấp 3- Nữ - Thổ
me.AddItem(4,4,3029,10,2,16);--Nhẫn Cấp 3- Nữ - Thổ
me.AddItem(4,11,3029,10,3,16);--Bội Cấp 3- Nữ - Thổ
me.AddItem(4,6,3029,10,1,16);--Phù Cấp 3- Nữ - Thổ


end
function tbKTST150:MaxThanhLinh()
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
function tbKTST150:MaxAn()
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

function tbKTST150:MaxF1()
--Thiên Gia
for value = 1441,1446 do
me.DelFightSkill(value)
end
--Thất Kiếm
for value = 1771,1777 do
me.DelFightSkill(value)
end
--Kỹ năng khác
for value = 1718,1720 do
me.DelFightSkill(value)
end

me.AddFightSkill(1748,50) --Thiên Gia
me.AddFightSkill(1756,50) --Thất Kiếm
me.AddFightSkill(1757,20) --Tâm Hải Già Lam -Tầng 1

end

function tbKTST150:KTGH()
--Ngự Lôi Thần Kiếm Quyết
me.AddFightSkill(1781,40)
--Diệt Thế Diễm Thiên Trảm
me.AddFightSkill(1741,40)


end
function tbKTST150:Ngua_NT()
me.AddItem(1,12,1992,10);--Tinh Vân Đạp Nguyệt
me.AddItem(1,12,1993,10);--Đạp Viêm Ô Nha
me.AddItem(1,25,1838,1);--Thanh Sơn Đại Bào
me.AddItem(1,25,1839,1);--Lam Nguyệt Bào
me.AddItem(1,25,1840,1);--Chung Linh Chu Tước Hầu Bào
me.AddItem(1,25,1841,1);--Quân Tử Chiến
me.AddItem(1,25,1842,1);--Hồng Trần Hiệp Đại Bào
me.AddItem(1,25,1843,1);--Thanh Hoa Ngọc Chiếu Bào
me.AddItem(1,25,1844,1);--Thanh Sơn Thường Bào
me.AddItem(1,25,1845,1);--Lam Nguyệt Y
me.AddItem(1,25,1846,1);--Chung Linh Chu Tước Hầu Y
me.AddItem(1,25,1847,1);--Thục Nữ Y
me.AddItem(1,25,1848,1);--Hồng Trần Hiệp Thường Y
me.AddItem(1,25,1849,1);--Thanh Hoa Ngọc Chiếu Y
me.AddItem(1,26,1716,1);--Thanh Sơn Đại Khôi
me.AddItem(1,26,1717,1);--Lam Nguyệt Khôi
me.AddItem(1,26,1718,1);--Chung Linh Chu Tước Hầu Khôi
me.AddItem(1,26,1719,1);--Quân Tử Chiến
me.AddItem(1,26,1720,1);--Hồng Trần Hiệp Đại Khôi
me.AddItem(1,26,1721,1);--Thanh Hoa Ngọc Chiếu Khôi
me.AddItem(1,26,1722,1);--Thanh Sơn Thường Khôi
me.AddItem(1,26,1723,1);--Lam Nguyệt Kế
me.AddItem(1,26,1724,1);--Chung Linh Chu Tước Hầu Kế
me.AddItem(1,26,1725,1);--Thục Nữ Kế
me.AddItem(1,26,1726,1);--Hồng Trần Hiệp Thường Kế
me.AddItem(1,26,1727,1);--Thanh Hoa Ngọc Chiếu Kế


end


	--me.CallClientScript({"UiManager:OpenWindow", "UI_THIENGIATHANKHI"});
	--me.AddStackItem(18,1,0000,0,{bForceBind=1,},0);		--item khoá
	--me.AddStackItem(18,1,000,0,nil,0);				--item không khoá
	--me.SetItemTimeout(me.AddItem(18,1,0000,0,1), os.date("%Y/%m/%d/%H/%M/00", GetTime() + 21600 * 24 * 5));			--item thời hạn
	--me.AddItem(18,1,000,000);
	--me.AddFightSkill(0000,0000); --ID Skill

	--[[for i = 1,4 do
	me.AddItem(18,1,8038,i);
	end]]

--[[local ID = 3593;
local LeverBoss = 1;
local He = 1;
local nMapId, nPosX, nPosY = me.GetWorldPos();
KNpc.Add2(ID, LeverBoss, He, nMapId, nPosX, nPosY)
me.Msg(string.format("Đã gọi Boss tại map số %d tọa độ %d/%d",nMapId,nPosX/8,nPosY/16));]]

	--me.AddFightSkill(0000,0000);
	--me.AddStackItem(18,1,245,1,nil,10);				--Bản đồ Vạn Hoa Cốc
	
	
---------NOTE THÔNG TIN QUAN TRỌNG---------
--me.AddTitle(256,1,1,1); -- DANH HIỆU GIẢI PK MỚI
--me.SetItemTimeout(me.AddItem(1,14,1,10,1), os.date("%Y/%m/%d/%H/%M/00", GetTime() + 86400*7)); --Bí kiếp giải PK


---------Reload_Csript---------


---------Test_Number_1---------
function tbKTST150:TestItemGames1()
local TuCachAnhHung = me.GetTask(4537,1);
me.Msg(string.format("Điểm Tư Cách Anh Hùng là %d",TuCachAnhHung));

end


function tbKTST150:TestItemGames2()

me.SetTask(4537,1,15);
end


function tbKTST150:TestItemGames3()

local ID = 7423;
local LeverBoss = 120;
local He = 3;
local nMapId, nPosX, nPosY = me.GetWorldPos();
KNpc.Add2(ID, LeverBoss, He, nMapId, nPosX, nPosY)



end



function tbKTST150:TestItemGames4()
me.AddPotential(10000);


end


function tbKTST150:TestItemGames5()	




end

function tbKTST150:TestItemGames6()





end



function tbKTST150:TestItemGames7()	

end


function tbKTST150:TestItemGames8()



end

function tbKTST150:TestItemGames9()



end

function tbKTST150:TestItemGames10()	



end


function tbKTST150:TestItemGames11()


end

function tbKTST150:TestItemGames12()




end



--Boss Du Long Thường
function tbKTST150:GoiBossTest00()
local ID = 8168;
local LeverBoss = 120;
local He = -1;
local nMapId, nPosX, nPosY = me.GetWorldPos();
KNpc.Add2(ID, LeverBoss, He, nMapId, nPosX, nPosY)
--me.Msg(string.format("Đã gọi Boss tại map số %d tọa độ %d/%d",nMapId,nPosX/8,nPosY/16));


end


function tbKTST150:GoiBossTest01()
local ID = 8169;
local LeverBoss = 120;
local He = -1;
local nMapId, nPosX, nPosY = me.GetWorldPos();
KNpc.Add2(ID, LeverBoss, He, nMapId, nPosX, nPosY)
--me.Msg(string.format("Đã gọi Boss tại map số %d tọa độ %d/%d",nMapId,nPosX/8,nPosY/16));




end



function tbKTST150:Save_ToaDo()
local Moc_AddNPC = me.GetTask(8000,1);





	--local ID = 7418; --1
	--local ID = 7417; --2
	local ID = 2676;
	--local ID = 8165;
	local LeverBoss = 1;
	local He = 1;

	local KhuVuc = "1-"..(Moc_AddNPC+1).."";
	--local KhuVuc = "1";
    local MapID, X, Y = me.GetWorldPos();
	local nMapId, nPosX, nPosY = me.GetWorldPos();
	local pNpc = KNpc.Add2(ID, LeverBoss, He, nMapId, nPosX, nPosY)
	pNpc.szName = ""..KhuVuc.."";
	
	me.SetTask(8000, 1, Moc_AddNPC + 1);
    me.Msg("Get ID Map<enter><color=green>MapID: <color=orange>"..MapID.."<color> - <color=orange>"..X.."/"..Y.."<color> - <color=orange>"..(X*32).." / "..(Y*32));
	local szFile = "\\script\\SaveToaDo_Dev\\SaveToaDo_Dev.txt";
    KFile.AppendFile(szFile, ""..MapID.."\t"..X.."\t"..Y.."\t"..(X*32).."\t"..(Y*32).."\t"..KhuVuc.."\r\n");    
end


---------IDMap---------

function tbKTST150:ID_MapMoi_1()
	local Id_Test = 2114;

	local szMsg = "";
	local tbOpt = {
	{"<color=yellow>Đến: "..Id_Test.."<color>", me.NewWorld, Id_Test,(53344/32), (100960/32)};
	
	{"<bclr=0,0,200><color=white>Map_1-badaoshanzhuang1 ", me.NewWorld, 1801,1655, 3224};
	{"<bclr=0,0,200><color=white>Map_2-baimasi ", me.NewWorld, 1802,1511, 3085};
	{"<bclr=0,0,200><color=white>Map_2-baimasi ", me.NewWorld, 1802,1652, 3100};
	{"<bclr=0,0,200><color=white>Map_3-caishiji2007 ", me.NewWorld, 1803,2014, 3483};
	{"<bclr=0,0,200><color=white>Map_3-caishiji2007 ", me.NewWorld, 1803,1843, 3690};
	{"<bclr=0,0,200><color=white>Map_3-caishiji2007 ", me.NewWorld, 1803,1643, 3903};
	{"<bclr=0,0,200><color=white>Map_4-chiwumizong ", me.NewWorld, 1804,1609, 3117};
	{"<bclr=0,0,200><color=white>Map_5-dahuanggongzhengduo ", me.NewWorld, 1805,1787, 3450};
	{"<bclr=0,0,200><color=white>Map_6-fenglingdukou ", me.NewWorld, 1806,1602, 3230};
	{"<bclr=0,0,200><color=white>Map_7-gumuxunbao ", me.NewWorld, 1807,1539, 3456};
	{"<bclr=0,0,200><color=white>Map_7-gumuxunbao ", me.NewWorld, 1807,1551, 3250};
	{"<bclr=0,0,200><color=white>Map_7-gumuxunbao ", me.NewWorld, 1807,1523, 3088};
	{"<bclr=0,0,200><color=white>Map_7-gumuxunbao ", me.NewWorld, 1807,1632, 3183};
	{"<bclr=0,0,200><color=white>Map_8-haibinzhizhan ", me.NewWorld, 1808,1859, 3663};
	{"<bclr=0,0,200><color=white>Map_9-jiazuzhuangyuan ", me.NewWorld, 1809,1627, 3312};
	{"<bclr=0,0,200><color=white>Map_10-kf_caishiji ", me.NewWorld, 1810,1842, 3690};
	{"<bclr=0,0,200><color=white>Map_11-kunlunxu ", me.NewWorld, 1811,1609, 3048};
	{"<bclr=0,0,200><color=white>Map_11-kunlunxu ", me.NewWorld, 1811,1820, 3122};
	{"<bclr=0,0,200><color=white>Map_11-kunlunxu ", me.NewWorld, 1811,1912, 3278};
	{"<bclr=0,0,200><color=white>Map_12-pochengzhan_1 ", me.NewWorld, 1812,1610, 3179};	
	{"<bclr=0,0,200><color=white>Map_13-qianjibian ", me.NewWorld, 1813,1610, 3117};
	{"<bclr=0,0,200><color=white>Map_13-qianjibian ", me.NewWorld, 1813,1539, 3208};
	{"<bclr=0,0,200><color=white>Map_13-qianjibian ", me.NewWorld, 1813,1510, 3403};
	{"<bclr=0,0,200><color=white>Map_14-qianjige ", me.NewWorld, 1814,1509, 3401};
	{"<bclr=0,0,200><color=white>Map_15-shenmidao ", me.NewWorld, 1815,1727, 3291};
	{"<bclr=0,0,200><color=white>Map_16-shigushuyuan ", me.NewWorld, 1816,1715, 3552};
	{"<bclr=0,0,200><color=white>Map_17-suiyecheng ", me.NewWorld, 1817,1709, 3668};
	{"<bclr=0,0,200><color=white>Map_18-wujiezhijing_shang ", me.NewWorld, 1818,1954, 3404};
	{"<bclr=0,0,200><color=white>Map_19-wujiezhijing_xia ", me.NewWorld, 1819,1834, 3617};
	{"<bclr=0,0,200><color=white>Map_20-wujiezhijing_zhon ", me.NewWorld, 1820,1593, 3547};	
	{"<bclr=0,0,200><color=white>Map_21-xoyo_109 ", me.NewWorld, 1821,1590, 3159};
	{"<bclr=0,0,200><color=white>Map_22-zongmen ", me.NewWorld, 1822,1735, 3535};
	{"<bclr=0,0,200><color=white>Map_22-zongmen ", me.NewWorld, 1822,1816, 3298};
	{"<bclr=0,0,200><color=white>Map_22-zongmen ", me.NewWorld, 1822,1601, 3563};
	
	
	}
	Dialog:Say(szMsg,tbOpt);
end

function tbKTST150:ID_MapMoi()
	local szMsg = "";
	local tbOpt = {
	{"<bclr=0,0,200><color=white>Map_1-badaoshanzhuang1 ", me.NewWorld, 1801,1655, 3224};
	{"<bclr=0,0,200><color=white>Map_2-baimasi ", me.NewWorld, 1802,1511, 3085};
	{"<bclr=0,0,200><color=white>Map_3-caishiji2007 ", me.NewWorld, 1803,2014, 3483};
	{"<bclr=0,0,200><color=white>Map_4-chiwumizong ", me.NewWorld, 1804,1609, 3117};
	{"<bclr=0,0,200><color=white>Map_5-dahuanggongzhengduo ", me.NewWorld, 1805,1787, 3450};
	{"<bclr=0,0,200><color=white>Map_6-fenglingdukou ", me.NewWorld, 1806,1602, 3230};
	{"<bclr=0,0,200><color=white>Map_7-gumuxunbao ", me.NewWorld, 1807,1539, 3456};
	{"<bclr=0,0,200><color=white>Map_8-haibinzhizhan ", me.NewWorld, 1808,1859, 3663};
	{"<bclr=0,0,200><color=white>Map_9-jiazuzhuangyuan ", me.NewWorld, 1809,1627, 3312};
	{"<bclr=0,0,200><color=white>Map_10-kf_caishiji ", me.NewWorld, 1810,1842, 3690};
	{"<bclr=0,0,200><color=white>Map_11-kunlunxu ", me.NewWorld, 1811,1609, 3048};
	{"<bclr=0,0,200><color=white>Map_12-pochengzhan_1 ", me.NewWorld, 1812,1610, 3179};	
	{"<bclr=0,0,200><color=white>Map_13-qianjibian ", me.NewWorld, 1813,1610, 3117};
	{"<bclr=0,0,200><color=white>Map_14-qianjige ", me.NewWorld, 1814,1509, 3401};
	{"<bclr=0,0,200><color=white>Map_15-shenmidao ", me.NewWorld, 1815,1727, 3291};
	{"<bclr=0,0,200><color=white>Map_16-shigushuyuan ", me.NewWorld, 1816,1715, 3552};
	{"<bclr=0,0,200><color=white>Map_17-suiyecheng ", me.NewWorld, 1817,1709, 3668};
	{"<bclr=0,0,200><color=white>Map_18-wujiezhijing_shang ", me.NewWorld, 1818,1954, 3404};
	{"<bclr=0,0,200><color=white>Map_19-wujiezhijing_xia ", me.NewWorld, 1819,1834, 3617};
	{"<bclr=0,0,200><color=white>Map_20-wujiezhijing_zhon ", me.NewWorld, 1820,1593, 3547};	
	{"<bclr=0,0,200><color=white>Map_21-xoyo_109 ", me.NewWorld, 1821,1590, 3159};
	{"<bclr=0,0,200><color=white>Map_22-zongmen ", me.NewWorld, 1822,1735, 3535};
	{"<bclr=0,0,200><color=white>Map_22-zongmen ", me.NewWorld, 1822,1816, 3298};
	{"<bclr=0,0,200><color=white>Map_22-zongmen ", me.NewWorld, 1822,1601, 3563};
	
	
	
	}
	Dialog:Say(szMsg,tbOpt);
end



function tbKTST150:AddItem_Test()
local ParticularType = 1;
local nPoint = me.GetTask(5000,1);
local nPoint3 = (ParticularType + nPoint) - 1
local nPoint2 = ParticularType + nPoint

me.SetTask(5000,1,nPoint + 1);

for p1 = 1,40 do
me.ConsumeItemInBags(1, 18, 10, nPoint3, p1);
end

for p = 1,40 do
me.AddItem(18,10,nPoint2,p);
end


me.Msg(string.format("<color=cyan>STT hiện tại: <color=yellow>"..nPoint2.."<color>"));
--me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>STT hiện tại: <color=yellow>"..nPoint2.."<color>"});
end

function tbKTST150:ResetTask()
me.SetTask(5000,1,0);
end

function tbKTST150:ViewTask()
local nPoint = me.GetTask(5000,1);
local nPoint2 = (4000 + nPoint) - 1


me.Msg(string.format("STT "..nPoint2..""));
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>STT hiện tại: <color=yellow>"..nPoint2.."<color>"));
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>STT hiện tại: <color=yellow>"..nPoint2.."<color>"});

end


--Du Long Giác
function tbKTST150:DuLongGiac_Menu()

	local szMsg = "";
	local tbOpt = {
	{"<color=yellow>16-Đến: Bích Ba Động<color>", me.NewWorld, 2112,(1663), (3219)};
	
	--Csript Bản mới đã xong:
	--{"<bclr=0,0,200><color=white>Đổi Ngoại Trang Áo Full 1", SpecialEvent.DoiNgoaiTrang_Ao.OnDialog, SpecialEvent.DoiNgoaiTrang_Ao},
	--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhiệm Vụ Ngày: Tàn Sát Lệnh", SpecialEvent.NVNgay_DanhBoss.OnDialog,SpecialEvent.NVNgay_DanhBoss});
	--table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhiệm Vụ Ngày: Thu Thập Bảo Vật", SpecialEvent.NVNgay_ThuThapVatPham.OnDialog,SpecialEvent.NVNgay_ThuThapVatPham});
	
	
	}
	Dialog:Say(szMsg,tbOpt);
end


function tbKTST150:testmenu_Boss()
	local szMsg = "Xin hãy chọn:";
	local tbOpt = 
	{
 {"<color=gold>Gọi 2 Boss", self.Goi_2Boss, self},
 {"<color=yellow>Gọi 7 Boss", self.Goi_7Boss, self},
 {"<color=cyan>Xóa tất cả", self.XoaToanBo, self},
 {"<color=green>Reload", self.Reload_Boss, self},


};
Dialog:Say(szMsg, tbOpt);
end

function tbKTST150:Goi_2Boss()
	local pNpc1 = KNpc.Add2(8194, 120, 1,30,1642,3999);--Test Npc Cố định 6		
	local pNpc1 = KNpc.Add2(8195, 120, 1,30,1658,3995);--Test Npc Cố định 7		





end


function tbKTST150:Goi_7Boss()


	local pNpc1 = KNpc.Add2(8189, 120, 1,30,1642,3999);--Test Npc Cố định 1		
	local pNpc1 = KNpc.Add2(8190, 120, 1,30,1650,3999);--Test Npc Cố định 2		
	local pNpc1 = KNpc.Add2(8191, 120, 1,30,1657,3998);--Test Npc Cố định 3		
	local pNpc1 = KNpc.Add2(8192, 120, 1,30,1642,4010);--Test Npc Cố định 4		
	local pNpc1 = KNpc.Add2(8193, 120, 1,30,1650,4009);--Test Npc Cố định 5		
	local pNpc1 = KNpc.Add2(8194, 120, 1,30,1657,4009);--Test Npc Cố định 6		
	local pNpc1 = KNpc.Add2(8195, 120, 1,30,1650,3989);--Test Npc Cố định 7		

end


function tbKTST150:XoaToanBo()

ResetMapNpc(30); --RESET ALL BOSS/NPC ADD = CSRIPT TRONG MA


end

function tbKTST150:Reload_Boss()
DoScript("\\script\\npc\\basesetting.lua");
	local pNpc1 = KNpc.Add2(8189, 120, 1,30,1642,3999);--Test Npc Cố định 1		
	local pNpc1 = KNpc.Add2(8190, 120, 1,30,1650,3999);--Test Npc Cố định 2		
	local pNpc1 = KNpc.Add2(8191, 120, 1,30,1657,3998);--Test Npc Cố định 3		
	local pNpc1 = KNpc.Add2(8192, 120, 1,30,1642,4010);--Test Npc Cố định 4		
	local pNpc1 = KNpc.Add2(8193, 120, 1,30,1650,4009);--Test Npc Cố định 5		
	local pNpc1 = KNpc.Add2(8194, 120, 1,30,1657,4009);--Test Npc Cố định 6		
	local pNpc1 = KNpc.Add2(8195, 120, 1,30,1650,3989);--Test Npc Cố định 7		

ResetMapNpc(30); --RESET ALL BOSS/NPC ADD = CSRIPT TRONG MA


end
