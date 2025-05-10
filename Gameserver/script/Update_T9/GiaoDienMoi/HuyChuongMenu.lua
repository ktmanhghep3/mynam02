local tbNpc = Npc:GetClass("HuyChuongMenu");

tbNpc.TASK_GROUP = 4021;			--Task Điểm Chiến Tích
tbNpc.TASK_ID = 1;

tbNpc.nSkill = 1440;				--Skill Huy Chương

tbNpc.NhanCap_1 = 1;				--Cấp Skill nhận được 1
tbNpc.NhanCap_2 = 2;				--Cấp Skill nhận được 2
tbNpc.NhanCap_3 = 3;				--Cấp Skill nhận được 3
tbNpc.NhanCap_4 = 4;				--Cấp Skill nhận được 4
tbNpc.NhanCap_5 = 5;				--Cấp Skill nhận được 5
tbNpc.NhanCap_6 = 6;				--Cấp Skill nhận được 6
tbNpc.NhanCap_7 = 7;				--Cấp Skill nhận được 7
tbNpc.NhanCap_8 = 8;				--Cấp Skill nhận được 8
tbNpc.NhanCap_9 = 9;				--Cấp Skill nhận được 9
tbNpc.NhanCap_10 = 10;				--Cấp Skill nhận được 10
tbNpc.NhanCap_11 = 11;				--Cấp Skill nhận được 11
tbNpc.NhanCap_12 = 12;				--Cấp Skill nhận được 12
tbNpc.NhanCap_13 = 13;				--Cấp Skill nhận được 13
tbNpc.NhanCap_14 = 14;				--Cấp Skill nhận được 14
tbNpc.NhanCap_15 = 15;				--Cấp Skill nhận được 15
tbNpc.NhanCap_16 = 16;				--Cấp Skill nhận được 16
tbNpc.NhanCap_17 = 17;				--Cấp Skill nhận được 17
tbNpc.NhanCap_18 = 18;				--Cấp Skill nhận được 18
tbNpc.NhanCap_19 = 19;				--Cấp Skill nhận được 19
tbNpc.NhanCap_20 = 20;				--Cấp Skill nhận được 20

tbNpc.DiemChienTich_1 = 200;	--Điểm Chiến Tích Yêu Cầu 1
tbNpc.DiemChienTich_2 = 500;	--Điểm Chiến Tích Yêu Cầu 2
tbNpc.DiemChienTich_3 = 800;	--Điểm Chiến Tích Yêu Cầu 3
tbNpc.DiemChienTich_4 = 1200;	--Điểm Chiến Tích Yêu Cầu 4
tbNpc.DiemChienTich_5 = 1500;	--Điểm Chiến Tích Yêu Cầu 5
tbNpc.DiemChienTich_6 = 1700;	--Điểm Chiến Tích Yêu Cầu 6
tbNpc.DiemChienTich_7 = 2000;	--Điểm Chiến Tích Yêu Cầu 7
tbNpc.DiemChienTich_8 = 2500;	--Điểm Chiến Tích Yêu Cầu 8
tbNpc.DiemChienTich_9 = 3000;	--Điểm Chiến Tích Yêu Cầu 9
tbNpc.DiemChienTich_10 = 3500;	--Điểm Chiến Tích Yêu Cầu 10
tbNpc.DiemChienTich_11 = 4000;	--Điểm Chiến Tích Yêu Cầu 11
tbNpc.DiemChienTich_12 = 4500;	--Điểm Chiến Tích Yêu Cầu 12
tbNpc.DiemChienTich_13 = 5000;	--Điểm Chiến Tích Yêu Cầu 13
tbNpc.DiemChienTich_14 = 5500;	--Điểm Chiến Tích Yêu Cầu 14
tbNpc.DiemChienTich_15 = 6000;	--Điểm Chiến Tích Yêu Cầu 15
tbNpc.DiemChienTich_16 = 6500;	--Điểm Chiến Tích Yêu Cầu 16
tbNpc.DiemChienTich_17 = 7000;	--Điểm Chiến Tích Yêu Cầu 17
tbNpc.DiemChienTich_18 = 7500;	--Điểm Chiến Tích Yêu Cầu 18
tbNpc.DiemChienTich_19 = 8000;	--Điểm Chiến Tích Yêu Cầu 19
tbNpc.DiemChienTich_20 = 8500;	--Điểm Chiến Tích Yêu Cầu 20

function tbNpc:OnDialog()
local Time	= os.date("%d-%m-%Y ~~ %H:%M", GetTime());
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nLevel = me.GetSkillLevel(self.nSkill)+1;

