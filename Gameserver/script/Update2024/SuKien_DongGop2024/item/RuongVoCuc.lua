local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_18");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,18};
tbSuKien_DongGop2024.TenRuong = "Rương Trang bị Vô Cực-Sơ Thành: Kim";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRVC = 18;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.nSex == 0) then --Nam
me.AddItem(4,9,3000,10);--Nón Cấp 1- Nam - Kim
me.AddItem(4,3,3000,10);--Áo Cấp 1- Nam - Kim
me.AddItem(4,8,3000,10);--Lưng Cấp 1- Nam - Kim
me.AddItem(4,10,3000,10);--Tay Cấp 1- Nam - Kim
me.AddItem(4,7,3000,10);--Giày Cấp 1- Nam - Kim
me.AddItem(4,5,3000,10);--Liên Cấp 1- Nam - Kim
me.AddItem(4,4,3000,10);--Nhẫn Cấp 1- Nam - Kim
me.AddItem(4,11,3000,10);--Bội Cấp 1- Nam - Kim
me.AddItem(4,6,3000,10);--Phù Cấp 1- Nam - Kim

end 

if (me.nSex == 1) then --Nữ 
me.AddItem(4,9,3001,10);--Nón Cấp 1- Nữ - Kim
me.AddItem(4,3,3001,10);--Áo Cấp 1- Nữ - Kim
me.AddItem(4,8,3001,10);--Lưng Cấp 1- Nữ - Kim
me.AddItem(4,10,3001,10);--Tay Cấp 1- Nữ - Kim
me.AddItem(4,7,3001,10);--Giày Cấp 1- Nữ - Kim
me.AddItem(4,5,3001,10);--Liên Cấp 1- Nữ - Kim
me.AddItem(4,4,3001,10);--Nhẫn Cấp 1- Nữ - Kim
me.AddItem(4,11,3001,10);--Bội Cấp 1- Nữ - Kim
me.AddItem(4,6,3001,10);--Phù Cấp 1- Nữ - Kim

end


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_19");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,19};
tbSuKien_DongGop2024.TenRuong = "Rương Trang bị Vô Cực-Sơ Thành: Mộc";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRVC = 19;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.nSex == 0) then --Nam
me.AddItem(4,9,3002,10);--Nón Cấp 1- Nam - Mộc
me.AddItem(4,3,3002,10);--Áo Cấp 1- Nam - Mộc
me.AddItem(4,8,3002,10);--Lưng Cấp 1- Nam - Mộc
me.AddItem(4,10,3002,10);--Tay Cấp 1- Nam - Mộc
me.AddItem(4,7,3002,10);--Giày Cấp 1- Nam - Mộc
me.AddItem(4,5,3002,10);--Liên Cấp 1- Nam - Mộc
me.AddItem(4,4,3002,10);--Nhẫn Cấp 1- Nam - Mộc
me.AddItem(4,11,3002,10);--Bội Cấp 1- Nam - Mộc
me.AddItem(4,6,3002,10);--Phù Cấp 1- Nam - Mộc

end 

if (me.nSex == 1) then --Nữ 
me.AddItem(4,9,3003,10);--Nón Cấp 1- Nữ - Mộc
me.AddItem(4,3,3003,10);--Áo Cấp 1- Nữ - Mộc
me.AddItem(4,8,3003,10);--Lưng Cấp 1- Nữ - Mộc
me.AddItem(4,10,3003,10);--Tay Cấp 1- Nữ - Mộc
me.AddItem(4,7,3003,10);--Giày Cấp 1- Nữ - Mộc
me.AddItem(4,5,3003,10);--Liên Cấp 1- Nữ - Mộc
me.AddItem(4,4,3003,10);--Nhẫn Cấp 1- Nữ - Mộc
me.AddItem(4,11,3003,10);--Bội Cấp 1- Nữ - Mộc
me.AddItem(4,6,3003,10);--Phù Cấp 1- Nữ - Mộc

end


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_20");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,20};
tbSuKien_DongGop2024.TenRuong = "Rương Trang bị Vô Cực-Sơ Thành: Thủy";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRVC = 20;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.nSex == 0) then --Nam
me.AddItem(4,9,3004,10);--Nón Cấp 1- Nam - Thủy
me.AddItem(4,3,3004,10);--Áo Cấp 1- Nam - Thủy
me.AddItem(4,8,3004,10);--Lưng Cấp 1- Nam - Thủy
me.AddItem(4,10,3004,10);--Tay Cấp 1- Nam - Thủy
me.AddItem(4,7,3004,10);--Giày Cấp 1- Nam - Thủy
me.AddItem(4,5,3004,10);--Liên Cấp 1- Nam - Thủy
me.AddItem(4,4,3004,10);--Nhẫn Cấp 1- Nam - Thủy
me.AddItem(4,11,3004,10);--Bội Cấp 1- Nam - Thủy
me.AddItem(4,6,3004,10);--Phù Cấp 1- Nam - Thủy

end 

