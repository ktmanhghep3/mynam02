local tbCheckTaskChungKDM ={};
SpecialEvent.CheckTaskChungKDM= tbCheckTaskChungKDM;

--Reset Khắc Di Môn--
tbCheckTaskChungKDM.TaskGroup_Reset_Day = 4103;			--Task Reset Ngày của các Task trong KDM
tbCheckTaskChungKDM.Reset_Day = 1;

tbCheckTaskChungKDM.TaskGroup_SoLanMoTru = 4093;			--Điếm số lần mở Chi Ngạo Hỏa Trụ KDM trong ngày
tbCheckTaskChungKDM.TaskID_SoLanMoTru = 1;

tbCheckTaskChungKDM.TaskGroup_TimeKDM = 4090;				-- Tast Thời gian Dong Ha Lan Son (KDM)
tbCheckTaskChungKDM.TaskID_TimeKDM = 1;

tbCheckTaskChungKDM.TaskGroup_TimeLH_CoQuat = 4091;		-- Tast Thời gian Long Hon Co Quat
tbCheckTaskChungKDM.TaskID_TimeLH_CoQuat = 1;

tbCheckTaskChungKDM.TaskGroup_TimeLH_BiBao = 4092;			-- Tast Thời gian Long Hon Bi Bao
tbCheckTaskChungKDM.TaskID_TimeLH_BiBao = 1;

tbCheckTaskChungKDM.TaskGroup_SoLanGietQuaiBoss = 4101;		--Điếm số lần Giết Quái-Boss KDM (1: quái thường, 2: Tàn Hồn, 3: Thái Hư)
tbCheckTaskChungKDM.TaskID_Quai = 1;		 				--1: quái thường
tbCheckTaskChungKDM.TaskID_TanHonCoLong = 2; 				--2: Tàn Hồn
tbCheckTaskChungKDM.TaskID_ThaiHuCoLong = 3; 				--3: Thái Hư

tbCheckTaskChungKDM.TaskGroup_SoLanMoTru_LoiVao = 4102;		--Điếm số lần mở lối vào-Trụ KDM (1: tìm được Hỏa trụ, 2: tìm được lối vào Bí Bảo, 3: tìm được lối vào Cổ Quật)
tbCheckTaskChungKDM.TaskID_Tim_HoaTru = 1;		 		 	--1: tìm được Hỏa trụ
tbCheckTaskChungKDM.TaskID_Tim_LoiVaoBiBao = 2;			 	--2: tìm được lối vào Bí Bảo
tbCheckTaskChungKDM.TaskID_Tim_LoiVaoCoQuat = 3;		 	--3: tìm được lối vào Cổ Quật
tbCheckTaskChungKDM.TaskID_Tim_TanHonCoLong = 4;		 	--4: tìm được Tàn Hồn Cổ Long

tbCheckTaskChungKDM.TaskGroup_RuongTanHon = 4094;	--Task Mở Rương Tàn Hồn Cổ Long ngày
tbCheckTaskChungKDM.TaskID_RuongTanHon = 1;
--Reset Khắc Di Môn--


function tbCheckTaskChungKDM:OnDialog()
DoScript("\\script\\boss\\KhacDiMon\\CheckTaskChungKDM.lua");

self:Reset_Task()
local SoLan_HoaTru = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHANADDHOATRUKDM);
local SoLan_AddThaiHuCoLong = KGblTask.SCGetDbTaskInt(DBTASD_ADDBOSS_THAIHUCOLONG);
local SoLanMoTru= me.GetTask(self.TaskGroup_SoLanMoTru,self.TaskID_SoLanMoTru);

local SoLan_GietQuai = me.GetTask(self.TaskGroup_SoLanGietQuaiBoss,self.TaskID_Quai);--
local SoLan_GietTanHon = me.GetTask(self.TaskGroup_SoLanGietQuaiBoss,self.TaskID_TanHonCoLong);--
local SoLan_GietThaiHu = me.GetTask(self.TaskGroup_SoLanGietQuaiBoss,self.TaskID_ThaiHuCoLong);--

local SoLan_Tim_HoaTru = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_HoaTru);--
local SoLan_Tim_TanHonCoLong = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_TanHonCoLong);--
local SoLan_Tim_LoiVaoBiBao = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_LoiVaoBiBao);--
local SoLan_Tim_LoiVaoCoQuat = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_LoiVaoCoQuat);--
local SoLan_RuongTanHon = me.GetTask(self.TaskGroup_RuongTanHon,self.TaskID_RuongTanHon);

