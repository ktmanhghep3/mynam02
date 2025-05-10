local tbBoss = Npc:GetClass("BigBoss_KDM_CoLong");-- class cua boss

tbBoss.TaskGroup_SoLanGietQuaiBoss = 4101;		--Điếm số lần Giết Quái-Boss KDM (1: quái thường, 2: Tàn Hồn, 3: Thái Hư)
tbBoss.TaskID_ThaiHuCoLong = 3; 				--3: Thái Hư


function tbBoss:OnDeath(pNpcKiller)
local Time	= os.date("%Hh:%M", GetTime());
local SoLan_GietThaiHu = me.GetTask(self.TaskGroup_SoLanGietQuaiBoss,self.TaskID_ThaiHuCoLong);
me.SetTask(self.TaskGroup_SoLanGietQuaiBoss, self.TaskID_ThaiHuCoLong, SoLan_GietThaiHu + 1);

-- Phần thưởng Cố Định--
me.AddStackItem(18,1,3941,2,nil,25);--Mảnh Cường Nhân (Chưa Giám Định)
---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {27,27,27,8,6,3,2};
	local tbAward = {1,2,3,4,5,6,7};

	for i = 1, 7 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
me.AddStackItem(18,1,3001,1,nil,100);--Lệnh Bài Sát Thần PK
me.AddStackItem(18,1,3100,2,{bForceBind=1,},1);--Khoá Vô Cực
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : Cơ duyên cùng Võ công lợi hại  <color=Turquoise>"..me.szName.."<color> đánh bại <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>Nhận được phần thưởng ngẫu nhiên từ trong Cổ Quật:<color><color=cyan>\n- 100 ~ Lệnh Bài Sát Thần PK<color><color>");	

	elseif (tbAward[nIndex]==2) then
local pItem = me.AddItem(18,1,3019,1);--Tuyệt Kỹ Trấn Phái Cấp 3-Vĩnh Viễn
me.AddStackItem(18,1,3100,2,{bForceBind=1,},1);--Khoá Vô Cực
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : Cơ duyên cùng với Võ công lợi hại  <color=Turquoise>"..me.szName.."<color> đánh bại <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>Nhận được phần thưởng ngẫu nhiên từ trong Cổ Quật:<color><color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==3) then
local pItem = me.AddItem(18,1,3020,1);--Tuyệt Kỹ Trấn Phái Cấp 4-Vĩnh Viễn
me.AddStackItem(18,1,3100,2,{bForceBind=1,},1);--Khoá Vô Cực
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : Cơ duyên cùng với Võ công lợi hại  <color=Turquoise>"..me.szName.."<color> đánh bại <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>Nhận được phần thưởng ngẫu nhiên từ trong Cổ Quật:<color><color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==4) then
local pItem = me.AddItem(18,1,3021,1);--Tuyệt Kỹ Trấn Phái Cấp 5-Vĩnh Viễn
me.AddStackItem(18,1,3100,2,{bForceBind=1,},1);--Khoá Vô Cực
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : Cơ duyên cùng với Võ công lợi hại  <color=Turquoise>"..me.szName.."<color> đánh bại <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>Nhận được phần thưởng ngẫu nhiên từ trong Cổ Quật:<color><color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==5) then
local pItem = me.AddItem(18,1,3027,1);--Tuyệt Kỹ Trấn Phái Cấp 6-Vĩnh Viễn
me.AddStackItem(18,1,3100,2,{bForceBind=1,},2);--Khoá Vô Cực
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : Cơ duyên cùng với Võ công lợi hại  <color=Turquoise>"..me.szName.."<color> đánh bại <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>Nhận được phần thưởng ngẫu nhiên từ trong Cổ Quật:<color><color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==6) then
local pItem = me.AddItem(18,1,3027,2);--Tuyệt Kỹ Trấn Phái Cấp 7-Vĩnh Viễn
me.AddStackItem(18,1,3100,2,{bForceBind=1,},2);--Khoá Vô Cực
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : Cơ duyên cùng với Võ công lợi hại  <color=Turquoise>"..me.szName.."<color> đánh bại <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>Nhận được phần thưởng ngẫu nhiên từ trong Cổ Quật:<color><color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	elseif (tbAward[nIndex]==7) then
local pItem = me.AddItem(18,1,3027,3);--Tuyệt Kỹ Trấn Phái Cấp 8-Vĩnh Viễn
me.AddStackItem(18,1,3100,2,{bForceBind=1,},3);--Khoá Vô Cực
local nMapId,nX,nY = me.GetWorldPos();
KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : Cơ duyên cùng với Võ công lợi hại  <color=Turquoise>"..me.szName.."<color> đánh bại <color=pink>Thái Hư Cổ Long<color> Tại di tích <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>Nhận được phần thưởng ngẫu nhiên từ trong Cổ Quật:<color><color=cyan>\n- 1 ~ "..pItem.szName.."<color><color>");	

	end

local SoLan_Skin = KGblTask.SCGetDbTaskInt(DBTASD_SKINBOSS_THAIHUCOLONG);
KGblTask.SCSetDbTaskInt(DBTASD_SKINBOSS_THAIHUCOLONG, (SoLan_Skin + 1)); --Add số lần Boss bị skin

Player:SendMsgToKinOrTong(me, " Đánh bại Thái Hư Cổ Long trong di tích Long Hồn Cổ Quật!", 0);-- Thông Báo Gia Tộc
Player:SendMsgToKinOrTong(me, " Đánh bại Thái Hư Cổ Long trong di tích Long Hồn Cổ Quật!", 1);-- Thông Báo Bang Hội

end