local szMsg = 
"<color=yellow>Thông tin:\n"..
"<color=green>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=green>- Điểm Chiến Tích: <color=cyan>".. nDiemChienTich .."<color><color>\n"
	local tbOpt = 
	{
		{"<color=red>Tính năng đang Bảo trì, hãy quay lại sau!<color>"},
	}

	--[[if (nDiemChienTich >= self.DiemChienTich_1 and nDiemChienTich <= (self.DiemChienTich_2-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 1<color>", self.AddNhanCap_1, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_2 and nDiemChienTich <= (self.DiemChienTich_3-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 2<color>", self.AddNhanCap_2, self});
	end


	if (nDiemChienTich >= self.DiemChienTich_3 and nDiemChienTich <= (self.DiemChienTich_4-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 3<color>", self.AddNhanCap_3, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_4 and nDiemChienTich <= (self.DiemChienTich_5-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 4<color>", self.AddNhanCap_4, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_5 and nDiemChienTich <= (self.DiemChienTich_6-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 5<color>", self.AddNhanCap_5, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_6 and nDiemChienTich <= (self.DiemChienTich_7-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 6<color>", self.AddNhanCap_6, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_7 and nDiemChienTich <= (self.DiemChienTich_8-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 7<color>", self.AddNhanCap_7, self});
	end


	if (nDiemChienTich >= self.DiemChienTich_8 and nDiemChienTich <= (self.DiemChienTich_9-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 8<color>", self.AddNhanCap_8, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_9 and nDiemChienTich <= (self.DiemChienTich_10-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 9<color>", self.AddNhanCap_9, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_10 and nDiemChienTich <= (self.DiemChienTich_11-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 10<color>", self.AddNhanCap_10, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_11 and nDiemChienTich <= (self.DiemChienTich_12-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 11<color>", self.AddNhanCap_11, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_12 and nDiemChienTich <= (self.DiemChienTich_13-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 12<color>", self.AddNhanCap_12, self});
	end


	if (nDiemChienTich >= self.DiemChienTich_13 and nDiemChienTich <= (self.DiemChienTich_14-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 13<color>", self.AddNhanCap_13, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_14 and nDiemChienTich <= (self.DiemChienTich_15-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 14<color>", self.AddNhanCap_14, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_15 and nDiemChienTich <= (self.DiemChienTich_16-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 15<color>", self.AddNhanCap_15, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_16 and nDiemChienTich <= (self.DiemChienTich_17-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 16<color>", self.AddNhanCap_16, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_17 and nDiemChienTich <= (self.DiemChienTich_18-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 17<color>", self.AddNhanCap_17, self});
	end


	if (nDiemChienTich >= self.DiemChienTich_18 and nDiemChienTich <= (self.DiemChienTich_19-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 18<color>", self.AddNhanCap_18, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_19 and nDiemChienTich <= (self.DiemChienTich_20-1)) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 19<color>", self.AddNhanCap_19, self});
	end

	if (nDiemChienTich >= self.DiemChienTich_20) then
		table.insert(tbOpt, 1, {"<color=yellow>Nhận Huy Chương Cấp 20<color>", self.AddNhanCap_20, self});
	end]]
	Dialog:Say(szMsg, tbOpt);
end

function tbNpc:AddNhanCap_1()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_1;
local nDiemChienTichYC = self.DiemChienTich_1;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_2()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_2;
local nDiemChienTichYC = self.DiemChienTich_2;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_3()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_3;
local nDiemChienTichYC = self.DiemChienTich_3;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_4()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_4;
local nDiemChienTichYC = self.DiemChienTich_4;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_5()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_5;
local nDiemChienTichYC = self.DiemChienTich_5;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_6()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_6;
local nDiemChienTichYC = self.DiemChienTich_6;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_7()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_7;
local nDiemChienTichYC = self.DiemChienTich_7;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_8()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_8;
local nDiemChienTichYC = self.DiemChienTich_8;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_9()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_9;
local nDiemChienTichYC = self.DiemChienTich_9;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_10()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_10;
local nDiemChienTichYC = self.DiemChienTich_10;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_11()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_11;
local nDiemChienTichYC = self.DiemChienTich_11;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_12()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_12;
local nDiemChienTichYC = self.DiemChienTich_12;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_13()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_13;
local nDiemChienTichYC = self.DiemChienTich_13;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_14()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_14;
local nDiemChienTichYC = self.DiemChienTich_14;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_15()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_15;
local nDiemChienTichYC = self.DiemChienTich_15;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_16()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_16;
local nDiemChienTichYC = self.DiemChienTich_16;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_17()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_17;
local nDiemChienTichYC = self.DiemChienTich_17;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_18()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_18;
local nDiemChienTichYC = self.DiemChienTich_18;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_19()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_19;
local nDiemChienTichYC = self.DiemChienTich_19;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
function tbNpc:AddNhanCap_20()
local nDiemChienTich= me.GetTask(self.TASK_GROUP,self.TASK_ID);
local nCapHuyChuong = self.NhanCap_20;
local nDiemChienTichYC = self.DiemChienTich_20;

if nDiemChienTich < nDiemChienTichYC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Điểm Chiến Tích Không Đủ "..nDiemChienTichYC..", không thể nhận!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddFightSkill(self.nSkill,nCapHuyChuong);
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> với Chiến Tích "..nDiemChienTich.." điểm đã nhận <color=cyan>Huy Chương cấp "..nCapHuyChuong.."<color> thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
