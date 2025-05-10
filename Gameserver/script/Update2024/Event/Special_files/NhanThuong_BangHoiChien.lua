local tbNhanThuong_BangHoiChien = {};
SpecialEvent.NhanThuong_BangHoiChien = tbNhanThuong_BangHoiChien;


tbNhanThuong_BangHoiChien.TaskGourp = 4118; 		--Task Quà MiniGame Nhóm Zalo
tbNhanThuong_BangHoiChien.TaskId = 16; 				--Task Thay Đổi



function tbNhanThuong_BangHoiChien:OnDialog()
DoScript("\\script\\Update2024\\Event\\Special_files\\NhanThuong_BangHoiChien.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

	local pTong = KTong.GetTong(me.dwTongId);
	local szTongName = "Không Bang Hội";	
	if pTong then
		szTongName = pTong.GetName();
	end	

	local nKinId, nMemberId = me.GetKinMember();	
	local cKin = KKin.GetKin(nKinId);
	local KinName = "Không Gia Tộc";
	if cKin then
		KinName = cKin.GetName()
	end	

local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=blue>- Gia Tộc: <color=yellow>"..KinName.."<color><color>\n"..
"<color=blue>- Bang Hội: <color=yellow>"..szTongName.."<color><color>\n"

	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
--if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then

--if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then


--Bang Chủ Bang 1 nhận thưởng--kiemthest2
if (me.szAccount == "kiemthest2") or (me.szAccount == "satthan1") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Chiến lần: "..self.TaskId.."<color>", self.NhanThuong_Bang1, self});
end
--Bang Chủ Bang 2 nhận thưởng
if (me.szAccount == "satthan2") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Chiến lần: "..self.TaskId.."<color>", self.NhanThuong_Bang2, self});
end
--Bang Chủ Bang 3 nhận thưởng
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Chiến lần: "..self.TaskId.."<color>", self.NhanThuong_Bang3, self});
end
--Bang Chủ Bang 4 nhận thưởng
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Chiến lần: "..self.TaskId.."<color>", self.NhanThuong_Bang4, self});
end


table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end



function tbNhanThuong_BangHoiChien:NhanThuong_Bang1()
local nSoTheBangHoi = 1500; --Thay đổi trị số

local BangHoiChienLan = self.TaskId;
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\FILE_LOG\\Log_NhanPhanThuong_BangHoiChien.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Quán Quân Câu Hỏi";
	
	local pTong = KTong.GetTong(me.dwTongId);
	local szTongName = "Không Bang Hội";	
	if pTong then
		szTongName = pTong.GetName();
	end	

	local nKinId, nMemberId = me.GetKinMember();	
	local cKin = KKin.GetKin(nKinId);
	local KinName = "Không Gia Tộc";
	if cKin then
		KinName = cKin.GetName()
	end	


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3044,1,nil,nSoTheBangHoi);--Lệnh Bài Bang Hội

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..szTongName.."\t"..nSoTheBangHoi.."\t"..BangHoiChienLan.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Chúc mừng: <color=cyan>"..me.szName.."<color> Thuộc Gia Tộc: "..KinName..", Đại diện Bang Hội: "..szTongName.." Nhận thưởng thành công "..nSoTheBangHoi.." Thẻ Bang Hội (Không Khóa) của Sự Kiện Bang Hội Chiến lần: "..self.TaskId.." <color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNhanThuong_BangHoiChien:NhanThuong_Bang2()
local nSoTheBangHoi = 300; --Thay đổi trị số

local BangHoiChienLan = self.TaskId;
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\FILE_LOG\\Log_NhanPhanThuong_BangHoiChien.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Quán Quân Câu Hỏi";
	
	local pTong = KTong.GetTong(me.dwTongId);
	local szTongName = "Không Bang Hội";	
	if pTong then
		szTongName = pTong.GetName();
	end	

	local nKinId, nMemberId = me.GetKinMember();	
	local cKin = KKin.GetKin(nKinId);
	local KinName = "Không Gia Tộc";
	if cKin then
		KinName = cKin.GetName()
	end	


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3044,1,nil,nSoTheBangHoi);--Lệnh Bài Bang Hội

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..szTongName.."\t"..nSoTheBangHoi.."\t"..BangHoiChienLan.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Chúc mừng: <color=cyan>"..me.szName.."<color> Thuộc Gia Tộc: "..KinName..", Đại diện Bang Hội: "..szTongName.." Nhận thưởng thành công "..nSoTheBangHoi.." Thẻ Bang Hội (Không Khóa) của Sự Kiện Bang Hội Chiến lần: "..self.TaskId.." <color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


function tbNhanThuong_BangHoiChien:NhanThuong_Bang3()
local nSoTheBangHoi = 0000; --Thay đổi trị số

local BangHoiChienLan = self.TaskId;
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\FILE_LOG\\Log_NhanPhanThuong_BangHoiChien.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Quán Quân Câu Hỏi";
	
	local pTong = KTong.GetTong(me.dwTongId);
	local szTongName = "Không Bang Hội";	
	if pTong then
		szTongName = pTong.GetName();
	end	

	local nKinId, nMemberId = me.GetKinMember();	
	local cKin = KKin.GetKin(nKinId);
	local KinName = "Không Gia Tộc";
	if cKin then
		KinName = cKin.GetName()
	end	


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3044,1,nil,nSoTheBangHoi);--Lệnh Bài Bang Hội

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..szTongName.."\t"..nSoTheBangHoi.."\t"..BangHoiChienLan.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Chúc mừng: <color=cyan>"..me.szName.."<color> Thuộc Gia Tộc: "..KinName..", Đại diện Bang Hội: "..szTongName.." Nhận thưởng thành công "..nSoTheBangHoi.." Thẻ Bang Hội (Không Khóa) của Sự Kiện Bang Hội Chiến lần: "..self.TaskId.." <color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNhanThuong_BangHoiChien:NhanThuong_Bang4()
local nSoTheBangHoi = 0000; --Thay đổi trị số

local BangHoiChienLan = self.TaskId;
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	local Time	= os.date("%d-%m-%Y %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local szHistory = "\\script\\FILE_LOG\\Log_NhanPhanThuong_BangHoiChien.txt";
	local TenPhanThuong = "Nhận Thưởng Giải: Quán Quân Câu Hỏi";
	
	local pTong = KTong.GetTong(me.dwTongId);
	local szTongName = "Không Bang Hội";	
	if pTong then
		szTongName = pTong.GetName();
	end	

	local nKinId, nMemberId = me.GetKinMember();	
	local cKin = KKin.GetKin(nKinId);
	local KinName = "Không Gia Tộc";
	if cKin then
		KinName = cKin.GetName()
	end	


if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3044,1,nil,nSoTheBangHoi);--Lệnh Bài Bang Hội

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..szTongName.."\t"..nSoTheBangHoi.."\t"..BangHoiChienLan.."\t"..Time.."\t"..szIp.."\n");

local szMsg = "<color=yellow>Chúc mừng: <color=cyan>"..me.szName.."<color> Thuộc Gia Tộc: "..KinName..", Đại diện Bang Hội: "..szTongName.." Nhận thưởng thành công "..nSoTheBangHoi.." Thẻ Bang Hội (Không Khóa) của Sự Kiện Bang Hội Chiến lần: "..self.TaskId.." <color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
