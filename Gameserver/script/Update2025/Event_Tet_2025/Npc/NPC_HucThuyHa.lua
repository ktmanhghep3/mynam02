local tbNpc = Npc:GetClass("NPC_HucThuyHa");

tbNpc.TG_DiemHiepNghiaTanNien = 4520; --Điểm Hiệp Nghĩa Tân Niên
tbNpc.ID_DiemHiepNghiaTanNien = 1;
tbNpc.MapPos_Random =
{
{2111 , 1675,3547},
{2111 , 1597,3419},
};


function tbNpc:OnDialog()
DoScript("\\script\\Update2025\\Event_Tet_2025\\Npc\\NPC_HucThuyHa.lua");

local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local Diem_HiepNghiaTanNien = me.GetTask(self.TG_DiemHiepNghiaTanNien,self.ID_DiemHiepNghiaTanNien);
local szMsg = "<bclr=0,0,200><color=white>Sự Kiện VIP: Húc Thủy Hà Chiến:\n"..
"<color=yellow>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=yellow>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>★ Điểm Hiệp Nghĩa Tân Niên: <color=red>"..Diem_HiepNghiaTanNien.."<color><color>\n"
local tbOpt = {};

table.insert(tbOpt,{"<bclr=0,0,200><color=white>Ta muốn đến Húc Thủy Hà", self.VaoMap_HucThuyHa, self});
table.insert(tbOpt,{"<color=yellow>Cửa hàng Húc Thủy Hà", Dialog.OpenShop, Dialog, 353, 3});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Cửa hàng Điểm Tích Lũy (New)", Dialog.OpenShop, Dialog, 354, 10});
Dialog:Say(szMsg, tbOpt);
end




function tbNpc:VaoMap_HucThuyHa()
	if me.GetTask(self.TG_DiemHiepNghiaTanNien, self.ID_DiemHiepNghiaTanNien) < 1 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Hiệp Nghĩa Tân Niên của ngươi không đủ, không thể đi đến đó!<color>"));
		Dialog:Say("<bclr=0,0,200><color=white>Điểm Hiệp Nghĩa Tân Niên của ngươi không đủ 1, không thể đi đến đó, rất nguy hiểm, dùng Thẻ Hiệp Nghĩa trong cửa hàng để tích Điểm Hiệp Nghĩa Tân Niên rồi hãy quay lại đây!<color>")
		return; 
	end





local nRand = MathRandom(1,#self.MapPos_Random)
me.NewWorld(unpack(self.MapPos_Random[nRand]));
Dialog:SendBlackBoardMsg(me, string.format("<bclr=0,0,200><color=white>Đã đến nơi, hãy cẩn thận!!!!<color>"));
end
