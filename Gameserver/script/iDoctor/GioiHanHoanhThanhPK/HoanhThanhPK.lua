Limit_HoanhThanhPK.MapBoss_CheckNumAccount = 1;--Tắt mở chức năng 0 là tắt,1 là mở
Limit_HoanhThanhPK.MapBoss_HardWare_Folder = "\\script\\iDoctor\\GioiHanHoanhThanhPK\\HardWareId\\"; -- Đường dẫn folder Ổ cứng
Limit_HoanhThanhPK.MapBoss_HardWare_List = "list.txt"; -- Đường dẫn folder Ổ cứng
Limit_HoanhThanhPK.MapBoss_HardWare_Max = 1;--Số lượng tài khoản tối đa đăng nhập trên 1 máy

function Limit_HoanhThanhPK:CheckHardWare(pPlayer)
	if not pPlayer then 
		return -1,0,"Người chơi không tồn tại";
	end	
	local nHardWareId_p = pPlayer.dwHardWareId;
	if not nHardWareId_p then 
		return -1,0,"Lỗi thông tin ổ cứng";
	end	

	local szFile = Limit_HoanhThanhPK.MapBoss_HardWare_Folder..Limit_HoanhThanhPK.MapBoss_HardWare_List.."";
	if not szFile then 
		KFile.WriteFile(szFile, "nHardWareId\tnNum\n");	
	end	
	local Msg = "";
	local OldNum = 0;
	local State = 0;
	if szFile then 
		local tbFile =  Lib:LoadTabFile(szFile);
			for nIndex, tbRow  in ipairs(tbFile) do
				if ((nHardWareId_p == tonumber(tbRow.nHardWareId)) and (tonumber(tbRow.nNum) >= Limit_HoanhThanhPK.MapBoss_HardWare_Max)) then
				OldNum		= Limit_HoanhThanhPK.MapBoss_HardWare_Max;
				Msg = "<color=yellow>Hoạt động này giới hạn: <color=red>"..Limit_HoanhThanhPK.MapBoss_HardWare_Max.."<color> Accout/PC<color>";				-- break;
				elseif ((nHardWareId_p == tonumber(tbRow.nHardWareId)) and (tonumber(tbRow.nNum) < Limit_HoanhThanhPK.MapBoss_HardWare_Max)) then
				OldNum		= tonumber(tbRow.nNum);
				Msg = "Thành công";				-- break;
				State = 1;
				end
			
			end

	end	
	return State,OldNum,Msg;
end
function Limit_HoanhThanhPK:WriteNewHardWare(pPlayer,nNumOld)
	if not pPlayer then 
		return;
	end	
	local nHardWareId = pPlayer.dwHardWareId;
	if not nHardWareId then 
		return ;
	end	

	local szFile = Limit_HoanhThanhPK.MapBoss_HardWare_Folder..Limit_HoanhThanhPK.MapBoss_HardWare_List.."";
	if not szFile then 
		KFile.WriteFile(szFile, "nHardWareId\tnNum\n");	
	end	

	--if nNumOld >= Limit_HoanhThanhPK.MapBoss_HardWare_Max then
	--return 0;
	--end
	Lib:EditTabFile(szFile,1,""..nHardWareId.."",2,""..tonumber(nNumOld)+1 .."");
end

function Limit_HoanhThanhPK:TruNewHardWare(pPlayer,nNumOld)
	if not pPlayer then 
		return;
	end	
	local nHardWareId = pPlayer.dwHardWareId;
	if not nHardWareId then 
		return ;
	end	

	local szFile = Limit_HoanhThanhPK.MapBoss_HardWare_Folder..Limit_HoanhThanhPK.MapBoss_HardWare_List.."";
	if not szFile then 
		KFile.WriteFile(szFile, "nHardWareId\tnNum\n");	
	end
	
	Lib:EditTabFile(szFile,1,""..nHardWareId.."",2,""..tonumber(nNumOld)-1 .."");
end

function Limit_HoanhThanhPK:CheckValidHardware(pPlayer)
	if not pPlayer then 
		return;
	end	
	local nHardWareId_p = pPlayer.dwHardWareId;
	if not nHardWareId_p then 
		return;
	end	
	local szFile = Limit_HoanhThanhPK.MapBoss_HardWare_Folder..Limit_HoanhThanhPK.MapBoss_HardWare_List.."";
	if not szFile then 
		KFile.WriteFile(szFile, "nHardWareId\tnNum\n");	
	end	
	local IdCheck = 0;
	local IdCheck_ = 0;
	if szFile then 
		local tbFile =  Lib:LoadTabFile(szFile);
			for nIndex, tbRow  in ipairs(tbFile) do
				if nHardWareId_p == tonumber(tbRow.nHardWareId) then						
					IdCheck = 1;
				end
			end
	end	
	if IdCheck == 1 then
		IdCheck_ = 1;
	end

	return IdCheck_;
end
function Limit_HoanhThanhPK:WriteZeroHardWare(pPlayer)
	local nHardWareId = pPlayer.dwHardWareId;
	local szFile = Limit_HoanhThanhPK.MapBoss_HardWare_Folder..Limit_HoanhThanhPK.MapBoss_HardWare_List.."";
	if not szFile then 
		KFile.WriteFile(szFile, "nHardWareId\tnNum\n");	
	end	
		KFile.AppendFile(szFile, ""..nHardWareId.."\t0\n");	
end
function Limit_HoanhThanhPK:resetHWfile()
	local szFile = Limit_HoanhThanhPK.MapBoss_HardWare_Folder..Limit_HoanhThanhPK.MapBoss_HardWare_List.."";
	KFile.WriteFile(szFile, "nHardWareId\tnNum\n");	
end
