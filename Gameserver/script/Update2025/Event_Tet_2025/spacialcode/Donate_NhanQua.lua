local tbDonate_NhanQuaSKTet2025 ={};
SpecialEvent.Donate_NhanQuaSKTet2025= tbDonate_NhanQuaSKTet2025;
DoScript("\\script\\Update2025\\Event_Tet_2025\\spacialcode\\Donate_NhanQua.lua");
tbDonate_NhanQuaSKTet2025.TaskGroup_Nhan = 4519;		--Task Check Nhận

tbDonate_NhanQuaSKTet2025.TaskID_Nhan = 90;				--Task Check Nhận (Thay đổi trị số)

tbDonate_NhanQuaSKTet2025.SoLuong_TaiLoc = 250; 		--Số Lượng Tài Lộc Nhận
tbDonate_NhanQuaSKTet2025.SoLuong_DiemTanNien = 1125; 	--Số Lượng Điểm Tân Niên Nhận
tbDonate_NhanQuaSKTet2025.SoLuong_TienGopQuy = 0000; 	--Số Lượng Tiền Góp Quỹ Nhận
---------------------
--✬✬✬100K:	
--Tài Lộc: 100
--Điểm Tân Niên: 450
---------------------
--✬✬✬200K:	
--Tài Lộc: 200
--Điểm Tân Niên: 900
---------------------
--✬✬✬300K:	
--Tài Lộc: 300
--Điểm Tân Niên: 1350
---------------------
--✬✬✬400K:	
--Tài Lộc: 400
--Điểm Tân Niên: 1800
---------------------
--✬✬✬500K:	
--Tài Lộc: 600
--Điểm Tân Niên: 2750
---------------------
--✬✬✬1000K:	
--Tài Lộc: 1400
--Điểm Tân Niên: 6000
---------------------
function tbDonate_NhanQuaSKTet2025:OnDialog()
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\Donate_NhanQuaSKTet2025.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<bclr=0,0,200><color=white>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<bclr=0,0,200><color=white>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<bclr=0,0,200><color=white>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<bclr=0,0,200><color=white>- IP: <color=yellow>"..szIp.."<color><color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Nhận Tài Lộc và Điểm Tân Niên<color>", self.NhanQua_VatPham, self});
end



Dialog:Say(szMsg, tbOpt);
end


function tbDonate_NhanQuaSKTet2025:NhanQua_VatPham()
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanDongGopSuKienTet2025.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<bclr=0,0,200><color=white>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,4029,1,{bForceBind=1,},self.SoLuong_TaiLoc); 		--Tài Lộc
me.AddStackItem(18,1,4028,1,{bForceBind=1,},self.SoLuong_DiemTanNien); 	--Điểm Tân Niên
me.AddStackItem(18,1,975,10,{bForceBind=1,},self.SoLuong_TienGopQuy); 	--Tiền Góp Quỹ

me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..self.SoLuong_TaiLoc.."\t"..self.SoLuong_DiemTanNien.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<bclr=0,0,200><color=white>Người chơi: ["..me.szName.."] đã nhận thành công:\n✬ "..self.SoLuong_TaiLoc.." Tài Lộc.\n✬ "..self.SoLuong_DiemTanNien.." Điểm Tân Niên.";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

