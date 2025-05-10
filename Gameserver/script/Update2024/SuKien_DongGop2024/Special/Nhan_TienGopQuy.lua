local tbNhan_TienGopQuy ={};
SpecialEvent.Nhan_TienGopQuy= tbNhan_TienGopQuy;
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\Nhan_TienGopQuy.lua");

tbNhan_TienGopQuy.TaskGroup_Nhan = 4237;	--Task Check Nhận
tbNhan_TienGopQuy.TaskID_Nhan = 41;			--Task Check Nhận (Thay đổi trị số)
tbNhan_TienGopQuy.TyLePhanThuong = 1;

tbNhan_TienGopQuy.SoLuong_TienGopQuy = 600; 	--Số Lượng Tiền Góp Quỹ Nhận

tbNhan_TienGopQuy.SoLuong_LucBao = 3500; 	--Số Lượng LUC BAO Nhận

function tbNhan_TienGopQuy:OnDialog()
DoScript("\\script\\Update2024\\SuKien_DongGop2024\\Special\\Nhan_TienGopQuy.lua");
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local szMsg = "<color=blue>- Thời gian: <color=cyan>"..Time.."<color><color>\n"..
"<color=blue>- Tên nhân vật: <color=cyan>"..me.szName.."<color><color>\n"..
"<color=blue>- Tài khoản Game: <color=cyan>"..me.szAccount.."<color><color>\n"..
"<color=blue>- IPs: <color=yellow>"..szIp.."<color><color>\n"..
"<color=yellow>- Tiền Góp Quỹ có thể nhận: <color=yellow>"..self.SoLuong_TienGopQuy.."<color> cái.<color>\n"..
"<color=yellow>- Lục bảo Bonus có thể nhận: <color=yellow>"..self.SoLuong_LucBao.."<color> cái.<color>\n"
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}
	
--Nhận dòng 1--kiemthest2
if (me.szAccount == "kiemthest2") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,{"<color=yellow>Nhận Tiền Góp Quỹ: <color=green>"..self.SoLuong_TienGopQuy.."<color> Cái<color>", self.NhanQua, self});
end



Dialog:Say(szMsg, tbOpt);
end


function tbNhan_TienGopQuy:NhanQua()
local SoLuongTienUnPack = self.SoLuong_TienGopQuy;
local CheckNhan = me.GetTask(self.TaskGroup_Nhan,self.TaskID_Nhan);
local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\FILE_LOG\\Log_NhanTienGopQuy.txt";

if CheckNhan ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Phần thưởng này bạn đã nhận rồi! Hãy Kiểm tra lại!<color>"});
return 0;		
end

--Phần Thưởng--
me.AddStackItem(18,1,975,10,{bForceBind=1,},SoLuongTienUnPack); 	--Tiền Góp Quỹ
me.AddStackItem(18,1,3010,1,{bForceBind=1,},self.SoLuong_LucBao); 	--Lục bảo
--me.AddStackItem(18,1,3925,1,nil,500000);-- long den




me.SetTask(self.TaskGroup_Nhan,self.TaskID_Nhan,1);--Task Tính lần đã nhận

KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..SoLuongTienUnPack.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> đã nhận <color=cyan>"..SoLuongTienUnPack.."<color> Tiền Góp Quỹ thành công!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

