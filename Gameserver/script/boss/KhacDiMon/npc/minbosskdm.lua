local tbBoss = Npc:GetClass("minbosskdm");-- class cua boss

tbBoss.GioiHan_TrongNgay = 18;
tbBoss.Time_DuyTri = 10800;
tbBoss.ID_ChiNgaoHoaTru = 8040;

tbBoss.TaskGroup_SoLanGietQuaiBoss = 4101;		--Điếm số lần Giết Quái-Boss KDM (1: quái thường, 2: Tàn Hồn, 3: Thái Hư)
tbBoss.TaskID_Quai = 1;		 					--1: quái thường

tbBoss.TaskGroup_SoLanMoTru_LoiVao = 4102;		--Điếm số lần mở lối vào-Trụ KDM (1: tìm được Hỏa trụ, 2: tìm được lối vào Bí Bảo, 3: tìm được lối vào Cổ Quật)
tbBoss.TaskID_Tim_HoaTru = 1;		 		 	--1: tìm được Hỏa trụ

function tbBoss:OnDeath(pNpcKiller)
local Time	= os.date("%Hh:%M", GetTime());
local nMapId, nPosX, nPosY = me.GetWorldPos();
local SoLanDaAdd = KGblTask.SCGetDbTaskInt(DBTASD_GIOIHANADDHOATRUKDM);
local tbBoss = Npc:GetClass("gouhuonpc");

--Phần thưởng không điều kiện--
self:Droprate_Thuong();
local SoLan_GietQuai = me.GetTask(self.TaskGroup_SoLanGietQuaiBoss,self.TaskID_Quai);
me.SetTask(self.TaskGroup_SoLanGietQuaiBoss, self.TaskID_Quai, SoLan_GietQuai + 1);


--Phần thưởng có điều kiện--
	if SoLanDaAdd >= self.GioiHan_TrongNgay then
		return;
	end
---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 1000);
	local tbRate = {345,350,300,5};
	local tbAward = {1,2,3,4};
	for i = 1, 4 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	--phần thưởng (1) trống--
	--me.AddStackItem(18,1,1331,4,nil,1);

	elseif (tbAward[nIndex]==2) then
	--phần thưởng (1) trống--
	--me.AddStackItem(18,1,1331,4,nil,1);

	
	elseif (tbAward[nIndex]==3) then
	--phần thưởng (1) trống--
	--me.AddStackItem(18,1,1331,4,nil,1);

	elseif (tbAward[nIndex]==4) then
	local SoLan_Tim_HoaTru = me.GetTask(self.TaskGroup_SoLanMoTru_LoiVao,self.TaskID_Tim_HoaTru);
	me.SetTask(self.TaskGroup_SoLanMoTru_LoiVao, self.TaskID_Tim_HoaTru, SoLan_Tim_HoaTru + 1);

	KGblTask.SCSetDbTaskInt(DBTASD_GIOIHANADDHOATRUKDM, (SoLanDaAdd + 1)); --Add số lần xuất hiện trụ chung cả Server
	local pNpc = KNpc.Add2(self.ID_ChiNgaoHoaTru , 120, -1 , nMapId, nPosX, nPosY);--Chi Ngạo Hỏa Trụ
	pNpc.szName = "{"..me.szName.."} tìm thấy";
	if pNpc then
	tbBoss:InitGouHuo(pNpc.dwId, 0,	self.Time_DuyTri, 5, 45, 0, 0)
	tbBoss:StartNpcTimer(pNpc.dwId)	
	end
	local Time_2	= os.date("%d-%m-%Y %Hh:%Mp", GetTime());
	local szHistory = "\\script\\boss\\KhacDiMon\\npc\\Log_AnhHung.txt";
	KFile.AppendFile(szHistory, ""..me.szName.."\t"..Time_2.."\n");

	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] : <color=Turquoise>"..me.szName.."<color> May mắn đánh quái đã tìm ra <color=pink>Chi Ngạo Hỏa Trụ<color> Tại <color=green>Đông Hạ Lan Sơn<color>\nThời gian tồn tại là <color=red>120 phút<color>! Hãy nhanh chóng thời gian!<color>");	
	Player:SendMsgToKinOrTong(me, " Đã tìm thấy [Chi Ngạo Hỏa Trụ] !!!!", 0);-- Thông Báo Gia Tộc
	Player:SendMsgToKinOrTong(me, " Đã tìm thấy [Chi Ngạo Hỏa Trụ] !!!!", 1);-- Thông Báo Bang Hội

	end
	
	
	
end


function tbBoss:Droprate_Thuong()
---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {25,25,50};
	local tbAward = {1,2,3};

	for i = 1, 3 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	--me.AddItem(18,1,3030,4); --Lá dong

	elseif (tbAward[nIndex]==2) then
	--me.AddItem(18,1,3031,1); --Thiệp xuân 2024

	elseif (tbAward[nIndex]==3) then

	end

end
