local tbHanhTauGiangHo2 ={};
SpecialEvent.Add_HanhTauGiangHo2= tbHanhTauGiangHo2;
DoScript("\\script\\Update_T9\\GoiHoTro_HanhTauGiangHo\\Add_HanhTauGiangHo2.lua");


tbHanhTauGiangHo2.TaskGroup_Nhan = 4083;	--Task Nhận
tbHanhTauGiangHo2.TaskID_Nhan = 2;			--Task Nhận Gói 2
tbHanhTauGiangHo2.TaskID_Nhan3 = 3;			--Task Nhận Gói 3
tbHanhTauGiangHo2.TaskID_Nhan4 = 4;			--Task Nhận Gói 4
tbHanhTauGiangHo2.TaskID_Nhan5 = 5;			--Task Nhận Gói 5


tbHanhTauGiangHo2.TaskGroup_Time = 4000;	--Task Thời Gian
tbHanhTauGiangHo2.TaskID_Time = 1;			--Task Thời Gian

tbHanhTauGiangHo2.HuyChuong = 1440;
tbHanhTauGiangHo2.CapHuyChuong = 4;

tbHanhTauGiangHo2.TG_Kiem = 1441;
tbHanhTauGiangHo2.TG_Thuong = 1442;
tbHanhTauGiangHo2.TG_Chuy = 1443;
tbHanhTauGiangHo2.TG_Dao = 1444;
tbHanhTauGiangHo2.TG_Bong = 1445;
tbHanhTauGiangHo2.TG_Tien = 1446;
tbHanhTauGiangHo2.CapThienGia = 3;

function tbHanhTauGiangHo2:OnDialog()
DoScript("\\script\\Update_T9\\GoiHoTro_HanhTauGiangHo\\Add_HanhTauGiangHo2.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=red>- Thời gian còn: <color=yellow>"..nPoint.."<color> ngày<color>\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--
if (me.szAccount == "kiemthest2") or (me.szAccount == "minhtungkg") or (me.szAccount == "sakernd") or (me.szAccount == "haikutedn2212") or (me.szAccount == "ngotuankaka") or (me.szAccount == "khoaphan") or (me.szAccount == "longtkhuc") or (me.szAccount == "lingnga") or (me.szAccount == "vuhasoo") or (me.szAccount == "hoangngankiem") or (me.szAccount == "satthan1") or (me.szAccount == "nvphat") or (me.szAccount == "hoanghainn") or (me.szAccount == "nganmap001") or (me.szAccount == "longbeo") or (me.szAccount == "buithohk") or (me.szAccount == "havinh") or (me.szAccount == "ngocnhuy1") or (me.szAccount == "kentb1988") or (me.szAccount == "docnhan30") or (me.szAccount == "vipkinh") or (me.szAccount == "hungphuongabc") or (me.szAccount == "haikutedn2212") or (me.szAccount == "bodauto") or (me.szAccount == "vuhasooo") or (me.szAccount == "satthan2") or (me.szAccount == "trieuchau") or (me.szAccount == "hhhggg1") or (me.szAccount == "anhchangcodl") or (me.szAccount == "anhduclc90") or (me.szAccount == "susu") or (me.szAccount == "satthanpk5") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=cyan>Nhận Gói Hỗ Trợ Hành Tẩu Giang Hồ 2<color>", self.NhanDong1, self});
end

if (me.szAccount == "kiemthest2") or (me.szAccount == "longtkhuc") or (me.szAccount == "phiminhtuan") or (me.szAccount == "vuhasoo") or (me.szAccount == "minhtungkg") or (me.szAccount == "satthan1") or (me.szAccount == "hoanghainn") or (me.szAccount == "ngotuankaka") or (me.szAccount == "sakernd") or (me.szAccount == "hoangngankiem") or (me.szAccount == "nganmap001") or (me.szAccount == "longbeo") or (me.szAccount == "lingnga") or (me.szAccount == "buithohk") or (me.szAccount == "havinh") or (me.szAccount == "ngocnhuy1") or (me.szAccount == "kentb1988") or (me.szAccount == "docnhan30") or (me.szAccount == "vipkinh") or (me.szAccount == "hungphuongabc") or (me.szAccount == "haikutedn2212") or (me.szAccount == "bodauto") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "vuhasooo") or (me.szAccount == "satthan2") or (me.szAccount == "trieuchau") or (me.szAccount == "hhhggg1") or (me.szAccount == "anhchangcodl") or (me.szAccount == "anhduclc90") or (me.szAccount == "susu") or (me.szAccount == "satthanpk5") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=cyan>Nhận Gói Hỗ Trợ Hành Tẩu Giang Hồ 3<color>", self.NhanDong2, self});
end