local szMsg = "<color=gold>=========================\n"..
"<color=red>Chiến Sự chung Server:<color>\n"..
"<color=yellow>- Chi Ngạo Hỏa Trụ đánh quái còn: "..SoLan_HoaTru.."/18<color>\n"..
"<color=yellow>- Triệu Thái Hư Cổ Long ngày Server: "..SoLan_AddThaiHuCoLong.."/3<color>\n"..
"<color=gold>=========================\n"..
"<color=green>=========================\n"..
"<color=red>Thành tích Cá nhân trong ngày:<color>\n"..
"<color=cyan>- Số lần mở Chi Ngạo Hỏa Trụ: "..SoLanMoTru.."/5<color>\n"..
"<color=cyan>- Tiêu diệt quân địch: "..SoLan_GietQuai.."<color>\n"..
"<color=cyan>- Đánh bại Tàn Hồn Cổ Long: "..SoLan_GietTanHon.."<color>\n"..
"<color=cyan>- Đánh bại Thái Hư Cổ Long: "..SoLan_GietThaiHu.."<color>\n"..
"<color=cyan>- Tìm thấy Hỏa Trụ: "..SoLan_Tim_HoaTru.."<color>\n"..
"<color=cyan>- Tìm thấy Tàn Hồn Cổ Long: "..SoLan_Tim_TanHonCoLong.."<color>\n"..
"<color=cyan>- Tìm thấy Lối Vào Long Hồn Bí Bảo: "..SoLan_Tim_LoiVaoBiBao.."<color>\n"..
"<color=cyan>- Tìm thấy Lối Vào Long Hồn Cổ Quật: "..SoLan_Tim_LoiVaoCoQuat.."<color>\n"..
"<color=cyan>- Rương Tàn hồn Cổ Long mở trong ngày: "..SoLan_RuongTanHon.."<color>\n"..
"<color=green>=========================\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	


table.insert(tbOpt,{"<color=yellow>Danh Sách Anh Hùng tìm thấy Hỏa Trụ của Server hôm nay<color>", self.DS_HoaTru, self});
table.insert(tbOpt,{"<color=yellow>Danh Sách Anh Hùng Triệu hoán Thái Hư Cổ Long của Server hôm nay<color>", self.DS_TrieuHoan, self});

Dialog:Say(szMsg, tbOpt);
end


function tbCheckTaskChungKDM:DS_HoaTru()
local szHistory = "\\script\\boss\\KhacDiMon\\npc\\Log_AnhHung.txt";


	local tbFileOut = Lib:LoadTabFile(szHistory);
	local tbOpt = "    <color=yellow>《Anh Hùng Truy Chi Ngạo Hỏa Trụ 》<color> \n";
	local MauChu = {'red','cyan','pink','green','blue','blue','blue','blue','blue','blue'};
	local x = 1;
    for _, tbRowOut in pairs(tbFileOut) do
        local TenNhanVat = tbRowOut["TenNhanVat"] or "";
        local ThoiGian = tbRowOut["ThoiGian"] or "";
        local Show = ''..TenNhanVat..' - '..ThoiGian..'\n';
        tbOpt = tbOpt..Show;
        x = x + 1;
    end
    Dialog:Say(tbOpt);


end

function tbCheckTaskChungKDM:DS_TrieuHoan()
local szHistory_THCL = "\\script\\boss\\KhacDiMon\\npc\\Log_TrieuHoi_ThaiHuCoLong.txt";


	local tbFileOut = Lib:LoadTabFile(szHistory_THCL);
	local tbOpt = "<color=yellow>《Anh Hùng Triệu Thái Hư Cổ Long 》<color> \n";
	local MauChu = {'red','cyan','pink','green','blue','blue','blue','blue','blue','blue'};
	local x = 1;
    for _, tbRowOut in pairs(tbFileOut) do
        local TenNhanVat = tbRowOut["TenNhanVat"] or "";
        local ThoiGian = tbRowOut["ThoiGian"] or "";
        local Show = ''..TenNhanVat..' - '..ThoiGian..'\n';
        tbOpt = tbOpt..Show;
        x = x + 1;
    end
    Dialog:Say(tbOpt);



end

function tbCheckTaskChungKDM:Reset_Task()
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
end
