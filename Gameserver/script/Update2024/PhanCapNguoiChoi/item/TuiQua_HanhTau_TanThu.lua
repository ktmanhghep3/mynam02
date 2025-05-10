local tbTuiQua_TanThu = Item:GetClass("TuiQua_HanhTau_TanThu");

tbTuiQua_TanThu.TaskGroup_Nhan = 4083;	--Task Nhận
tbTuiQua_TanThu.TaskID_Nhan1 = 1;			--Task Nhận Gói 1
tbTuiQua_TanThu.TaskID_Nhan2 = 2;			--Task Nhận Gói 2
tbTuiQua_TanThu.TaskID_Nhan3 = 3;			--Task Nhận Gói 3
tbTuiQua_TanThu.TaskID_Nhan4 = 4;			--Task Nhận Gói 4
tbTuiQua_TanThu.TaskID_Nhan5 = 5;			--Task Nhận Gói 5
tbTuiQua_TanThu.TaskID_Nhan6 = 6;			--Task Nhận Gói ngôi sao
tbTuiQua_TanThu.TaskID_Nhan_Tong = 7;			--Task Nhận Tổng

tbTuiQua_TanThu.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbTuiQua_TanThu.TaskIDTT = 1;

tbTuiQua_TanThu.TaskGroup_Time = 4000;	--Task Thời Gian
tbTuiQua_TanThu.TaskID_Time = 1;			--Task Thời Gian

tbTuiQua_TanThu.HuyChuong = 1440;
tbTuiQua_TanThu.CapHuyChuong = 3;

tbTuiQua_TanThu.TG_Kiem = 1441;
tbTuiQua_TanThu.TG_Thuong = 1442;
tbTuiQua_TanThu.TG_Chuy = 1443;
tbTuiQua_TanThu.TG_Dao = 1444;
tbTuiQua_TanThu.TG_Bong = 1445;
tbTuiQua_TanThu.TG_Tien = 1446;
tbTuiQua_TanThu.CapThienGia = 2;

tbTuiQua_TanThu.Cap_Ho_Tro = 190;

tbTuiQua_TanThu.Item_Ruong = {18,1,3104,1};


function tbTuiQua_TanThu:OnUse()

	local szMsg = "<color=yellow>Bạn hãy lựa chọn phần thưởng:";
	local tbOpt = {
			
			{"Nhận 500 Ngôi Sao May Mắn", self.PThuong_1, self},
			{"Nhận Gói Hành Tẩu Giang Hồ 1", self.PThuong_2, self},
			{"Nhận Gói Hành Tẩu Giang Hồ 2", self.PThuong_3, self},
			{"Nhận Gói Hành Tẩu Giang Hồ 3", self.PThuong_4, self},
			{"Nhận Gói Hành Tẩu Giang Hồ 4", self.PThuong_5, self},
			{"Nhận Gói Hành Tẩu Giang Hồ 5", self.PThuong_6, self},


			{"<color=pink>Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"},
	};
	Dialog:Say(szMsg, tbOpt);
end

function tbTuiQua_TanThu:PThuong_2()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan1);

local nCodeTanThu = me.GetTask(self.TaskGroupTT, self.TaskIDTT);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end


if nCodeTanThu < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=cyan>Chưa Kích hoạt Code Tân Thủ, không thể nhận thưởng!<color>"));
return 0; 
end

--Phần Thưởng--
--me.AddRepute(14,1,-100000);--Reset về 0
me.AddStackItem(18,1,3001,1,{bForceBind=1,},1000);--Lệnh Bài Sát Thần PK
me.AddStackItem(18,1,3008,1,{bForceBind=1,},100);--Túi Quà Sự Kiện 1
me.AddStackItem(18,1,3009,1,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 2-Vĩnh Viễn
me.AddStackItem(18,1,3003,1,{bForceBind=1,},1);--Túi Quà Mốc 5
me.AddFightSkill(self.HuyChuong,self.CapHuyChuong);--Huy Chương
me.AddFightSkill(self.TG_Kiem,self.CapThienGia);--TG_Kiem
me.AddFightSkill(self.TG_Thuong,self.CapThienGia);--TG_Thuong
me.AddFightSkill(self.TG_Chuy,self.CapThienGia);--TG_Chuy
me.AddFightSkill(self.TG_Dao,self.CapThienGia);--TG_Dao
me.AddFightSkill(self.TG_Bong,self.CapThienGia);--TG_Bong
me.AddFightSkill(self.TG_Tien,self.CapThienGia);--TG_Tien
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + 5);--Thời gian Online
--End--

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan1,1);--Task Tính lần đã nhận





local HanhTau = 1;
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_TuiQuaHanhTau.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\t"..HanhTau.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ "..HanhTau.."! tại <color=cyan>Túi Quà Hành Tẩu Tân Thủ<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbTuiQua_TanThu:PThuong_3()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan2);

