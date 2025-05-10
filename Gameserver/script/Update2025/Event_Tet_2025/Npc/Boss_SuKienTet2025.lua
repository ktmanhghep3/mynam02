local tbBoss_SK = Npc:GetClass("BossSuKienTet2025_1");-- class cua boss
tbBoss_SK.TG_DiemHiepNghiaTanNien = 4520; --Điểm Hiệp Nghĩa Tân Niên
tbBoss_SK.ID_DiemHiepNghiaTanNien = 1;

function tbBoss_SK:OnDeath(pNpcKiller)
local Diem_HiepNghiaTanNien = me.GetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien);
me.SetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien,Diem_HiepNghiaTanNien - 2);
if Diem_HiepNghiaTanNien < 1 then
	me.NewWorld(775,1446,3357);
	me.SetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien,0);
	Dialog:SendBlackBoardMsg(me, "<bclr=100,0,100><color=yellow>Điểm Hiệp Nghĩa Tân Niên đã hết, không thể ở lại được nữa!");
	me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<bclr=100,0,100><color=yellow>Hãy dùng Thẻ Hiệp Nghĩa trong cửa hàng để tích Điểm Hiệp Nghĩa Tân Niên rồi trở lại đây!"});
end


--Phần thưởng--
--Item rơi ra ngoài đất--
local nNpcMapId, nNpcPosX, nNpcPosY = him.GetWorldPos(); 
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,4031,1); --Rương Thủy Hà

--Item vào Túi--
--me.AddStackItem(18,1,4031,1,{bForceBind=1,},1); --Rương Thủy Hà


local Diem_HiepNghiaTanNien_Check = me.GetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien);

me.Msg(string.format("<bclr=100,0,100><color=yellow>Điểm Hiệp Nghĩa Tân Niên còn lại: %d ",Diem_HiepNghiaTanNien_Check));
end




local tbBoss_SK = Npc:GetClass("BossSuKienTet2025_2");-- class cua boss
tbBoss_SK.TG_DiemHiepNghiaTanNien = 4520; --Điểm Hiệp Nghĩa Tân Niên
tbBoss_SK.ID_DiemHiepNghiaTanNien = 1;

function tbBoss_SK:OnDeath(pNpcKiller)
local Diem_HiepNghiaTanNien = me.GetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien);
me.SetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien,Diem_HiepNghiaTanNien - 2);
if Diem_HiepNghiaTanNien < 1 then
	me.NewWorld(775,1446,3357);
	me.SetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien,0);
	Dialog:SendBlackBoardMsg(me, "<bclr=100,0,100><color=yellow>Điểm Hiệp Nghĩa Tân Niên đã hết, không thể ở lại được nữa!");
	me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<bclr=100,0,100><color=yellow>Hãy dùng Thẻ Hiệp Nghĩa trong cửa hàng để tích Điểm Hiệp Nghĩa Tân Niên rồi trở lại đây!"});
end


--Phần thưởng--
--Item rơi ra ngoài đất--
local nNpcMapId, nNpcPosX, nNpcPosY = him.GetWorldPos(); 
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,4031,1); --Rương Thủy Hà

--Item vào Túi--
--me.AddStackItem(18,1,4031,1,{bForceBind=1,},1); --Rương Thủy Hà


local Diem_HiepNghiaTanNien_Check = me.GetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien);

me.Msg(string.format("<bclr=100,0,100><color=yellow>Điểm Hiệp Nghĩa Tân Niên còn lại: %d ",Diem_HiepNghiaTanNien_Check));
end