if (me.szAccount == "kiemthest2") or (me.szAccount == "sakernd") or (me.szAccount == "ngotuankaka") or (me.szAccount == "longtkhuc") or (me.szAccount == "hoanghainn") or (me.szAccount == "lingnga") or (me.szAccount == "satthan1") or (me.szAccount == "hoangngankiem") or (me.szAccount == "minhtungkg") or (me.szAccount == "havinh") or (me.szAccount == "ngocnhuy1") or (me.szAccount == "buithohk") or (me.szAccount == "kentb1988") or (me.szAccount == "vipkinh") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "docnhan30") or (me.szAccount == "hungphuongabc") or (me.szAccount == "haikutedn2212") or (me.szAccount == "bodauto") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "vuhasooo") or (me.szAccount == "satthan2") or (me.szAccount == "trieuchau") or (me.szAccount == "hhhggg1") or (me.szAccount == "anhchangcodl") or (me.szAccount == "anhduclc90") or (me.szAccount == "susu") or (me.szAccount == "satthanpk5") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=cyan>Nhận Gói Hỗ Trợ Hành Tẩu Giang Hồ 4<color>", self.NhanDong4, self});
end

if (me.szAccount == "sakernd") or (me.szAccount == "minhtungkg") or (me.szAccount == "ngocnhuy1") or (me.szAccount == "kentb1988") or (me.szAccount == "longbeo") or (me.szAccount == "ngotuankaka") or (me.szAccount == "buithohk") or (me.szAccount == "longtkhuc") or (me.szAccount == "vuhasoo") or (me.szAccount == "lingnga") or (me.szAccount == "hoangngankiem") or (me.szAccount == "kiemthest2") or (me.szAccount == "satthan1") or (me.szAccount == "ngocnhuy1") or (me.szAccount == "docnhan30") or (me.szAccount == "vipkinh") or (me.szAccount == "hungphuongabc") or (me.szAccount == "haikutedn2212") or (me.szAccount == "hoanghainn") or (me.szAccount == "bodauto") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "vuhasooo") or (me.szAccount == "satthan2") or (me.szAccount == "trieuchau") or (me.szAccount == "hhhggg1") or (me.szAccount == "anhchangcodl") or (me.szAccount == "anhduclc90")or (me.szAccount == "susu") or (me.szAccount == "satthanpk5")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "")or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Gói Hỗ Trợ Hành Tẩu Giang Hồ 5 (17/12/2023)<color>", self.NhanDong5, self});
end








Dialog:Say(szMsg, tbOpt);
end

function tbHanhTauGiangHo2:NhanDong1()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
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

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_HanhTauGiangHo2.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ 2! tại <color=cyan>Lễ Quan<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbHanhTauGiangHo2:NhanDong2()
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
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_HanhTauGiangHo3.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ 3! tại <color=cyan>Lễ Quan<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end



tbHanhTauGiangHo2.Cap_Ho_Tro = 190;

function tbHanhTauGiangHo2:NhanDong4()
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


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_HanhTauGiangHo4.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ 4! tại <color=cyan>Lễ Quan<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


function tbHanhTauGiangHo2:NhanDong5()
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


local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_HanhTauGiangHo5.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ 5! tại <color=cyan>Lễ Quan<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
