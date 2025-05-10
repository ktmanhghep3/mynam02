local tbNpc = Npc:GetClass("NPCSuKien");

tbNpc.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbNpc.TaskID_Time = 1;

tbNpc.TaskGroupTT = 4030;--TaskGroup Code Tân Thủ, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbNpc.TaskIDTT = 1;

function tbNpc:OnDialog()
if me.GetTask(self.TaskGroupTT, self.TaskIDTT) < 1 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chưa Kích hoạt Code Tân Thủ, không thể dùng chức năng này!<color>"));
return 0; 
end

local nNgay = tonumber(os.date("%d", nSec));
local nThang = tonumber(os.date("%m", nSec));
local nNam = tonumber(os.date("%Y", nSec));
local nGio = tonumber(os.date("%H", GetTime()));
local nPhut = tonumber(os.date("%M", GetTime()));
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
local szMsg = 
"<color=yellow>Thông tin:\n\n"..
"- Thời gian: <color=green>"..nNgay.."/"..nThang.."/"..nNam.." - "..nGio.."h:"..nPhut.."p<color>\n"..
"- Thời gian còn lại: <color=cyan>" .. nPoint .. "<color> ngày\n"..
"<color=green>* Các hoạt động Báo danh:\n"..
"<color=pink>- Công Thành Chiến: Thứ 2,4 - 19h30\n"..
"<color=pink>- Luận Kiếm: Thứ 3,6 - 19h30\n"..
"<color=pink>- Loạn Phái: Thứ 3 - 19h30\n"

local tbOpt = 
{

--{"<color=yellow>[Giải Đấu PK] - Mạn Đà Trang<color>" , SpecialEvent.ManDaPK.OnDialog, SpecialEvent.ManDaPK},
{"<color=yellow>[Hoạt Động PK] - Võ Lâm Luận Kiếm<color>" , SpecialEvent.DauTruongNew.OnDialog, SpecialEvent.DauTruongNew},
{"<color=yellow>Công Thành Chiến<color>",self.BDCongThanh,self};
{"<color=yellow>Thi đấu Loạn phái", FactionBattle.ChoiceFunc, FactionBattle, nFaction},
{"<color=yellow>Nhận Túi Tân Thủ", self.AddTui, self};
{"<color=green>Gia nhập Môn phái", "Npc.tbMenPaiNpc:FactionDialog", Npc.tbMenPaiNpc.DialogMaster},
--{"<color=yellow>Event Trung Thu",SpecialEvent.NPCEventTrungThu.OnDialog, SpecialEvent.NPCEventTrungThu},


{"<bclr=0,0,200><color=white>[Khắc Di Môn]-Đông Hạ Lan Sơn<color>", SpecialEvent.Active_KDM.OnDialog,SpecialEvent.Active_KDM},
{"<bclr=0,0,200><color=white>Ta muốn vào Phù Đồ Cổ Thành_Tân Thủ<color>", SpecialEvent.Active_PhuDoCoThanh_TanThu.OnDialog,SpecialEvent.Active_PhuDoCoThanh_TanThu},
{"<bclr=0,0,200><color=white>Ta muốn vào Phù Đồ Cổ Thành_Cao Thủ<color>", SpecialEvent.Active_PhuDoCoThanh_CaoThu.OnDialog,SpecialEvent.Active_PhuDoCoThanh_CaoThu},
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbNpc:BDCongThanh()
local tbNpc = Npc:GetClass("ctcchefu");
tbNpc:OnDialog(nCheck)
end
function tbNpc:AddTui()
me.AddStackItem(18,1,351,2,{bForceBind=1,},1);
end

