
CampBattle.Mission_CampBattle_CheckNumAccount = 1;--Tắt mở chức năng 0 là tắt,1 là mở
CampBattle.Mission_CampBattle_HardWare_Folder = "\\script\\iDoctor\\CampBattle\\"; -- Đường dẫn folder Ổ cứng
CampBattle.Mission_CampBattle_HardWare_List = "Tong.txt"; -- File Load Tống
CampBattle.Mission_CampBattle_HardWare_ListKim = "Kim.txt"; -- File Load Kim

function CampBattle:WriteSongCamp(pPlayer)
	if not pPlayer then 
		return;
	end	

	local nHardWareId = pPlayer.dwHardWareId;
	if not nHardWareId then 
		return -1,0,"Lỗi thông tin ổ cứng";
	end	

	local szFile = CampBattle.Mission_CampBattle_HardWare_Folder..CampBattle.Mission_CampBattle_HardWare_List.."";

	local szIPPath = "\\script\\iDoctor\\DontLimitBattle\\Account.txt";  
    local tbIPSetting = Lib:LoadTabFile(szIPPath);

    for nRow, tbRowData in pairs(tbIPSetting) do
        local tbTemp = {};
        tbTemp.szIPban = tbRowData["szAccount"];
        if (tbTemp.szIPban == me.szAccount) then
		    me.Msg("<color=yellow>Không giới hạn nhân vật này:<color><color=cyan> Successfully<color>");
            return 0;
        end
	end
	
	local szHwidOld = "\\script\\iDoctor\\CampBattle\\Tong.txt";  
    local tbHwidOld = Lib:LoadTabFile(szHwidOld);
    for nRow, tbRowData in pairs(tbHwidOld) do
        if (tonumber(tbRowData.Name) == nHardWareId) then
		me.Msg("<color=cyan>Địa chỉ Ip này đã được ghi nhận phe:<color><color=blue> Tống<color>");
        return 0;	
        end
    end
	
    KFile.AppendFile(szFile, nHardWareId.."\n");
end

function CampBattle:WriteKimCamp(pPlayer)
	if not pPlayer then 
		return;
	end	

	local nHardWareId = pPlayer.dwHardWareId;
	if not nHardWareId then 
		return ;
	end	

	local szFile = CampBattle.Mission_CampBattle_HardWare_Folder..CampBattle.Mission_CampBattle_HardWare_ListKim.."";

	local szIPPath = "\\script\\iDoctor\\DontLimitBattle\\Account.txt";  
    local tbIPSetting = Lib:LoadTabFile(szIPPath);

    for nRow, tbRowData in pairs(tbIPSetting) do
        local tbTemp = {};
        tbTemp.szIPban = tbRowData["szAccount"];
        if (tbTemp.szIPban == me.szAccount) then
		    me.Msg("<color=yellow>Không giới hạn nhân vật này:<color><color=cyan> Successfully<color>");
            return 0;
        end
	end
	
	local szHwidOld = "\\script\\iDoctor\\CampBattle\\Kim.txt";  
    local tbHwidOld = Lib:LoadTabFile(szHwidOld);
    for nRow, tbRowData in pairs(tbHwidOld) do
        if (tonumber(tbRowData.Name) == nHardWareId) then
		me.Msg("<color=cyan>Địa chỉ Ip này đã được ghi nhận phe:<color><color=purple> Kim<color>");
        return 0;		
        end
    end
	
    KFile.AppendFile(szFile, nHardWareId.."\n");
end
