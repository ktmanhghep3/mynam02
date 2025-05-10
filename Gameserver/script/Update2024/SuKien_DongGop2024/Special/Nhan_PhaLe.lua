local tbNhan_PhaLe ={};
SpecialEvent.Nhan_PhaLe= tbNhan_PhaLe;
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\Nhan_PhaLe.lua");

tbNhan_PhaLe.TaskGroup_Nhan = 4512;	--Task Check Nhận
tbNhan_PhaLe.TaskID_Nhan = 4;			--Task Check Nhận (Thay đổi trị số)
tbNhan_PhaLe.TyLePhanThuong = 1;

tbNhan_PhaLe.SoLuong_PhaLe = 200; 	--Số Lượng Pha Lê Nhận

-- 100K : 100
-- 200K : 200
-- 300K : 300
-- 400K : 400
-- 500K : 600
-- 1000K : 1400


function tbNhan_PhaLe:OnDialog()
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\Nhan_PhaLe.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<bclr=0,0,200><color=white>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<bclr=0,0,200><color=white>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<bclr=0,0,200><color=white>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<bclr=0,0,200><color=white>- IP: <color=yellow>"..szIp.."<color><color>\n"..
"<bclr=0,0,200><color=white>- Số tiền đóng góp ghi nhận: <color=yellow>"..self.SoLuong_PhaLe.."<color>.000 VNĐ<color>\n"..
"<bclr=0,0,200><color=white>- Pha Lê có thể nhận: <color=yellow>"..self.SoLuong_PhaLe.."<color> cái.<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "kiemthest2") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Pha Lê có thể nhận: <color=green>"..self.SoLuong_PhaLe.."<color> Cái<color>", self.NhanQua, self});
end



Dialog:Say(szMsg, tbOpt);
end


function tbNhan_PhaLe:NhanQua()
local SoLuongTienUnPack = self.SoLuong_PhaLe;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanPhaLe.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<bclr=0,0,200><color=white>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,3960,2,{bForceBind=1,},self.SoLuong_PhaLe); 	--Pha Lê
--me.AddStackItem(18,1,3960,1,nil,100);-- Hoa Tuyết




me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..self.SoLuong_PhaLe.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<bclr=0,0,200><color=white>Người chơi: <color=green>"..me.szName.."<color> đã nhận <color=cyan>"..self.SoLuong_PhaLe.."<color> Pha Lê thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

