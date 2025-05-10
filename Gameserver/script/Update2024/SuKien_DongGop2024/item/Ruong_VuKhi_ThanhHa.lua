local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_23");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,23};
tbSuKien_DongGop2024.TenRuong = "Rương Vũ khí Thanh Hạ: Kim";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRuongVKTH = 23;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddItem(2,1,2500,10);--Thanh Hạ Quy Thiền Đao
me.AddItem(2,1,2501,10);--Thanh Hạ Vi Đà Côn
me.AddItem(2,1,2502,10);--Thanh Hạ Trạm Kim Thương
me.AddItem(2,1,2503,10);--Thanh Hạ Tứ Hải Chùy


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_24");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,24};
tbSuKien_DongGop2024.TenRuong = "Rương Vũ khí Thanh Hạ: Mộc";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRuongVKTH = 24;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddItem(2,1,2504,10);--Thanh Hạ U Minh Đao
me.AddItem(2,1,2505,10);--Thanh Hạ Phệ Ảnh Thủ
me.AddItem(2,1,2506,10);--Thanh Hạ Bát Hoang Kiếm
me.AddItem(2,1,2507,10);--Thanh Hạ Khu Hổ Chùy
me.AddItem(2,2,2500,10);--Thanh Hạ Cuồng Lan
me.AddItem(2,2,2501,10);--Thanh Hạ Khổng Tước Vũ


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_25");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,25};
tbSuKien_DongGop2024.TenRuong = "Rương Vũ khí Thanh Hạ: Mộc";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRuongVKTH = 25;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddItem(2,1,2508,10);--Thanh Hạ Mạn Tú Kiếm
me.AddItem(2,1,2509,10);--Thanh Hạ Băng Tước Thủ
me.AddItem(2,1,2510,10);--Thanh Hạ Nguyệt Hoa Thủ
me.AddItem(2,1,2511,10);--Thanh Hạ Thiên Long Đao


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_26");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,26};
tbSuKien_DongGop2024.TenRuong = "Rương Vũ khí Thanh Hạ: Thủy";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRuongVKTH = 26;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddItem(2,1,2512,10);--Thanh Hạ Du Long Thủ
me.AddItem(2,1,2513,10);--Thanh Hạ Lược Địa Bổng
me.AddItem(2,1,2514,10);--Thanh Hạ Liêu Nguyên Đao
me.AddItem(2,1,2515,10);--Thanh Hạ Giang Hải Thương


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_27");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,27};
tbSuKien_DongGop2024.TenRuong = "Rương Vũ khí Thanh Hạ: Hỏa";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRuongVKTH = 27;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
me.AddItem(2,1,2516,10);--Thanh Hạ Trấn Nhạc Kiếm
me.AddItem(2,1,2517,10);--Thanh Hạ Cực Lôi Kiếm
me.AddItem(2,1,2518,10);--Thanh Hạ Canh Phong Đao


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRuongVKTH,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


