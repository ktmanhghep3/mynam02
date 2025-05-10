local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_6");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,6};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Thiếu Lâm";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 6;			--Task Nhận Gói 6
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1020,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 20
me.AddStackItem(1,14,64,4,{bForceBind=1,},1);--Như Lai Quyết Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_7");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,7};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Thiên Vương";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 7;			--Task Nhận Gói 7
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1040,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Thiên Vương Tầng 20
me.AddStackItem(1,14,84,4,{bForceBind=1,},1);--Dương Gia Quyết Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_8");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,8};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Đường Môn";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 8;			--Task Nhận Gói 8
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1060,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Đường Môn Tầng 20
me.AddStackItem(1,14,104,4,{bForceBind=1,},1);--Đường Gia Quyết Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_9");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,9};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Ngũ Độc";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 9;			--Task Nhận Gói 9
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1080,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Ngũ Độc Tầng 20
me.AddStackItem(1,14,124,4,{bForceBind=1,},1);--Tây Vực Bí Chú Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_10");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,10};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Minh Giáo";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 10;			--Task Nhận Gói 10
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1100,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Minh Giáo Tầng 20
me.AddStackItem(1,14,144,4,{bForceBind=1,},1);--Thánh Hỏa Minh Tâm Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_11");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,11};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Đoàn Thị";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 11;			--Task Nhận Gói 11
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1160,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Đoàn Thị Tầng 20
me.AddStackItem(1,14,204,4,{bForceBind=1,},1);--Đoàn Gia Tâm Quyết Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_12");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,12};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Thúy Yên";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 12;			--Task Nhận Gói 12
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,0000,0,{bForceBind=1,},0);
me.AddStackItem(18,1,0000,0,{bForceBind=1,},0);


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_13");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,13};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Nga My";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 13;			--Task Nhận Gói 13
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1120,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Nga My Tầng 20
me.AddStackItem(1,14,164,4,{bForceBind=1,},1);--Cửu Âm Thần Công Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_14");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,14};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Cái Bang";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 14;			--Task Nhận Gói 14
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1180,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Cái Bang Tầng 20
me.AddStackItem(1,14,224,4,{bForceBind=1,},1);--Cuồng Long Quyết Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_15");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,15};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Thiên Nhẫn";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 15;			--Task Nhận Gói 15
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1200,7,{bForceBind=1,},1); --Tuyệt Thế Trấn Phái Thiên Nhẫn Tầng 20
me.AddStackItem(1,14,244,4,{bForceBind=1,},1); --Liệt Hỏa Tâm Pháp Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_16");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,16};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Võ Đang";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 16;			--Task Nhận Gói 16
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1220,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Võ Đang Tầng 20
me.AddStackItem(1,14,264,4,{bForceBind=1,},1);--Cửu Dương Thần Công Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_17");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,17};
tbSuKien_DongGop2024.TenRuong = "Rương Môn Phái Côn Lôn";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayTKTP = 17;			--Task Nhận Gói 17
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Quà<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end
function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddStackItem(1,15,1240,7,{bForceBind=1,},1);--Tuyệt Thế Trấn Phái Côn Lôn Tầng 20
me.AddStackItem(1,14,284,4,{bForceBind=1,},1);--Trấn Lôi Liệt Quyết Cấp 15


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayTKTP,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