local nHuyChuong = me.GetSkillLevel(self.HuyChuong);
local nTG_Kiem = me.GetSkillLevel(self.TG_Kiem);
local nTG_Thuong = me.GetSkillLevel(self.TG_Thuong);
local nTG_Chuy = me.GetSkillLevel(self.TG_Chuy);
local nTG_Dao = me.GetSkillLevel(self.TG_Dao);
local nTG_Bong = me.GetSkillLevel(self.TG_Bong);
local nTG_Tien = me.GetSkillLevel(self.TG_Tien);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3001,1,{bForceBind=1,},200);--Lệnh Bài Sát Thần PK
me.AddStackItem(18,1,3008,1,{bForceBind=1,},100);--Túi Quà Sự Kiện 1
me.AddStackItem(18,1,3009,1,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 2-Vĩnh Viễn
me.AddStackItem(18,1,3003,2,{bForceBind=1,},1);--Túi Quà Mốc 10
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + 5);--Thời gian Online

if nHuyChuong < self.CapHuyChuong then
me.AddFightSkill(self.HuyChuong,self.CapHuyChuong);--HuyChuong
end
if nTG_Kiem < self.CapThienGia then
me.AddFightSkill(self.TG_Kiem,self.CapThienGia);--TG_Kiem
end
if nTG_Thuong < self.CapThienGia then
me.AddFightSkill(self.TG_Thuong,self.CapThienGia);--TG_Thuong
end
if nTG_Chuy < self.CapThienGia then
me.AddFightSkill(self.TG_Chuy,self.CapThienGia);--TG_Chuy
end
if nTG_Dao < self.CapThienGia then
me.AddFightSkill(self.TG_Dao,self.CapThienGia);--TG_Dao
end
if nTG_Bong < self.CapThienGia then
me.AddFightSkill(self.TG_Bong,self.CapThienGia);--TG_Bong
end
if nTG_Tien < self.CapThienGia then
me.AddFightSkill(self.TG_Tien,self.CapThienGia);--TG_Tien
end
--End--

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan2,1);--Task Tính lần đã nhận

local HanhTau = 2;
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_TuiQuaHanhTau.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\t"..HanhTau.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ "..HanhTau.."! tại <color=cyan>Túi Quà Hành Tẩu Tân Thủ<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbTuiQua_TanThu:PThuong_4()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan3);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3338,1,{bForceBind=1,},15);--Trăng Tròn





--End--

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan3,1);--Task Tính lần đã nhận

local HanhTau = 3;
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_TuiQuaHanhTau.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\t"..HanhTau.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ "..HanhTau.."! tại <color=cyan>Túi Quà Hành Tẩu Tân Thủ<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbTuiQua_TanThu:PThuong_5()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan4);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3019,1,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 3-Vĩnh Viễn
me.AddStackItem(18,1,3000,1,{bForceBind=1,},100);--Rương Tinh Thạch
me.AddStackItem(18,1,3338,7,{bForceBind=1,},50);--Chuông Vàng Trung Thu
me.AddStackItem(18,1,3017,1,{bForceBind=1,},1);--Chìa Khóa Hoành Thành
me.AddStackItem(18,1,3006,1,{bForceBind=1,},200);--Bí Ẩn Sát Thần

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan4,1);--Task Tính lần đã nhận
--add level--
	--[[if me.nLevel >= self.Cap_Ho_Tro then
		me.Msg("<color=yellow>Bạn đã đạt cấp <color=cyan>"..me.nLevel.."<color>, không thể nhận cấp <color=green>"..self.Cap_Ho_Tro.."<color> thêm được nữa!<color>");
		return 0;
	end]]
	
	if me.nLevel < self.Cap_Ho_Tro then
		me.AddLevel(self.Cap_Ho_Tro-me.nLevel);
	end
--End--


local HanhTau = 4;
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_TuiQuaHanhTau.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\t"..HanhTau.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ "..HanhTau.."! tại <color=cyan>Túi Quà Hành Tẩu Tân Thủ<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbTuiQua_TanThu:PThuong_6()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan5);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3000,1,{bForceBind=1,},100);--Rương Tinh Thạch
me.AddStackItem(18,1,3338,7,{bForceBind=1,},50);--Chuông Vàng Trung Thu
me.AddStackItem(18,1,3006,1,{bForceBind=1,},100);--Bí Ẩn Sát Thần
me.AddStackItem(18,1,3338,1,{bForceBind=1,},5);--Trăng Tròn
me.AddStackItem(18,1,1331,4,{bForceBind=1,},12);--Tinh Thạch Thánh Hỏa
me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan5,1);--Task Tính lần đã nhận
--End--


local HanhTau = 5;
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_TuiQuaHanhTau.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\t"..HanhTau.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ "..HanhTau.."! tại <color=cyan>Túi Quà Hành Tẩu Tân Thủ<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbTuiQua_TanThu:PThuong_1()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan6);

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},500);--Rương Tinh Thạch


me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan6,1);--Task Tính lần đã nhận
--End--


local HanhTau = "Ngôi Sao May Mắn";
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_TuiQuaHanhTau.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\t"..HanhTau.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ "..HanhTau.."! tại <color=cyan>Túi Quà Hành Tẩu Tân Thủ<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
