	
function Player:SetMaxLevelGC()
		if KGblTask.SCGetDbTaskInt(DBTASD_SERVER_SETMAXLEVELSV) == 0 then
			KGblTask.SCSetDbTaskInt(DBTASD_SERVER_SETMAXLEVELSV, GetTime());
		end
		Dbg:WriteLog("Player","Cap cao nhat 180"); 
		GlobalExcute({"Player:SetMaxLevelGC2GS", 180});
		GlobalExcute({"Player.tbOffline:OnUpdateLevelInfo"});
		Task.tbHelp:UpdateLevelOpenTimeNews(DBTASD_SERVER_SETMAXLEVELSV, 180);
		return 0;
end

function Player:SetMaxLevelGC2GS(nMaxLevel)
	if KPlayer.GetMaxLevel() < nMaxLevel then
		KPlayer.SetMaxLevel(nMaxLevel);
		Dbg:WriteLog("Player","�ڧاڧ�??�ҩ�?�ҧ�ڧ�بd�ڧ�??"..nMaxLevel);
	end
end

function Player:SetMaxLevelGS()
            if KPlayer.GetMaxLevel() < 200 then
                KPlayer.SetMaxLevel(200);
                Dbg:WriteLog("Player","Cap cao nhat 200"); 
            end
            return 0;
end
