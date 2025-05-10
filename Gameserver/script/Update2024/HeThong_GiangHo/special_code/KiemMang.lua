local tbGiangHo = Npc:GetClass("KiemMang");

tbGiangHo.ID_skillGiangHo = 1720;
tbGiangHo.ManhGhep = {18,1,3942,3};	--Mảnh Hiệp Khách
tbGiangHo.ManhGhepSuDung = 100;
tbGiangHo.MayManTienCap = 3;
tbGiangHo.GioiHanLevel = 20;
tbGiangHo.Name_ManhGhep = "Mảnh Hiệp Khách";
tbGiangHo.Name_GiangHo = "Kiếm Mang";

--Thương Viêm Tuyệt Thế--
function tbGiangHo:OnDialog()
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local level_HienTai = me.GetSkillLevel(self.ID_skillGiangHo);

local szMsg = "<color=yellow>★ Hệ thống Giang Hồ: <color=cyan>"..self.Name_GiangHo.."<color>\n"..
"<color=yellow>❂ Đẳng cấp: <color=cyan>"..level_HienTai.."/"..self.GioiHanLevel.."<color><color>\n"..
"<color=yellow>❂ Nguyên Liệu: <color=cyan>"..self.Name_ManhGhep.."/"..self.ManhGhepSuDung.." Mảnh<color><color>\n"..
"<color=yellow>❂ Tỷ lệ Thành công: <color=cyan>"..self.MayManTienCap.."%<color><color>"
local tbOpt = 
{
{"<bclr=0,0,200><color=white>[Kích Hoạt "..self.Name_GiangHo.."]",self.KichHoat_GiangHo,self},
{"<bclr=0,0,200><color=white>[Tiến cấp "..self.Name_GiangHo.."]",self.Update_GiangHo,self},
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
function tbGiangHo:KichHoat_GiangHo()
	local Update_IDGH = self.ID_skillGiangHo;
	local level_HienTai = me.GetSkillLevel(Update_IDGH);

	--if level_HienTai < 1 then
	--Dialog:Say("<color=red>Ngươi Chưa kích hoạt "..self.Name_GiangHo.." +1, không thể Tiến cấp!");
	--return 0;
	--end


	if level_HienTai >= 1 then
	Dialog:Say("<color=red>Ngươi đã Kích hoạt, hãy đến Tiến cấp!");
	return 0;
	end

	local tbItemId_TruMG	= {18,1,3942,3,0,0};				--Mảnh Bí Bảo
	local nCountMG = me.GetItemCountInBags(18,1,3942,3) --Mảnh Bí Bảo

	if nCountMG < self.ManhGhepSuDung	then
	Dialog:Say("<color=yellow>Kích Hoạt "..self.Name_GiangHo.." cần có trong hành trang:<color> \n ["..self.ManhGhepSuDung.."] "..self.Name_ManhGhep.."(đã giám định).\n<color=green>Ngươi chỉ có:<color> \n "..nCountMG.."/"..self.ManhGhepSuDung.." "..self.Name_ManhGhep.."(đã giám định).\n")
	return
	end

	--Phần thưởng--
	---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {self.MayManTienCap,(100-self.MayManTienCap)};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	me.AddFightSkill(Update_IDGH,1);
	local szMsg = "<color=cyan> <color=yellow>["..me.szName.."]<color> đã Kích Hoạt Thành công "..self.Name_GiangHo.." <color=green>+ 1<color> với "..self.MayManTienCap.."% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);

	elseif (tbAward[nIndex]==2) then
	local szMsg = "<color=cyan> <color=yellow>["..me.szName.."]<color> đã Kích Hoạt Thất bại "..self.Name_GiangHo.." <color=green>+ 1<color>  với "..self.MayManTienCap.."% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end

	Task:DelItem(me, tbItemId_TruMG, self.ManhGhepSuDung);
end
function tbGiangHo:Update_GiangHo()
	local Update_IDGH = self.ID_skillGiangHo;
	local level_HienTai = me.GetSkillLevel(Update_IDGH);

	if level_HienTai < 1 then
	Dialog:Say("<color=red>Ngươi Chưa kích hoạt "..self.Name_GiangHo.." +1, không thể Tiến cấp!");
	return 0;
	end


	if level_HienTai == self.GioiHanLevel then
	Dialog:Say("<color=red>Đẳng cấp đã đạt giới hạn, không thể Tiến cấp!");
	return 0;
	end

	local tbItemId_TruMG	= {18,1,3942,3,0,0};				--Mảnh Bí Bảo
	local nCountMG = me.GetItemCountInBags(18,1,3942,3) --Mảnh Bí Bảo

	if nCountMG < self.ManhGhepSuDung	then
	Dialog:Say("<color=yellow>Tiến cấp "..self.Name_GiangHo.." cần có trong hành trang:<color> \n ["..self.ManhGhepSuDung.."] "..self.Name_ManhGhep.."(đã giám định).\n<color=green>Ngươi chỉ có:<color> \n "..nCountMG.."/"..self.ManhGhepSuDung.." "..self.Name_ManhGhep.."(đã giám định).\n")
	return
	end

	--Phần thưởng--
	---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {self.MayManTienCap,(100-self.MayManTienCap)};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	me.AddFightSkill(Update_IDGH,level_HienTai + 1);
	local szMsg = "<color=cyan> <color=yellow>["..me.szName.."]<color> đã Tiến cấp Thành công "..self.Name_GiangHo.." <color=green>" ..(level_HienTai + 1).."<color> với "..self.MayManTienCap.."% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);

	elseif (tbAward[nIndex]==2) then
	local szMsg = "<color=cyan> <color=yellow>["..me.szName.."]<color> đã Tiến cấp Thất bại "..self.Name_GiangHo.." <color=green>" ..(level_HienTai + 1).."<color>  với "..self.MayManTienCap.."% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end

	Task:DelItem(me, tbItemId_TruMG, self.ManhGhepSuDung);
end
