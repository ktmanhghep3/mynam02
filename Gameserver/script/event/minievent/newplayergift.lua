local tbGift = Item:GetClass("newplayergift");

tbGift.TaskGroup_Time = 4000; --Tính thời gian online ngày
tbGift.TaskID_Time = 1;

function tbGift:OnUse()
DoScript("\\script\\event\\minievent\\newplayergift.lua");
--DoScript("\\script\\Update_2023\\KhuyenMai.lua");
--DoScript("\\script\\Update_T9\\Event\\Add_VanThienLenh.lua");
local nMapId, nMapX, nMapY	= me.GetWorldPos();	
if nMapId == 2000  then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Không thể sử dụng chức năng này tại đây!<color>"));
return;
end;

if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 0 then
	me.SetTask(self.TaskGroup_Time,self.TaskID_Time,0);
end

if me.GetTask(self.TaskGroup_Time, self.TaskID_Time) < 1 then
	me.NewWorld(2000, 1626, 3187);
	Dialog:SendBlackBoardMsg(me, "<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>");
	me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Thời gian Online đã hết, hãy gia hạn thêm để rời đảo!<color>"});
return;
end;

local TimeNgayThang	= os.date("%d-%m-%Y %Hh:%Mp", GetTime());
local nTimes = me.GetTask(self.TaskGroup_Time, self.TaskID_Time);
local szMsg = 
"<color=pink>Thông tin:<color>\n"..
"<color=yellow>- Thời gian hôm nay: <color=cyan>"..TimeNgayThang.."<color>\n"..
"<color=yellow>Tài khoản Game: <color=green>"..me.szAccount.."<color>\n"..
"<color=yellow>- Thời gian Online còn: <color=green>"..nTimes.."<color> Ngày<color>\n"..
"<color=red>- Hết thời gian Nhân vật sẽ tự động truyền tống đến Đào Nguyên Đảo!<color><color>\n"

