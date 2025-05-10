local tbNpc = Npc:GetClass("TrieuHoi_BigBoss");

tbNpc.Delay_Times = 25;

tbNpc.IdMap_LongHonCoQuat = 2106;
tbNpc.ID_ThaiHuCoLong = 8049;
tbNpc.Level_ThaiHuCoLong = 150;
tbNpc.GioiHan_AddBoss = 3;

tbNpc.Time_TrieuHoi = 3*60*60; --Giãn cách Thời gian Triệu hồi



function tbNpc:OnDialog()
local SoLan_Add = KGblTask.SCGetDbTaskInt(DBTASD_ADDBOSS_THAIHUCOLONG);
local SoLan_Skin = KGblTask.SCGetDbTaskInt(DBTASD_SKINBOSS_THAIHUCOLONG);
local nCheck, nSec = self:Check_Time_TrieuHoi();

	if nCheck == 0 then
		local szTime = Lib:TimeFullDesc(nSec);
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Thời gian Triệu hoán cách nhau 3 giờ, hiện tại còn: "..szTime.."<color>"));
		return;
	end 	

	if SoLan_Add > SoLan_Skin then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Thái Hư Cổ Long chưa bị đánh bại, không thể Triệu Hoán!<color>"));
		return;
	end
	
	if SoLan_Add >= self.GioiHan_AddBoss then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Số lần Triệu Hoán trong ngày Cả Server đã đạt "..SoLan_Add.."/"..self.GioiHan_AddBoss.."!<color>"));
		return;
	end

	local tbEvent = 
	{
		Player.ProcessBreakEvent.emEVENT_MOVE,
		Player.ProcessBreakEvent.emEVENT_ATTACK,
		Player.ProcessBreakEvent.emEVENT_SITE,
		Player.ProcessBreakEvent.emEVENT_USEITEM,
		Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
		Player.ProcessBreakEvent.emEVENT_DROPITEM,
		Player.ProcessBreakEvent.emEVENT_SENDMAIL,
		Player.ProcessBreakEvent.emEVENT_TRADE,
		Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
		Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
		Player.ProcessBreakEvent.emEVENT_LOGOUT,
		Player.ProcessBreakEvent.emEVENT_DEATH,
		Player.ProcessBreakEvent.emEVENT_ATTACKED,
	}
    GeneralProcess:StartProcess("<color=green>Đang triệu hoán...<color>", self.Delay_Times * Env.GAME_FPS, {self.GetQuest, self, me.nId, him.dwId}, nil, tbEvent);
end

function tbNpc:GetQuest(nPlayerId, nNpcId)
local Time	= os.date("%Hh:%M", GetTime());
local SoLan_Add = KGblTask.SCGetDbTaskInt(DBTASD_ADDBOSS_THAIHUCOLONG);
local nCurTime = GetTime();

KGblTask.SCSetDbTaskInt(DBTASD_ADDBOSS_THAIHUCOLONG, (SoLan_Add + 1)); --Add số lần thêm Boss
KGblTask.SCSetDbTaskInt(DBTASD_TIME_GOI_THAIHUCOLONG, nCurTime); --Add Thời gian thêm Boss

local pNpc = KNpc.Add2(self.ID_ThaiHuCoLong , self.Level_ThaiHuCoLong, -1 , self.IdMap_LongHonCoQuat, 1639, 3185);
pNpc.szName = "["..me.szName.."] Triệu Hồi";

local Time_THCL	= os.date("%d-%m-%Y %Hh:%Mp", GetTime());
local szHistory_THCL = "\\script\\boss\\KhacDiMon\\npc\\Log_TrieuHoi_ThaiHuCoLong.txt";
KFile.AppendFile(szHistory_THCL, ""..me.szName.."\t"..Time_THCL.."\n");

local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] :  <color=Turquoise>"..me.szName.."<color> Triệu hoán Viễn Cổ <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId).."<color> lần: <color=red>"..(SoLan_Add+1).."<color> trong Server!<color>");	
Player:SendMsgToKinOrTong(me, " đã Triệu hoán Thái Hư Cổ Long lần: "..(SoLan_Add+1).." trong Server tại di tích Long Hồn Cổ Quật!", 0);-- Thông Báo Gia Tộc
Player:SendMsgToKinOrTong(me, " đã Triệu hoán Thái Hư Cổ Long lần: "..(SoLan_Add+1).." trong Server tại di tích Long Hồn Cổ Quật!", 1);-- Thông Báo Bang Hội

end 

function tbNpc:Check_Time_TrieuHoi()
	local nEndTime = KGblTask.SCGetDbTaskInt(DBTASD_TIME_GOI_THAIHUCOLONG) + self.Time_TrieuHoi;
	local nRemainSec = nEndTime -  GetTime();	
	if nRemainSec < 0   then
	 	return 1 , 0;
	end
	return 0 , nRemainSec;			
end
