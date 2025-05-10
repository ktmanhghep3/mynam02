local tbSuKien_DongGop2024 = Item:GetClass("PaySupport_1");
tbSuKien_DongGop2024.Item_Ruong = {18,1,3940,1};

tbSuKien_DongGop2024.TaskGroup_Open = 4236;			--Task Nhận
tbSuKien_DongGop2024.TaskID_Open_Pay1 = 1;			--Task Nhận Gói 1

tbSuKien_DongGop2024.TaskGroup_Time = 4000;	--Task Thời Gian
tbSuKien_DongGop2024.TaskID_Time = 1;			--Task Thời Gian
tbSuKien_DongGop2024.HuyChuong = 1440;
tbSuKien_DongGop2024.CapHuyChuong = 4;
tbSuKien_DongGop2024.TG_Kiem = 1441;
tbSuKien_DongGop2024.TG_Thuong = 1442;
tbSuKien_DongGop2024.TG_Chuy = 1443;
tbSuKien_DongGop2024.TG_Dao = 1444;
tbSuKien_DongGop2024.TG_Bong = 1445;
tbSuKien_DongGop2024.TG_Tien = 1446;
tbSuKien_DongGop2024.CapThienGia = 3;

function tbSuKien_DongGop2024:OnUse()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_Pay1);
local szMsg = "<color=pink>Thông tin Tài Khoản:<color>\n"..
"<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<color=cyan>Rương đã dùng: "..CheckNhan.."<color>/1\n"..
"<color=red>- Thời gian còn: <color=yellow>"..nPoint.."<color> ngày<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
			table.insert(tbOpt,{"<color=yellow>Nhận Gói Hỗ Trợ Hành Tẩu Giang Hồ<color>", self.NhanQua, self});
			table.insert(tbOpt,{"Mỗi Phần thưởng chỉ nhận 1 lần! [Thoát]<color>"});
			Dialog:Say(szMsg, tbOpt);
end

function tbSuKien_DongGop2024:NhanQua()
local CheckNhan = me.GetTask(self.TaskGroup_Open,self.TaskID_Open_Pay1);
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
me.AddStackItem(18,1,3001,1,{bForceBind=1,},1200);--Lệnh Bài Sát Thần PK
me.AddStackItem(18,1,3008,1,{bForceBind=1,},200);--Túi Quà Sự Kiện 1
me.AddStackItem(18,1,3009,1,{bForceBind=1,},2);--Tuyệt Kỹ Trấn Phái Cấp 2-Vĩnh Viễn
me.AddStackItem(18,1,3019,1,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 3-Vĩnh Viễn
me.AddStackItem(18,1,3000,1,{bForceBind=1,},200);--Rương Tinh Thạch
me.AddStackItem(18,1,3003,1,{bForceBind=1,},1);--Túi Quà Mốc 5
me.AddStackItem(18,1,3003,2,{bForceBind=1,},1);--Túi Quà Mốc 10
me.AddStackItem(18,1,3017,1,{bForceBind=1,},1);--Chìa Khóa Hoành Thành
me.AddStackItem(18,1,3006,1,{bForceBind=1,},300);--Bí Ẩn Sát Thần
me.AddStackItem(18,1,1331,4,{bForceBind=1,},50);--Tinh Thạch Thánh Hỏa
me.AddStackItem(18,1,3010,1,{bForceBind=1,},200);--Lục bảo

local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + 10);--Thời gian Online

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

--Phần Thưởng--
Task:DelItem(me, self.Item_Ruong, 1);
me.SetTask(self.TaskGroup_Open,self.TaskID_Open_Pay1,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận thành công Rương Quà: Rương Trung Cấp (Gói Hỗ Trợ Giang Hồ 1-2-3-4-5-6)!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