if (me.nSex == 1) then --Nữ 
me.AddItem(4,9,3005,10);--Nón Cấp 1- Nữ - Thủy
me.AddItem(4,3,3005,10);--Áo Cấp 1- Nữ - Thủy
me.AddItem(4,8,3005,10);--Lưng Cấp 1- Nữ - Thủy
me.AddItem(4,10,3005,10);--Tay Cấp 1- Nữ - Thủy
me.AddItem(4,7,3005,10);--Giày Cấp 1- Nữ - Thủy
me.AddItem(4,5,3005,10);--Liên Cấp 1- Nữ - Thủy
me.AddItem(4,4,3005,10);--Nhẫn Cấp 1- Nữ - Thủy
me.AddItem(4,11,3005,10);--Bội Cấp 1- Nữ - Thủy
me.AddItem(4,6,3005,10);--Phù Cấp 1- Nữ - Thủy

end


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_21");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,21};
tbSuKien_DongGop2024.TenRuong = "Rương Trang bị Vô Cực-Sơ Thành: Hỏa";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRVC = 21;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.nSex == 0) then --Nam
me.AddItem(4,9,3006,10);--Nón Cấp 1- Nam - Hỏa
me.AddItem(4,3,3006,10);--Áo Cấp 1- Nam - Hỏa
me.AddItem(4,8,3006,10);--Lưng Cấp 1- Nam - Hỏa
me.AddItem(4,10,3006,10);--Tay Cấp 1- Nam - Hỏa
me.AddItem(4,7,3006,10);--Giày Cấp 1- Nam - Hỏa
me.AddItem(4,5,3006,10);--Liên Cấp 1- Nam - Hỏa
me.AddItem(4,4,3006,10);--Nhẫn Cấp 1- Nam - Hỏa
me.AddItem(4,11,3006,10);--Bội Cấp 1- Nam - Hỏa
me.AddItem(4,6,3006,10);--Phù Cấp 1- Nam - Hỏa

end 

if (me.nSex == 1) then --Nữ 
me.AddItem(4,9,3007,10);--Nón Cấp 1- Nữ - Hỏa
me.AddItem(4,3,3007,10);--Áo Cấp 1- Nữ - Hỏa
me.AddItem(4,8,3007,10);--Lưng Cấp 1- Nữ - Hỏa
me.AddItem(4,10,3007,10);--Tay Cấp 1- Nữ - Hỏa
me.AddItem(4,7,3007,10);--Giày Cấp 1- Nữ - Hỏa
me.AddItem(4,5,3007,10);--Liên Cấp 1- Nữ - Hỏa
me.AddItem(4,4,3007,10);--Nhẫn Cấp 1- Nữ - Hỏa
me.AddItem(4,11,3007,10);--Bội Cấp 1- Nữ - Hỏa
me.AddItem(4,6,3007,10);--Phù Cấp 1- Nữ - Hỏa

end


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_22");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,22};
tbSuKien_DongGop2024.TenRuong = "Rương Trang bị Vô Cực-Sơ Thành: Thổ";
tbSuKien_DongGop2024.TaskGroup_Open = 4236;				--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_PayRVC = 22;			--Task Nhận
function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
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
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC);
if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Phần thưởng này chỉ nhận 1 lần!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.nSex == 0) then --Nam
me.AddItem(4,9,3008,10);--Nón Cấp 1- Nam - Thổ
me.AddItem(4,3,3008,10);--Áo Cấp 1- Nam - Thổ
me.AddItem(4,8,3008,10);--Lưng Cấp 1- Nam - Thổ
me.AddItem(4,10,3008,10);--Tay Cấp 1- Nam - Thổ
me.AddItem(4,7,3008,10);--Giày Cấp 1- Nam - Thổ
me.AddItem(4,5,3008,10);--Liên Cấp 1- Nam - Thổ
me.AddItem(4,4,3008,10);--Nhẫn Cấp 1- Nam - Thổ
me.AddItem(4,11,3008,10);--Bội Cấp 1- Nam - Thổ
me.AddItem(4,6,3008,10);--Phù Cấp 1- Nam - Thổ

end 

if (me.nSex == 1) then --Nữ 
me.AddItem(4,9,3009,10);--Nón Cấp 1- Nữ - Thổ
me.AddItem(4,3,3009,10);--Áo Cấp 1- Nữ - Thổ
me.AddItem(4,8,3009,10);--Lưng Cấp 1- Nữ - Thổ
me.AddItem(4,10,3009,10);--Tay Cấp 1- Nữ - Thổ
me.AddItem(4,7,3009,10);--Giày Cấp 1- Nữ - Thổ
me.AddItem(4,5,3009,10);--Liên Cấp 1- Nữ - Thổ
me.AddItem(4,4,3009,10);--Nhẫn Cấp 1- Nữ - Thổ
me.AddItem(4,11,3009,10);--Bội Cấp 1- Nữ - Thổ
me.AddItem(4,6,3009,10);--Phù Cấp 1- Nữ - Thổ

end


--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_PayRVC,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: "..self.TenRuong.."!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


