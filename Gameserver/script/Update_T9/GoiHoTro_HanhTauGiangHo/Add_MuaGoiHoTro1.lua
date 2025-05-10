local tbMuaGoiHoTro ={};
SpecialEvent.MuaGoiHoTro= tbMuaGoiHoTro;
DoScript("\\script\\Update_T9\\GoiHoTro_HanhTauGiangHo\\Add_MuaGoiHoTro1.lua");


tbMuaGoiHoTro.TaskGroup_Nhan = 4083;	--Task Nhận
tbMuaGoiHoTro.TaskID_Nhan = 1;			--Task Nhận Gói 1

tbMuaGoiHoTro.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbMuaGoiHoTro.TaskIDTT = 1;

tbMuaGoiHoTro.TaskGroup_Time = 4000;	--Task Thời Gian
tbMuaGoiHoTro.TaskID_Time = 1;			--Task Thời Gian

tbMuaGoiHoTro.HuyChuong = 1440;
tbMuaGoiHoTro.CapHuyChuong = 3;

tbMuaGoiHoTro.TG_Kiem = 1441;
tbMuaGoiHoTro.TG_Thuong = 1442;
tbMuaGoiHoTro.TG_Chuy = 1443;
tbMuaGoiHoTro.TG_Dao = 1444;
tbMuaGoiHoTro.TG_Bong = 1445;
tbMuaGoiHoTro.TG_Tien = 1446;
tbMuaGoiHoTro.CapThienGia = 2;

function tbMuaGoiHoTro:OnDialog()
DoScript("\\script\\Update_T9\\GoiHoTro_HanhTauGiangHo\\Add_MuaGoiHoTro1.lua");
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
if (me.szAccount == "longbeo") or (me.szAccount == "lingnga") or (me.szAccount == "havinh") or (me.szAccount == "kentb1988") or (me.szAccount == "ngocnhuy1") or (me.szAccount == "buithohk") or (me.szAccount == "docnhan30") or (me.szAccount == "vipkinh") or (me.szAccount == "bodauto") or (me.szAccount == "vuhasooo") or (me.szAccount == "satthan2") or (me.szAccount == "trieuchau") or (me.szAccount == "hhhggg1") or (me.szAccount == "anhchangcodl") or (me.szAccount == "anhduclc90") or (me.szAccount == "susu") or (me.szAccount == "satthanpk5") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Gói Hỗ Trợ Hành Tẩu Giang Hồ 1<color>", self.NhanDong1, self});
end

Dialog:Say(szMsg, tbOpt);
end

function tbMuaGoiHoTro:NhanDong1()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
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

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_MuaGoiHoTro1.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Gói Hỗ Trợ: Hành tẩu Giang hồ 1! tại <color=cyan>Lễ Quan<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

