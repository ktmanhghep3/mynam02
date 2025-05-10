local tbBonus_KhuyenMai = {};
SpecialEvent.Bonus_KhuyenMai = tbBonus_KhuyenMai;


tbBonus_KhuyenMai.TaskGourp = 4119; 			--Task Giới Hạn nhận thưởng Bonus Khuyến Mãi
tbBonus_KhuyenMai.TaskId_300K = 1; 				--Task Nhận Thưởng Mốc: 300K
tbBonus_KhuyenMai.TaskId_500K = 2; 				--Task Nhận Thưởng Mốc: 500K
tbBonus_KhuyenMai.TaskId_1000K = 3; 			--Task Nhận Thưởng Mốc: 1000K
tbBonus_KhuyenMai.TaskId_1200K = 4; 			--Task Nhận Thưởng Mốc: 1200K
tbBonus_KhuyenMai.TaskId_1500K = 5; 			--Task Nhận Thưởng Mốc: 1500K



function tbBonus_KhuyenMai:OnDialog()
DoScript("\\script\\Update2024\\Event\\Special_files\\Bonus_KhuyenMai.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"


	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
--if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then


--Nhận Thưởng Mốc: 300K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng tích lũy: 300K<color>", self.Moc_300K, self});
end

--Nhận Thưởng Mốc: 500K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng tích lũy: 500K<color>", self.Moc_500K, self});
end


--Nhận Thưởng Mốc: 1000K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng tích lũy: 1000K<color>", self.Moc_1000K, self});
end


--Nhận Thưởng Mốc: 1200K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng tích lũy: 1200K<color>", self.Moc_1200K, self});
end


--Nhận Thưởng Mốc: 1500K
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận thưởng tích lũy: 1500K<color>", self.Moc_1500K, self});
end


table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end



function tbBonus_KhuyenMai:Moc_300K()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId_300K);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongBonusKM.txt";
	local Ten_MocTichLuy = "Mốc Tích Lũy 300K";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3038,6,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv6
me.AddStackItem(18,1,3027,1,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 6-Vĩnh Viễn

local SoLanSuKien= me.GetTask(4097,1);
me.SetTask(4097, 1, SoLanSuKien + 50);--Nhận mốc Bánh chưng:+ 50



me.SetTask(self.TaskGourp,self.TaskId_300K,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Ten_MocTichLuy.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã nhận thưởng Bonus Quà Tích Lũy <color=red>"..Ten_MocTichLuy.."<color> Sự Kiện Khuyến Mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbBonus_KhuyenMai:Moc_500K()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId_500K);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongBonusKM.txt";
	local Ten_MocTichLuy = "Mốc Tích Lũy 500K";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3038,7,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv7
me.AddStackItem(18,1,3027,2,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 7-Vĩnh Viễn

local SoLanSuKien= me.GetTask(4097,1);
me.SetTask(4097, 1, SoLanSuKien + 50);--Nhận mốc Bánh chưng:+ 50

me.AddStackItem(18,1,3032,6,{bForceBind=1,},5);--Phong chữ hoàn hảo: Năm Mới Giáp Thìn 2024



me.SetTask(self.TaskGourp,self.TaskId_500K,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Ten_MocTichLuy.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã nhận thưởng Bonus Quà Tích Lũy <color=red>"..Ten_MocTichLuy.."<color> Sự Kiện Khuyến Mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbBonus_KhuyenMai:Moc_1000K()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId_1000K);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongBonusKM.txt";
	local Ten_MocTichLuy = "Mốc Tích Lũy 1000K";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3038,10,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv10
me.AddStackItem(18,1,3027,5,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 10-Vĩnh Viễn

local SoLanSuKien= me.GetTask(4097,1);
me.SetTask(4097, 1, SoLanSuKien + 100);--Nhận mốc Bánh chưng:+ 50

me.AddStackItem(18,1,3032,6,{bForceBind=1,},10);--Phong chữ hoàn hảo: Năm Mới Giáp Thìn 2024
me.AddStackItem(18,1,3036,2,{bForceBind=1,},1);--Tử Sắc Kiếm - Đồng hành 8 Kỹ năng
me.AddStackItem(18,1,3041,5,{bForceBind=1,},10);--Túi Danh Vọng Sát Thần 200 Điểm
me.AddStackItem(18,1,3006,4,{bForceBind=1,},5000);--Thần Binh Phổ



me.SetTask(self.TaskGourp,self.TaskId_1000K,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Ten_MocTichLuy.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã nhận thưởng Bonus Quà Tích Lũy <color=red>"..Ten_MocTichLuy.."<color> Sự Kiện Khuyến Mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbBonus_KhuyenMai:Moc_1200K()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId_1200K);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongBonusKM.txt";
	local Ten_MocTichLuy = "Mốc Tích Lũy 1200K";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3038,12,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv12
me.AddStackItem(18,1,3027,7,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 12-Vĩnh Viễn

local SoLanSuKien= me.GetTask(4097,1);
me.SetTask(4097, 1, SoLanSuKien + 100);--Nhận mốc Bánh chưng:+ 50

me.AddStackItem(18,1,3032,6,{bForceBind=1,},15);--Phong chữ hoàn hảo: Năm Mới Giáp Thìn 2024
me.AddStackItem(18,1,3036,3,{bForceBind=1,},1);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng
me.AddStackItem(18,1,3041,5,{bForceBind=1,},10);--Túi Danh Vọng Sát Thần 200 Điểm
me.AddStackItem(18,1,3006,4,{bForceBind=1,},5000);--Thần Binh Phổ



me.SetTask(self.TaskGourp,self.TaskId_1200K,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Ten_MocTichLuy.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã nhận thưởng Bonus Quà Tích Lũy <color=red>"..Ten_MocTichLuy.."<color> Sự Kiện Khuyến Mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbBonus_KhuyenMai:Moc_1500K()
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId_1500K);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\Update2024\\Event\\Special_files\\Log_NhanThuongBonusKM.txt";
	local Ten_MocTichLuy = "Mốc Tích Lũy 1500K";


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3038,20,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv20
me.AddStackItem(18,1,3027,15,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn

local SoLanSuKien= me.GetTask(4097,1);
me.SetTask(4097, 1, SoLanSuKien + 200);--Nhận mốc Bánh chưng:+ 50

me.AddStackItem(18,1,3032,6,{bForceBind=1,},25);--Phong chữ hoàn hảo: Năm Mới Giáp Thìn 2024
me.AddStackItem(18,1,3036,3,{bForceBind=1,},1);--Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng
me.AddStackItem(18,1,3041,5,{bForceBind=1,},10);--Túi Danh Vọng Sát Thần 200 Điểm
me.AddStackItem(18,1,3006,4,{bForceBind=1,},5000);--Thần Binh Phổ
me.AddStackItem(18,1,3037,1,{bForceBind=1,},1);--Quà 1.000.000 VNĐ Tùy chọn



me.SetTask(self.TaskGourp,self.TaskId_1500K,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Ten_MocTichLuy.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng người chơi: <color=cyan>"..me.szName.."<color> đã nhận thưởng Bonus Quà Tích Lũy <color=red>"..Ten_MocTichLuy.."<color> Sự Kiện Khuyến Mãi thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

