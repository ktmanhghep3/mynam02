local tbNpc = Npc:GetClass("ChiNgaoHoaTru");

tbNpc.Time_OpenTru = 18;

--Reset Khắc Di Môn--
tbNpc.TaskGroup_Reset_Day = 4103;			--Task Reset Ngày của các Task trong KDM
tbNpc.Reset_Day = 1;

tbNpc.TaskGroup_SoLanMoTru = 4093;			--Điếm số lần mở Chi Ngạo Hỏa Trụ KDM trong ngày
tbNpc.TaskID_SoLanMoTru = 1;

tbNpc.TaskGroup_TimeKDM = 4090;				-- Tast Thời gian Dong Ha Lan Son (KDM)
tbNpc.TaskID_TimeKDM = 1;

tbNpc.TaskGroup_TimeLH_CoQuat = 4091;		-- Tast Thời gian Long Hon Co Quat
tbNpc.TaskID_TimeLH_CoQuat = 1;

tbNpc.TaskGroup_TimeLH_BiBao = 4092;		-- Tast Thời gian Long Hon Bi Bao
tbNpc.TaskID_TimeLH_BiBao = 1;

tbNpc.TaskGroup_SoLanGietQuaiBoss = 4101;		--Điếm số lần Giết Quái-Boss KDM (1: quái thường, 2: Tàn Hồn, 3: Thái Hư)
tbNpc.TaskID_Quai = 1;		 				--1: quái thường
tbNpc.TaskID_TanHonCoLong = 2; 				--2: Tàn Hồn
tbNpc.TaskID_ThaiHuCoLong = 3; 				--3: Thái Hư

tbNpc.TaskGroup_SoLanMoTru_LoiVao = 4102;		--Điếm số lần mở lối vào-Trụ KDM (1: tìm được Hỏa trụ, 2: tìm được lối vào Bí Bảo, 3: tìm được lối vào Cổ Quật)
tbNpc.TaskID_Tim_HoaTru = 1;		 		 	--1: tìm được Hỏa trụ
tbNpc.TaskID_Tim_LoiVaoBiBao = 2;			 	--2: tìm được lối vào Bí Bảo
tbNpc.TaskID_Tim_LoiVaoCoQuat = 3;		 	--3: tìm được lối vào Cổ Quật
tbNpc.TaskID_Tim_TanHonCoLong = 4;		 	--4: tìm được Tàn Hồn Cổ Long


--Reset Khắc Di Môn--

tbNpc.MocCamChe_1 = 6;
tbNpc.MocCamChe_2 = 7;
tbNpc.MocCamChe_3 = 8;
tbNpc.MocCamChe_4 = 9;

tbNpc.TaskGroup_TimesKDM = 4090;
tbNpc.TaskID_TimesKDM = 1;

tbNpc.ID_Boss_TanHonCoLong = 8048;	--Boss Tàn Hồn Cổ Long
tbNpc.Level_Boss_TanHonCoLong = 150;

tbNpc.ID_LongHonBiBao = 8041;	--Lối vào Long Hồn Bí Bảo
tbNpc.Level_LongHonBiBao = 120;

tbNpc.ID_LongHonCoQuat = 8042;	--Lối vào Long Hồn Cổ Quật
tbNpc.Level_LongHonCoQuat = 120;

tbNpc.TaskGroup_RuongTanHon = 4094;	--Task Mở Rương Tàn Hồn Cổ Long ngày
tbNpc.TaskID_RuongTanHon = 1;


function tbNpc:OnDialog()
DoScript("\\script\\boss\\KhacDiMon\\npc\\ChiNgaoHoaTru.lua");

local SoLanMoTru= me.GetTask(self.TaskGroup_SoLanMoTru,self.TaskID_SoLanMoTru);

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if me.GetTask(self.TaskGroup_Reset_Day, self.Reset_Day) < nDate then
me.SetTask(self.TaskGroup_Reset_Day, self.Reset_Day, nDate);


	me.SetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru, 0);		--Reset Số lần mở Hỏa Trụ
	me.SetTask(self.TaskGroup_TimeKDM, self.TaskID_TimeKDM, 0);				--Reset Thời gian Dong Ha Lan Son (KDM)
	me.SetTask(self.TaskGroup_TimeLH_CoQuat, self.TaskID_TimeLH_CoQuat, 0);	--Reset Thời gian Long Hon Co Quat
	me.SetTask(self.TaskGroup_TimeLH_BiBao, self.TaskID_TimeLH_BiBao, 0);	--Reset Thời gian Long Hon Bi Bao
	me.SetTask(self.TaskGroup_RuongTanHon, self.TaskID_RuongTanHon, 0);		--Reset Mở Rương Tàn Hồn Cổ Long ngày
	
	me.SetTask(self.TaskGroup_SoLanGietQuaiBoss, self.TaskID_Quai, 0);				--Reset quái thường
	me.SetTask(self.TaskGroup_SoLanGietQuaiBoss, self.TaskID_TanHonCoLong, 0);		--Reset Tàn Hồn
	me.SetTask(self.TaskGroup_SoLanGietQuaiBoss, self.TaskID_ThaiHuCoLong, 0);		--Reset Thái Hư
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_HoaTru, 0);		--Reset tìm được Hỏa trụ
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_TanHonCoLong, 0);		--Reset tìm được Tàn Hồn Cổ Long
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_LoiVaoBiBao, 0);		--Reset tìm được lối vào Bí Bảo
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_LoiVaoCoQuat, 0);		--Reset tìm được lối vào Cổ Quật
end 

