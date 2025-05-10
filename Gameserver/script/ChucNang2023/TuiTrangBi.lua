--Rương Vũ Khí--
local tbItem = Item:GetClass("RuongVuKhi");

function tbItem:OnUse()
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	
	nRand = MathRandom(1, 1000);

	local tbRate = {180, 175, 170, 165, 160, 150};
	local tbAward = {1 ,2, 3, 4, 5, 6};

	for i = 1, 6 do
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end

	if (tbAward[nIndex]==1) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(81);

	elseif (tbAward[nIndex]==2) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(82);
		
	elseif (tbAward[nIndex]==3) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(83);
		
	elseif (tbAward[nIndex]==4) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(84);
		
	elseif (tbAward[nIndex]==5) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(85);
		
	elseif (tbAward[nIndex]==6) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(86);
	end
	return 1;				
end


--Túi Phòng Cụ--
local tbItem = Item:GetClass("RuongPhongCu");

function tbItem:OnUse()
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	
	nRand = MathRandom(1, 1000);

	local tbRate = {65, 65, 60, 60, 60, 60, 55, 55, 55, 55, 55, 55, 50, 50, 50, 50, 50, 50};
	local tbAward = {1 ,2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18};

	for i = 1, 18 do
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end

	if (tbAward[nIndex]==1) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(87);

	elseif (tbAward[nIndex]==2) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(93);
		
	elseif (tbAward[nIndex]==3) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(99);
		
	elseif (tbAward[nIndex]==4) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(88);
		
	elseif (tbAward[nIndex]==5) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(94);
		
	elseif (tbAward[nIndex]==6) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(100);
		
	elseif (tbAward[nIndex]==7) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(89);
		
	elseif (tbAward[nIndex]==8) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(95);
		
	elseif (tbAward[nIndex]==9) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(101);
		
	elseif (tbAward[nIndex]==10) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(90);
		
	elseif (tbAward[nIndex]==11) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(96);
		
	elseif (tbAward[nIndex]==12) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(102);
		
	elseif (tbAward[nIndex]==13) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(91);
		
	elseif (tbAward[nIndex]==14) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(97);
		
	elseif (tbAward[nIndex]==15) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(103);
		
	elseif (tbAward[nIndex]==16) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(92);
		
	elseif (tbAward[nIndex]==17) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(98);
		
	elseif (tbAward[nIndex]==18) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(104);		
	end
	return 1;				
end


--Rương Trang Sức--
local tbItem = Item:GetClass("RuongTrangSuc");

function tbItem:OnUse()
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	
	nRand = MathRandom(1, 1000);

	local tbRate = {65, 65, 60, 60, 60, 60, 55, 55, 55, 55, 55, 55, 50, 50, 50, 50, 50, 50};
	local tbAward = {1 ,2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18};

	for i = 1, 18 do
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end

	if (tbAward[nIndex]==1) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(105);

	elseif (tbAward[nIndex]==2) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(111);
		
	elseif (tbAward[nIndex]==3) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(117);
		
	elseif (tbAward[nIndex]==4) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(106);
		
	elseif (tbAward[nIndex]==5) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(112);
		
	elseif (tbAward[nIndex]==6) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(118);
		
	elseif (tbAward[nIndex]==7) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(107);
		
	elseif (tbAward[nIndex]==8) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(113);
		
	elseif (tbAward[nIndex]==9) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(119);
		
	elseif (tbAward[nIndex]==10) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(108);
		
	elseif (tbAward[nIndex]==11) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(114);
		
	elseif (tbAward[nIndex]==12) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(120);
		
	elseif (tbAward[nIndex]==13) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(109);
		
	elseif (tbAward[nIndex]==14) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(115);
		
	elseif (tbAward[nIndex]==15) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(121);
		
	elseif (tbAward[nIndex]==16) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(110);
		
	elseif (tbAward[nIndex]==17) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(116);
		
	elseif (tbAward[nIndex]==18) then
		local tbRandomItem = Item:GetClass("randomitem");
		tbRandomItem:SureOnUse(122);		
	end
	return 1;				
end


--Túi Mảnh Ghép x1--
local tbItem = Item:GetClass("Box_1");

function tbItem:OnUse()

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(123);
return 1;				
end
--Túi Mảnh Ghép x5--
local tbItem = Item:GetClass("Box_5");

function tbItem:OnUse()

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(124);
return 1;				
end


--Túi Mảnh Ghép x10--
local tbItem = Item:GetClass("Box_10");

function tbItem:OnUse()

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(125);
return 1;				
end

--Rương Thi Đấu Môn Phái--
local tbItem = Item:GetClass("Ruong_TDMP");

function tbItem:OnUse()

local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(1);
local tbRandomItem = Item:GetClass("randomitem");
tbRandomItem:SureOnUse(126);
return 1;				
end

