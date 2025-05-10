local tbActive_KDM = {};
SpecialEvent.Active_KDM = tbActive_KDM;

tbActive_KDM.TaskGroup_Time = 4000;	--Task Thời Gian
tbActive_KDM.TaskID_Time = 1;			--Task Thời Gian

tbActive_KDM.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbActive_KDM.TaskIDTT = 1;

tbActive_KDM.DK_Level = 170;

tbActive_KDM.LevelFF = 10;

tbActive_KDM.GioiHanDV = 4;


tbActive_KDM.MocCamChe_1 = 6;
tbActive_KDM.MocCamChe_2 = 7;
tbActive_KDM.MocCamChe_3 = 8;
tbActive_KDM.MocCamChe_4 = 9;

--Reset Khắc Di Môn--
tbActive_KDM.TaskGroup_Reset_Day = 4103;			--Task Reset Ngày của các Task trong KDM
tbActive_KDM.Reset_Day = 1;

tbActive_KDM.TaskGroup_SoLanMoTru = 4093;			--Điếm số lần mở Chi Ngạo Hỏa Trụ KDM trong ngày
tbActive_KDM.TaskID_SoLanMoTru = 1;

tbActive_KDM.TaskGroup_TimeKDM = 4090;				-- Tast Thời gian Dong Ha Lan Son (KDM)
tbActive_KDM.TaskID_TimeKDM = 1;

tbActive_KDM.TaskGroup_TimeLH_CoQuat = 4091;		-- Tast Thời gian Long Hon Co Quat
tbActive_KDM.TaskID_TimeLH_CoQuat = 1;

tbActive_KDM.TaskGroup_TimeLH_BiBao = 4092;			-- Tast Thời gian Long Hon Bi Bao
tbActive_KDM.TaskID_TimeLH_BiBao = 1;

tbActive_KDM.TaskGroup_SoLanGietQuaiBoss = 4101;		--Điếm số lần Giết Quái-Boss KDM (1: quái thường, 2: Tàn Hồn, 3: Thái Hư)
tbActive_KDM.TaskID_Quai = 1;		 				--1: quái thường
tbActive_KDM.TaskID_TanHonCoLong = 2; 				--2: Tàn Hồn
tbActive_KDM.TaskID_ThaiHuCoLong = 3; 				--3: Thái Hư

tbActive_KDM.TaskGroup_SoLanMoTru_LoiVao = 4102;		--Điếm số lần mở lối vào-Trụ KDM (1: tìm được Hỏa trụ, 2: tìm được lối vào Bí Bảo, 3: tìm được lối vào Cổ Quật)
tbActive_KDM.TaskID_Tim_HoaTru = 1;		 		 	--1: tìm được Hỏa trụ
tbActive_KDM.TaskID_Tim_LoiVaoBiBao = 2;			 	--2: tìm được lối vào Bí Bảo
tbActive_KDM.TaskID_Tim_LoiVaoCoQuat = 3;		 	--3: tìm được lối vào Cổ Quật
tbActive_KDM.TaskID_Tim_TanHonCoLong = 4;		 	--4: tìm được Tàn Hồn Cổ Long

tbActive_KDM.TaskGroup_RuongTanHon = 4094;	--Task Mở Rương Tàn Hồn Cổ Long ngày
tbActive_KDM.TaskID_RuongTanHon = 1;
--Reset Khắc Di Môn--


function tbActive_KDM:OnDialog()
DoScript("\\script\\boss\\KhacDiMon\\Active_KDM.lua");

local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);

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

local szMsg = "<color=yellow>Lại thêm 1 kẻ liều chết đến tìm ta, ngươi muốn truy cầu danh lợi hay tiêu diệt Long Hồn cứu giúp muôn dân?<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Thời gian còn: <color=yellow>"..nPoint.."<color> ngày<color>\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	

table.insert(tbOpt,{"<color=yellow>Ta muốn đi đến đó!<color>", self.Enter_KDM, self});
Dialog:Say(szMsg, tbOpt);
end