local szMsg = 
"<color=yellow>Số lần mở trụ hôm nay: <color=red>"..SoLanMoTru.."<color><color>\n"..
"<color=cyan>Quy định:\n"..
"- 1 nhân vật chỉ mở tối đa 5 Hỏa Trụ mỗi ngày,\n"..
"Vi phạm:\n"..
"<color=green>~ chạm vào Hỏa Trụ lần thứ 6 sẽ bị truyền tống ra ngoài.<color>\n"..
"<color=violet>~ Cố tình chạm vào lần thứ 7 trừ đi 15 phút trong Đông Hạ Lan Sơn.<color>\n"..
"<color=pink>~ Cố tình chạm vào lần thứ 8 trừ đi 30 phút trong Đông Hạ Lan Sơn.<color>\n"..
"<color=red>~ Cố tình chạm vào lần thứ 9 cấm chế vào Đông Hạ Lan Sơn ngày hôm đó.<color>\n"


local tbOpt = 
{
{"<bclr=0,0,200><color=white>Ta muốn mở Hỏa Trụ<color>", self.Open_Tru, self};
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbNpc:Open_Tru()
	local tbEvent = 
	{
		Player.ProcessBreakEvent.emEVENT_MOVE,
		Player.ProcessBreakEvent.emEVENT_ATTACK,
		Player.ProcessBreakEvent.emEVENT_SITE,
		Player.ProcessBreakEvent.emEVENT_USEITEM,
		Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
		Player.ProcessBreakEvent.emEVENT_DROPITEM,
		Player.ProcessBreakEvent.emEVENT_SENDMAIL,
		Player.ProcessBreakEvent.emEVENT_TRADE,
		Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
		Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
		Player.ProcessBreakEvent.emEVENT_LOGOUT,
		Player.ProcessBreakEvent.emEVENT_DEATH,
		Player.ProcessBreakEvent.emEVENT_ATTACKED,
	}
    GeneralProcess:StartProcess("<color=green>Đang mở Trụ...<color>", self.Time_OpenTru * Env.GAME_FPS, {self.GetQuest, self, me.nId, him.dwId}, nil, tbEvent);
end

function tbNpc:GetQuest(nPlayerId, nNpcId)
local pNpc = KNpc.GetById(nNpcId);
pNpc.Delete();
local Time	= os.date("%Hh:%M", GetTime());
local nMapId, nPosX, nPosY = me.GetWorldPos();
local Times_DuyTri_LongHonBiBao = 1800; --- Thời gian duy trì
local Times_DuyTri_LongHonCoQuat = 5400; --- Thời gian duy trì
local nBaseMultip = 0;-- kinh nghiệm nhận được
local tbNpc	= Npc:GetClass("gouhuonpc");
local SoLanMoTru = me.GetTask(self.TaskGroup_SoLanMoTru,self.TaskID_SoLanMoTru);
me.SetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru, SoLanMoTru + 1);


	if me.GetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru) == self.MocCamChe_1 then
		me.NewWorld(775,1446,3357);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Hôm nay ngươi đã <color=cyan>"..(SoLanMoTru+1).."<color> lần mở Hỏa Trụ! Hãy cẩn thận tẩu hỏa nhập ma!<color>"});
		return;
	end

	if me.GetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru) == self.MocCamChe_2 then
		local nUseTime = me.GetTask(self.TaskGroup_TimesKDM, self.TaskID_TimesKDM);--Trừ 15 phút--
		me.SetTask(self.TaskGroup_TimesKDM, self.TaskID_TimesKDM, nUseTime + 900);
		
		me.NewWorld(775,1446,3357);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Hôm nay ngươi đã <color=cyan>"..(SoLanMoTru+1).."<color> lần mở Hỏa Trụ! Bị giảm đi 15 phút hoạt động KDM!<color>"});
		return;
	end

	if me.GetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru) == self.MocCamChe_3 then
		local nUseTime = me.GetTask(self.TaskGroup_TimesKDM, self.TaskID_TimesKDM);--Trừ 15 phút--
		me.SetTask(self.TaskGroup_TimesKDM, self.TaskID_TimesKDM, nUseTime + 1800);
		
		me.NewWorld(775,1446,3357);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Hôm nay ngươi đã <color=cyan>"..(SoLanMoTru+1).."<color> lần mở Hỏa Trụ! Bị giảm đi 30 phút hoạt động KDM!<color>"});
		return;
	end

	if me.GetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru) == self.MocCamChe_4 then
		me.NewWorld(775,1446,3357);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Hôm nay ngươi <color=cyan>"..(SoLanMoTru+1).."<color> lần mở Hỏa Trụ! Hôm nay không thể vào KDM nữa!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Hôm nay ngươi <color=cyan>"..(SoLanMoTru+1).."<color> lần mở Hỏa Trụ! Hôm nay không thể vào KDM nữa!<color>"));
		return;
	end