local tbOpt = 
{

--{"<bclr=0,0,200><color=white>Đổi Ngoại Trang Áo Full 1", SpecialEvent.DoiNgoaiTrang_Ao.OnDialog, SpecialEvent.DoiNgoaiTrang_Ao},
--{"<bclr=0,0,200><color=white>Nhiệm Vụ Ngày: Tiêu Diệt Boss", SpecialEvent.NVNgay_DanhBoss.OnDialog,SpecialEvent.NVNgay_DanhBoss};
--{"<bclr=0,0,200><color=white>Nhiệm Vụ Ngày: Thu Thập Bảo Vật", SpecialEvent.NVNgay_ThuThapVatPham.OnDialog,SpecialEvent.NVNgay_ThuThapVatPham};
{"<bclr=0,0,200><color=cyan>Tình hình Chiến Sự Khắc Di Môn<color>", SpecialEvent.CheckTaskChungKDM.OnDialog,SpecialEvent.CheckTaskChungKDM};
{"<color=cyan>Nhận Full không giới hạn<color>", SpecialEvent.AddFullDo.OnDialog,SpecialEvent.AddFullDo};
{"<bclr=0,0,200><color=white>✬✬✬Cường Hóa Nhanh 1 Click✬✬✬<color>", SpecialEvent.Update_TuiTanThu_2025.OnDialog,SpecialEvent.Update_TuiTanThu_2025};
{"<color=red>Tiêu hủy Vật phẩm<color>", self.DatVaoVPTieuHuy, self},

--{"<bclr=0,0,200><color=white>Khuyến mãi Ngôi Sao May Mắn<color>", SpecialEvent.KhuyenMai.OnDialog,SpecialEvent.KhuyenMai};
--{"<color=yellow>Event Trung Thu {New}",SpecialEvent.NPCEventTrungThu.OnDialog, SpecialEvent.NPCEventTrungThu},
--{"<bclr=0,0,200><color=white>Nhận thời gian online<color>", SpecialEvent.NapThoiGian.OnDialog,SpecialEvent.NapThoiGian};
--{"<bclr=0,0,200><color=white>Event Vân Thiên Lệnh<color>", SpecialEvent.VanThienLenh.OnDialog,SpecialEvent.VanThienLenh};
--{"<color=green>Kích hoạt GiftCode Tân Thủ<color>",SpecialEvent.Code_Thang7.OnDialog,SpecialEvent.Code_Thang7};
--{"<color=pink>Kích hoạt GiftCode Ngày<color>",SpecialEvent.CodeEvent_Ngay.OnDialog,SpecialEvent.CodeEvent_Ngay};
--{"<color=cyan>Kích hoạt Code Lễ 02/09<color>",SpecialEvent.Code_Le0209.OnDialog,SpecialEvent.Code_Le0209};
--{"<color=orange>Cường Hóa +16",self.nCuongHoa,self};
--{"<color=red>nhận Full xu<color>", self.fullxu, self},
--{"<color=red>Max MT<color>", self.maxMT, self},
--{"<bclr=0,0,200><color=white>Nhận Gói Hỗ Trợ: Hành tẩu Giang Hồ 1<color>", SpecialEvent.MuaGoiHoTro.OnDialog,SpecialEvent.MuaGoiHoTro};

{"Kết Thúc Đối Thoại"}
}
if (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then
table.insert(tbOpt,1,{"<color=yellow>Quyền Admin<color>",self.QuanLySv, self});
end

Dialog:Say(szMsg,tbOpt)
end
function tbGift:QuanLySv()
me.AddItem(18,1,750,1);
end
function tbGift:DatVaoVPTieuHuy()
Dialog:OpenGift("Hãy đặt vào vật phẩm cần tiêu hủy. \nVật phẩm sau khi tiêu hủy sẽ mất vĩnh viễn.", nil ,{self.OnOpenGiftOkTieuHuyItem, self});
end
function tbGift:OnOpenGiftOkTieuHuyItem(tbItemObj)
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
	end
end
function tbGift:DatVaoVPTieuHuy()
Dialog:OpenGift("<color=green>Đặt vật phẩm muốn Tiêu huỷ vào đây!<color>", nil ,{self.OnOpenGiftOkTieuHuyItem, self});
end 
function tbGift:OnOpenGiftOkTieuHuyItem(tbNewGift2Obj)
for _, pItem in pairs(tbNewGift2Obj) do
if me.DelItem(pItem[1]) ~= 1 then
return 0;
end
end
--me.KickOut()
end
function tbGift:fullxu()
me.AddStackItem(18,9,999,1,{bForceBind=1,},100000);
end
function tbGift:nCuongHoa()
	local szMsg = "Đặt vào Item Cần Cường Hóa";
	Dialog:OpenGift(szMsg, nil, {self.CuongHoa, self, 1});
end
function tbGift:CuongHoa(nValue, tbItemObj)
	local tbItemInfo = {bForceBind=1,};
	local tbItemList	= {};
	for _, pItem in pairs(tbItemObj) do
		me.AddItem(pItem[1].nGenre, pItem[1].nDetail, pItem[1].nParticular, pItem[1].nLevel,nil,16);
	end
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
	end
end
function tbGift:maxMT()
	me.AddFightSkill(1200,10);
    me.AddFightSkill(1201,10);
    me.AddFightSkill(1202,10);
	me.AddFightSkill(1203,10);
    me.AddFightSkill(1204,10);
	me.AddFightSkill(1205,10);
    me.AddFightSkill(1206,10);
	me.AddFightSkill(1219,10);
    me.AddFightSkill(1220,10);
	me.AddFightSkill(1207,10);
    me.AddFightSkill(1208,10);
	me.AddFightSkill(1209,10);
    me.AddFightSkill(1210,10);
	me.AddFightSkill(1221,10);
    me.AddFightSkill(1222,10);
	me.AddFightSkill(1211,10);
	me.AddFightSkill(1212,10);
    me.AddFightSkill(1213,10);
	me.AddFightSkill(1214,10);
	me.AddFightSkill(1215,10);
	me.AddFightSkill(1216,10);
	me.AddFightSkill(1217,10);
	me.AddFightSkill(1218,10);
	me.AddFightSkill(1241,10);
    me.AddFightSkill(1242,10);
    me.AddFightSkill(1243,10);
    me.AddFightSkill(1244,10);
	me.AddFightSkill(1245,10);
    me.AddFightSkill(1246,10);
	me.AddFightSkill(1247,10);
    me.AddFightSkill(1248,10);
	me.AddFightSkill(1261,10);
    me.AddFightSkill(1262,10);
	me.AddFightSkill(1249,10);
    me.AddFightSkill(1250,10);
	me.AddFightSkill(1251,10);
    me.AddFightSkill(1252,10);
	me.AddFightSkill(1263,10);
    me.AddFightSkill(1264,10);
	me.AddFightSkill(1253,10);
	me.AddFightSkill(1254,10);
    me.AddFightSkill(1255,10);
	me.AddFightSkill(1256,10);
	me.AddFightSkill(1257,10);
	me.AddFightSkill(1258,10);
	me.AddFightSkill(1259,10);
	me.AddFightSkill(1260,10);

end