function tbActive_KDM:GetMantleLevel(pPlayer)
    local pItem = pPlayer.GetItem(Item.ROOM_EQUIP, Item.EQUIPPOS_MANTLE, 0);
    if not pItem then
        return 0;
    end
    return pItem.nLevel;
end

function tbActive_KDM:Enter_KDM()
	if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
		me.NewWorld(2000, 1626, 3187);
		Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
		return;
	end

	local GioiHanCaoThu = 8;
	local nLevel_DanhVongST = me.GetReputeLevel(14, 1);
		if nLevel_DanhVongST < GioiHanCaoThu then
		Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Hoạt động Cao Thủ Cấp Danh vọng Sát Thần Trên 7, không thể tham gia!<color>"));
		Dialog:Say("<color=yellow>Hoạt động Cao Thủ nguy hiểm giới hạn yêu cầu Cấp Danh vọng Sát Thần Trên 7,\n<color=red>Ngươi đang cấp: "..(nLevel_DanhVongST-1).."<color>, Không thể tham gia!<color>", {"Ta biết rồi"});
		return 0;
	end

	if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
		return; 
	end

	if Boss.KhacDiMon:_CheckState() ~= 1 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Rất tiếc, hệ thống Khắc Di Môn tạm thời đóng cửa!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Rất tiếc, hệ thống Khắc Di Môn tạm thời đóng cửa!<color>"));
		return;
	end
		

	if me.nLevel < self.DK_Level then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Đẳng cấp này mà ngươi muốn đi sao! Đạt "..self.DK_Level.." trở lên rồi gặp ta!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Đẳng cấp này mà ngươi muốn đi sao! Đạt "..self.DK_Level.." trở lên rồi gặp ta!<color>"));
		return;
	end
	

	if me.nFaction <= 0 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Tên chữ trắng cũng muốn vào trong? Mau tìm một môn phái gia nhập rồi hãy tìm ta!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Tên chữ trắng cũng muốn vào trong? Mau tìm một môn phái gia nhập rồi hãy tìm ta!<color>"));
		return;
	end

    if self:GetMantleLevel(me) < self.LevelFF then
        Dialog:SendBlackBoardMsg(me, string.format("<color=red>Đẳng cấp Phi Phong chưa đạt Cấp <color=cyan>"..self.LevelFF.."<color> Không thể vào nơi nguy hiểm!<color>"));
        return;
    end

    local nLevel = me.GetReputeLevel(14, 1);
	if nLevel < self.GioiHanDV then
	Dialog:SendBlackBoardMsg(me, string.format("<color=red>Danh vọng Sát Thần PK chưa đạt Cấp <color=cyan>"..(self.GioiHanDV-1).."<color> Không thể vào nơi nguy hiểm!<color>"));
	return;
	end


	
	local nUseTime = me.GetTask(Boss.KhacDiMon.TASK_GROUP_ID, Boss.KhacDiMon.TASK_USE_TIME);
	if nUseTime >= Boss.KhacDiMon.MAX_DAILY_TIME then
		Dialog:Say("Thời gian cấp phép để vào Khắc Di Môn hôm nay đã dùng hết, ngày mai hãy đến!", {"Ta biết rồi"});
		return;
	end

	local SoLanMoTru = me.GetTask(self.TaskGroup_SoLanMoTru,self.TaskID_SoLanMoTru);
	if me.GetTask(self.TaskGroup_SoLanMoTru, self.TaskID_SoLanMoTru) >= self.MocCamChe_4 then
		me.NewWorld(775,1446,3357);
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Hôm nay ngươi <color=cyan>"..SoLanMoTru.."<color> lần mở Hỏa Trụ! Hôm nay không thể vào KDM nữa!<color>"));
		return;
	end


	me.SetFightState(0);
	me.NewWorld(2105, 1497, 2978);--An toàn
end