-- Phần thưởng Cố định--
	me.AddStackItem(18,1,3941,2,nil,5);--Mảnh Cường Nhân (Chưa Giám Định)
	
---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {65,25,10};
	local tbAward = {1,2,3};

	for i = 1, 3 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
if (tbAward[nIndex]==1) then
	local SoLan_Tim_TanHonCoLong = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_TanHonCoLong);--
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_TanHonCoLong, SoLan_Tim_TanHonCoLong + 1);

	local pNpc = KNpc.Add2(self.ID_Boss_TanHonCoLong , self.Level_Boss_TanHonCoLong, -1 , nMapId, nPosX, nPosY);--Boss: Tàn Hồn Cổ Long (tỷ lệ Cao)
	pNpc.szName = "{"..me.szName.."} tìm thấy";
	local nMapId,nX,nY = me.GetWorldPos();
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : <color=Turquoise>"..me.szName.."<color> đã tìm thấy <color=pink>Tàn Hồn Cổ Long<color> Tại <color=green>"..GetMapNameFormId(nMapId).."<color><color>");	

elseif (tbAward[nIndex]==2) then
	local SoLan_Tim_LoiVaoBiBao = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_LoiVaoBiBao);
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_LoiVaoBiBao, SoLan_Tim_LoiVaoBiBao + 1);

	local pNpc = KNpc.Add2(self.ID_LongHonBiBao , self.Level_LongHonBiBao, -1 , nMapId, nPosX, nPosY);--Lối vào Long Hồn Bí Bảo (tỷ lệ thấp)
	pNpc.szName = "{"..me.szName.."} tìm thấy";
	if pNpc then
	tbNpc:InitGouHuo(pNpc.dwId, 0,	Times_DuyTri_LongHonBiBao, 5, 45, 0, 0)
	tbNpc:StartNpcTimer(pNpc.dwId)	
	end
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : <color=Turquoise>"..me.szName.."<color> cơ duyên may mắn đã tìm ra <color=pink>Lối vào Long Hồn Bí Bảo<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nLối vào có thời gian tồn tại là <color=red>30 phút<color>! Hãy nhanh chóng thời gian!<color>");	
	Player:SendMsgToKinOrTong(me, " Đã tìm thấy [Lối Vào Long Hồn Bí Bảo] !!!!", 0);-- Thông Báo Gia Tộc
	Player:SendMsgToKinOrTong(me, " Đã tìm thấy [Lối Vào Long Hồn Bí Bảo] !!!!", 1);-- Thông Báo Bang Hội

elseif (tbAward[nIndex]==3) then
	me.AddStackItem(18,1,3101,1,{bForceBind=1,},1);--Túi Thẻ Hoạt Động
	local SoLan_Tim_LoiVaoCoQuat = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_LoiVaoCoQuat);
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_LoiVaoCoQuat, SoLan_Tim_LoiVaoCoQuat + 1);

	local pNpc = KNpc.Add2(self.ID_LongHonCoQuat , self.Level_LongHonCoQuat, -1 , nMapId, nPosX, nPosY);--Lối vào Long Hồn Cổ Quật (tỷ lệ Cực Thấp)
	pNpc.szName = "{"..me.szName.."} tìm thấy";
	if pNpc then
	tbNpc:InitGouHuo(pNpc.dwId, 0,	Times_DuyTri_LongHonCoQuat, 5, 45, 0, 0)
	tbNpc:StartNpcTimer(pNpc.dwId)	
	end
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : <color=Turquoise>"..me.szName.."<color> cơ duyên cực kỳ may mắn đã tìm ra <color=pink>Lối vào Long Hồn Cổ Quật<color> Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\nLối vào có thời gian tồn tại là <color=red>90 phút<color>! Hãy nhanh chóng thời gian!<color>");	
	Player:SendMsgToKinOrTong(me, " Đã tìm thấy [Lối vào Long Hồn Cổ Quật] !!!!", 0);-- Thông Báo Gia Tộc
	Player:SendMsgToKinOrTong(me, " Đã tìm thấy [Lối vào Long Hồn Cổ Quật] !!!!", 1);-- Thông Báo Bang Hội
end



me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Hôm nay ngươi đã <color=cyan>"..(SoLanMoTru+1).."<color> lần mở Hỏa Trụ!!<color>"});
return 0;
end  