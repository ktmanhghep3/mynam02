local tbThatKiem = Npc:GetClass("Update_ThatKiem");

tbThatKiem.ThatKiemNew = 1756;
tbThatKiem.TK_DiemThanhTuuPK = 4500;
tbThatKiem.ID_DiemThanhTuuPK = 1;
tbThatKiem.DiemPKBiTru = 5;
tbThatKiem.DiemPKBiTru_KichHoat = 10;
tbThatKiem.GioiHanLvKiem = 50;

function tbThatKiem:OnDialog()
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local DiemThanhTuuPK = me.GetTask(self.TK_DiemThanhTuuPK,self.ID_DiemThanhTuuPK);
local szMsg = "<color=blue>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=blue>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>❂ Điểm Thành Tựu PK: <color=pink>"..DiemThanhTuuPK.."<color> Điểm.\n"
local tbOpt = 
{
{"<bclr=0,0,200><color=red>[Kích Hoạt Thất Kiếm]",self.KichHoat_ThatKiemNew,self},
{"<bclr=0,0,200><color=white>[Tiến cấp Thất Kiếm]",self.Update_ThatKiemNew,self},
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
function tbThatKiem:KichHoat_ThatKiemNew()
	local Update_Kiem = self.ThatKiemNew;
	local Lv_Kiem = me.GetSkillLevel(Update_Kiem);
	local DiemThanhTuuPK = me.GetTask(self.TK_DiemThanhTuuPK,self.ID_DiemThanhTuuPK);

	if DiemThanhTuuPK < self.DiemPKBiTru_KichHoat then
	Dialog:Say("<color=red>Điểm Thành Tựu PK dưới "..self.DiemPKBiTru_KichHoat.." Điểm, Không thể Kích Hoạt!<color>");
	return
	end

	if Lv_Kiem >= 1 then
	Dialog:Say("<color=red>Ngươi đã kích hoạt rồi, không thể Kích Hoạt nữa!");
	return 0;
	end

	--Phần thưởng--
	---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {10,90};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	me.AddFightSkill(Update_Kiem,1);
	local szMsg = "<color=cyan>Lãng hiệp: <color=yellow>["..me.szName.."]<color> đã Kích Hoạt Thành công Du Long Kiếm <color=green>+1<color> với 10% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);

	elseif (tbAward[nIndex]==2) then
	local szMsg = "<color=cyan>Lãng hiệp: <color=yellow>["..me.szName.."]<color> đã Kích Hoạt Thất bại Du Long Kiếm <color=green>+1<color>  với 10% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end


	local DiemThanhTuuPK = me.GetTask(self.TK_DiemThanhTuuPK,self.ID_DiemThanhTuuPK);
	me.SetTask(self.TK_DiemThanhTuuPK, self.ID_DiemThanhTuuPK, DiemThanhTuuPK - self.DiemPKBiTru_KichHoat);
end
function tbThatKiem:Update_ThatKiemNew()
	local Update_Kiem = self.ThatKiemNew;
	local Lv_Kiem = me.GetSkillLevel(Update_Kiem);
	local DiemThanhTuuPK = me.GetTask(self.TK_DiemThanhTuuPK,self.ID_DiemThanhTuuPK);

	if Lv_Kiem < 1 then
	Dialog:Say("<color=red>Ngươi Chưa kích hoạt, không thể Tiến cấp!");
	return 0;
	end

	if DiemThanhTuuPK < self.DiemPKBiTru then
	Dialog:Say("<color=red>Điểm Thành Tựu PK dưới "..self.DiemPKBiTru.." Điểm, Không thể Tiến cấp!<color>");
	return
	end

	if Lv_Kiem == self.GioiHanLvKiem then
	Dialog:Say("<color=red>Đẳng cấp đã đạt giới hạn, không thể Tiến cấp!");
	return 0;
	end

	--Phần thưởng--
	---Phần thưởng Random--
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;	
	nRand = MathRandom(1, 100);
	local tbRate = {20,80};
	local tbAward = {1,2};

	for i = 1, 2 do
	nAdd = nAdd + tbRate[i];
	if nAdd >= nRand then
	nIndex = i;
	break;
	end
	end
	
	if (tbAward[nIndex]==1) then
	me.AddFightSkill(Update_Kiem,Lv_Kiem + 1);
	local szMsg = "<color=cyan>Lãng hiệp: <color=yellow>["..me.szName.."]<color> đã Tiến cấp Thành công Du Long Kiếm <color=green>" ..(Lv_Kiem + 1).."<color> với 20% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);

	elseif (tbAward[nIndex]==2) then
	local szMsg = "<color=cyan>Lãng hiệp: <color=yellow>["..me.szName.."]<color> đã Tiến cấp Thất bại Du Long Kiếm <color=green>" ..(Lv_Kiem + 1).."<color>  với 20% may mắn!";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
	end


	local DiemThanhTuuPK = me.GetTask(self.TK_DiemThanhTuuPK,self.ID_DiemThanhTuuPK);
	me.SetTask(self.TK_DiemThanhTuuPK, self.ID_DiemThanhTuuPK, DiemThanhTuuPK - self.DiemPKBiTru);
end
