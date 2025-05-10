local tbNhanThuong_Event_TDLT = {};
SpecialEvent.NhanThuong_Event_TDLT = tbNhanThuong_Event_TDLT;

tbNhanThuong_Event_TDLT.TaskGourp = 4230; 			--Task Quà MiniGame Nhóm Zalo
tbNhanThuong_Event_TDLT.TaskId = 11; 				--Task Thay Đổi

function tbNhanThuong_Event_TDLT:OnDialog()
DoScript("\\script\\Update2024\\Event\\Special_files\\NhanThuong_Event_TDLT.lua");
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

--TinhAnhEm
--HuynhĐệ

if pTong then
if pTong.GetName() == "TinhAnhEm" then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Chiến Thắng TĐLT-Event lần: "..self.TaskId.."<color>", self.BangHoi_Thang, self});

elseif (pTong.GetName() == "HuynhĐệ") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Thua TĐLT-Event lần: "..self.TaskId.."<color>", self.BangHoi_Thua, self});
end
end	


--Thành viên nhận theo Check Tk Thắng
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Chiến Thắng TĐLT-Event lần: "..self.TaskId.."<color>", self.BangHoi_Thang, self});
end
--Thành viên nhận theo Check Tk Thua
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Thưởng Bang Hội Thua TĐLT-Event lần: "..self.TaskId.."<color>", self.BangHoi_Thua, self});
end
table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end



function tbNhanThuong_Event_TDLT:BangHoi_Thang()
local BangHoiChienLan = self.TaskId;
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	
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
me.AddStackItem(18,1,3965,2,{bForceBind=1,},345); 	--Thương Phong Huyền Dẫn


if (me.szAccount == "doantuan") then
--Phần Thưởng--
me.AddItem(2,1,4214,10,5,16);--Lv.8-Hiệu ứng Thổ Kiếm Nội 5


end

me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Chúc mừng: <color=cyan>"..me.szName.."<color> Thuộc Gia Tộc: "..KinName..", Đại diện Bang Hội: "..szTongName.." Nhận Thưởng Bang Hội Chiến Thắng TĐLT-Event lần: "..self.TaskId.." thành công <color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNhanThuong_Event_TDLT:BangHoi_Thua()
local BangHoiChienLan = self.TaskId;
local CheckNhan = me.GetTask(self.TaskGourp,self.TaskId);
	
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
me.AddStackItem(18,1,3965,2,{bForceBind=1,},90); 	--Thương Phong Huyền Dẫn



me.SetTask(self.TaskGourp,self.TaskId,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Chúc mừng: <color=cyan>"..me.szName.."<color> Thuộc Gia Tộc: "..KinName..", Đại diện Bang Hội: "..szTongName.." Nhận Thưởng Bang Hội Chiến Thắng TĐLT-Event lần: "..self.TaskId.." thành công <color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
