local tbNhanThuongSK_MocAn = {};
SpecialEvent.NhanThuong_MocAn = tbNhanThuongSK_MocAn;

tbNhanThuongSK_MocAn.TaskGroup_GioiHanNhan = 4114;	--Task Giới hạn nhận 1 lần

tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_1 = 1;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_2 = 2;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_3 = 3;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_4 = 4;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_5 = 5;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_6 = 6;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_7 = 7;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan_8 = 8;

tbNhanThuongSK_MocAn.TaskGroup_ThachAnHK = 4112;	--Task Điếm số lần mở Thạch Ấn Hoàng Kim
tbNhanThuongSK_MocAn.TaskID_ThachAnHK = 1;
tbNhanThuongSK_MocAn.TaskID_GioiHanNhan250 = 4;		--Giới hạn nhận mốc 250/1 lần

tbNhanThuongSK_MocAn.TaskGourp_TieuPhi = 4111; 			--Task Hái Lộc hàng ngày (1: Trong ngày (Reset) - 2: Cả Sự kiện)
tbNhanThuongSK_MocAn.TaskId_TieuPhi_Ngay = 1;  			--Task Trong ngày (Reset)
tbNhanThuongSK_MocAn.TaskId_TieuPhi_CaSK_Lan2 = 20;  		--Task Cả Sự kiện lần 2

tbNhanThuongSK_MocAn.MocAn_100 = 100;
tbNhanThuongSK_MocAn.MocAn_150 = 150;
tbNhanThuongSK_MocAn.MocAn_200 = 200;
tbNhanThuongSK_MocAn.MocAn_250 = 250;
tbNhanThuongSK_MocAn.MocAn_350 = 350;
tbNhanThuongSK_MocAn.MocAn_450 = 450;
tbNhanThuongSK_MocAn.MocAn_500 = 500;
tbNhanThuongSK_MocAn.MocAn_550 = 550;

tbNhanThuongSK_MocAn.nSkill_1 = 1441;				--Skill Thiên Gia Kiếm
tbNhanThuongSK_MocAn.nSkill_2 = 1442;				--Skill Thiên Gia Thương
tbNhanThuongSK_MocAn.nSkill_3 = 1443;				--Skill Thiên Gia Chùy
tbNhanThuongSK_MocAn.nSkill_4 = 1444;				--Skill Thiên Gia Đao
tbNhanThuongSK_MocAn.nSkill_5 = 1445;				--Skill Thiên Gia Bổng
tbNhanThuongSK_MocAn.nSkill_6 = 1446;				--Skill Thiên Gia Tiễn

tbNhanThuongSK_MocAn.NhanCap = 10;				--Cấp Skill nhận được 1

function tbNhanThuongSK_MocAn:OnDialog()
local szIp	= me.GetPlayerIpAddress();
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());

local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);--Điếm số lần mở Thạch Ấn Hoàng Kim
local SoLan_ThachAnHK = me.GetTask(self.TaskGroup_ThachAnHK,self.TaskID_ThachAnHK);

local szMsg = 
"<color=pink>Thông tin Event:<color>\n"..
"<color=green>- Điểm Hái Lộc Tiêu Phí lần 2: <color=cyan>["..nTieuPhi_CaSK_Lan2.."]<color><color>\n"..
"<color=green>- Thạch Ấn Hoàng Kim đã mở: <color=cyan>["..SoLan_ThachAnHK.."]<color><color>\n"..

"<color=blue>Mốc Ấn: 100 - Bí kiếp Môn Phái Lv16\n<color>"..
"<color=blue>Mốc Ấn: 150 - Bí kiếp Môn Phái Lv17\n<color>"..
"<color=blue>Mốc Ấn: 200 - Bí kiếp Môn Phái Lv18\n<color>"..
"<color=yellow>Mốc Ấn: 250 - Ngoại Trang:\n<color>"..
"<color=violet>[Ngoại Trang VIP] Thúy Lan Vân Văn\n<color>"..
"<color=violet>[Ngoại Trang VIP] Liên Y Tạp Oa\n<color>"..
"<color=violet>[Ngoại Trang VIP] Cẩm Hoa Thúc Phát\n<color>"..
"<color=violet>[Ngoại Trang VIP] Mê Mộng Phát Kết\n<color>"..
"<color=yellow>Mốc Ấn: 350 - Bí kiếp Môn Phái Lv19\n<color>"..
"<color=yellow>Mốc Ấn: 450 - Tùy Chọn 1 món Thiên Gia Max lv10\n<color>"..
"<color=yellow>Mốc Ấn: 500 - Tùy Chọn 1 món Thiên Gia Max lv10\n<color>"..
"<color=yellow>Mốc Ấn: 550 - Bí kiếp Môn Phái Lv20\n<color>"

	local tbOpt = 
	{
		{"Kết thúc đối thoại"},
	}
	if SoLan_ThachAnHK >= self.MocAn_100 then
		table.insert(tbOpt, 1, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_100.."<color>", self.SK_MocAn_100, self});
	else
		table.insert(tbOpt, 1, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_100.."<color>"});
	end

	if SoLan_ThachAnHK >= self.MocAn_150 then
		table.insert(tbOpt, 2, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_150.."<color>", self.SK_MocAn_150, self});
	else
		table.insert(tbOpt, 2, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_150.."<color>"});
	end

	if SoLan_ThachAnHK >= self.MocAn_200 then
		table.insert(tbOpt, 3, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_200.."<color>", self.SK_MocAn_200, self});
	else
		table.insert(tbOpt, 3, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_200.."<color>"});
	end

	if SoLan_ThachAnHK >= self.MocAn_250 then
		table.insert(tbOpt, 4, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_250.."<color>", self.SK_MocAn_250, self});
	else
		table.insert(tbOpt, 4, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_250.."<color>"});
	end

	if SoLan_ThachAnHK >= self.MocAn_350 then
		table.insert(tbOpt, 5, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_350.."<color>", self.SK_MocAn_350, self});
	else
		table.insert(tbOpt, 5, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_350.."<color>"});
	end

	if SoLan_ThachAnHK >= self.MocAn_450 then
		table.insert(tbOpt, 6, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."<color>", self.SK_MocAn_450, self});
	else
		table.insert(tbOpt, 6, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."<color>"});
	end

	if SoLan_ThachAnHK >= self.MocAn_500 then
		table.insert(tbOpt, 7, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."<color>", self.SK_MocAn_500, self});
	else
		table.insert(tbOpt, 7, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."<color>"});
	end

	if SoLan_ThachAnHK >= self.MocAn_550 then
		table.insert(tbOpt, 8, {"<color=yellow>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_550.."<color>", self.SK_MocAn_550, self});
	else
		table.insert(tbOpt, 8, {"<color=gray>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_550.."<color>"});
	end


	Dialog:Say(szMsg, tbOpt);
end

--add Thưởng--
function tbNhanThuongSK_MocAn:SK_MocAn_100()
local GioiHanNhan = self.TaskID_GioiHanNhan_1;

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3038,16,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv16

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_100.."<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongSK_MocAn:SK_MocAn_150()
local GioiHanNhan = self.TaskID_GioiHanNhan_2;

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3038,17,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv17

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_150.."<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongSK_MocAn:SK_MocAn_200()
local GioiHanNhan = self.TaskID_GioiHanNhan_3;

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3038,18,{bForceBind=1,},1);--Bí Kiếp Môn Phái Ngẫu Nhiên Lv18

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_200.."<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongSK_MocAn:SK_MocAn_250()
local CheckNhan = me.GetTask(self.TaskGroup_ThachAnHK,self.TaskID_GioiHanNhan250);
local SoDiem_MoAn_YC = 250;
local SoLan_ThachAnHK = me.GetTask(self.TaskGroup_ThachAnHK,self.TaskID_ThachAnHK);

if SoLan_ThachAnHK < SoDiem_MoAn_YC then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Mở Thạch Ấn Hoàng Kim không đủ: "..SoDiem_MoAn_YC.." Không thể nhận quà!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Mở Thạch Ấn Hoàng Kim không đủ: "..SoDiem_MoAn_YC.." Không thể nhận quà!<color>"));
return
end

if CheckNhan ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end

--Phần Thưởng--
if (me.nSex == 0) then --Nam
	me.AddItem(1,25,174,2);
	me.AddItem(1,26,174,2);	
end 

if (me.nSex == 1) then --Nữ 
	me.AddItem(1,25,175,2);
	me.AddItem(1,26,175,2);	
end 
	
me.SetTask(self.TaskGroup_ThachAnHK,self.TaskID_GioiHanNhan250,1);--Task Tính lần đã nhận
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> nhận thưởng thành công quà Mốc sử dụng 250 Thạch Ấn Hoàng Kim, phần thưởng:\n- [Ngoại Trang VIP] Cẩm Hoa Thúc Phát\n- [Ngoại Trang VIP] Mê Mộng Phát Kết\n- [Ngoại Trang VIP] Thúy Lan Vân Văn\n- [Ngoại Trang VIP] Liên Y Tạp Oa<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

function tbNhanThuongSK_MocAn:SK_MocAn_350()
local GioiHanNhan = self.TaskID_GioiHanNhan_5;

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

--Phần thưởng--
Item:GetClass("TuyChon_BiKiepMonPhai_Lv19"):OnUse();


--me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);
--local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_350.."<color>";
--KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
--KDialog.MsgToGlobal(szMsg);
return 0;
end


function tbNhanThuongSK_MocAn:SK_MocAn_550()
local GioiHanNhan = self.TaskID_GioiHanNhan_8;

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

--Phần thưởng--
Item:GetClass("TuyChon_BiKiepMonPhai_Lv20"):OnUse();


--me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);
--local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_350.."<color>";
--KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
--KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongSK_MocAn:SK_MocAn_450()

local szMsg = 
"<color=cyan>Chọn 1 loại Thiên Gia Thần khí để nhận Full lv10 1 lần!<color>\n"

local tbOpt = 
{

	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Kiếm", self.ThienGia_Turn1_Kiem, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Thương", self.ThienGia_Turn1_Thuong, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Chùy", self.ThienGia_Turn1_Chuy, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Đao", self.ThienGia_Turn1_Dao, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Bổng", self.ThienGia_Turn1_Bong, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Tiễn", self.ThienGia_Turn1_Tien, self,};
	

	{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

--Thiên Gia Kiếm--
function tbNhanThuongSK_MocAn:ThienGia_Turn1_Kiem()
local GioiHanNhan = self.TaskID_GioiHanNhan_6;
local nLevel = me.GetSkillLevel(self.nSkill_1);	--Thiên Gia Kiếm
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Kiếm đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_1,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."\nPhần thưởng: <color=green>Thiên Gia Kiếm Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end


--Thiên Gia Thương--
function tbNhanThuongSK_MocAn:ThienGia_Turn1_Thuong()
local GioiHanNhan = self.TaskID_GioiHanNhan_6;
local nLevel = me.GetSkillLevel(self.nSkill_2);	--Thiên Gia Thương
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_2,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."\nPhần thưởng: <color=green>Thiên Gia Thương Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Chùy--
function tbNhanThuongSK_MocAn:ThienGia_Turn1_Chuy()
local GioiHanNhan = self.TaskID_GioiHanNhan_6;
local nLevel = me.GetSkillLevel(self.nSkill_3);	--Thiên Gia Chùy
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Chùy đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_3,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."\nPhần thưởng: <color=green>Thiên Gia Chùy Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Đao--
function tbNhanThuongSK_MocAn:ThienGia_Turn1_Dao()
local GioiHanNhan = self.TaskID_GioiHanNhan_6;
local nLevel = me.GetSkillLevel(self.nSkill_4);	--Thiên Gia Đao
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Đao đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_4,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."\nPhần thưởng: <color=green>Thiên Gia Đao Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Bổng--
function tbNhanThuongSK_MocAn:ThienGia_Turn1_Bong()
local GioiHanNhan = self.TaskID_GioiHanNhan_6;
local nLevel = me.GetSkillLevel(self.nSkill_5);	--Thiên Gia Bổng
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Bổng đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_5,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."\nPhần thưởng: <color=green>Thiên Gia Bổng Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Tiễn--
function tbNhanThuongSK_MocAn:ThienGia_Turn1_Tien()
local GioiHanNhan = self.TaskID_GioiHanNhan_6;
local nLevel = me.GetSkillLevel(self.nSkill_6);	--Thiên Gia Tiễn
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Tiễn đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_6,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_450.."\nPhần thưởng: <color=green>Thiên Gia Tiễn Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end

function tbNhanThuongSK_MocAn:SK_MocAn_500()

local szMsg = 
"<color=cyan>Chọn 1 loại Thiên Gia Thần khí để nhận Full lv10 1 lần!<color>\n"

local tbOpt = 
{

	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Kiếm", self.ThienGia_Turn2_Kiem, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Thương", self.ThienGia_Turn2_Thuong, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Chùy", self.ThienGia_Turn2_Chuy, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Đao", self.ThienGia_Turn2_Dao, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Bổng", self.ThienGia_Turn2_Bong, self,};
	{"<bclr=0,0,200><color=white>Nhận Lv10 - Thiên Gia Tiễn", self.ThienGia_Turn2_Tien, self,};
	

	{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

--Thiên Gia Kiếm--
function tbNhanThuongSK_MocAn:ThienGia_Turn2_Kiem()
local GioiHanNhan = self.TaskID_GioiHanNhan_7;
local nLevel = me.GetSkillLevel(self.nSkill_1);	--Thiên Gia Kiếm
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Kiếm đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_1,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."\nPhần thưởng: <color=green>Thiên Gia Kiếm Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Thương--
function tbNhanThuongSK_MocAn:ThienGia_Turn2_Thuong()
local GioiHanNhan = self.TaskID_GioiHanNhan_7;
local nLevel = me.GetSkillLevel(self.nSkill_2);	--Thiên Gia Thương
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Thương đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_2,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."\nPhần thưởng: <color=green>Thiên Gia Thương Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Chùy--
function tbNhanThuongSK_MocAn:ThienGia_Turn2_Chuy()
local GioiHanNhan = self.TaskID_GioiHanNhan_7;
local nLevel = me.GetSkillLevel(self.nSkill_3);	--Thiên Gia Chùy
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Chùy đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_3,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."\nPhần thưởng: <color=green>Thiên Gia Chùy Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Đao--
function tbNhanThuongSK_MocAn:ThienGia_Turn2_Dao()
local GioiHanNhan = self.TaskID_GioiHanNhan_7;
local nLevel = me.GetSkillLevel(self.nSkill_4);	--Thiên Gia Đao
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Đao đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_4,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."\nPhần thưởng: <color=green>Thiên Gia Đao Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Bổng--
function tbNhanThuongSK_MocAn:ThienGia_Turn2_Bong()
local GioiHanNhan = self.TaskID_GioiHanNhan_7;
local nLevel = me.GetSkillLevel(self.nSkill_5);	--Thiên Gia Bổng
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Bổng đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_5,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."\nPhần thưởng: <color=green>Thiên Gia Bổng Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
--Thiên Gia Tiễn--
function tbNhanThuongSK_MocAn:ThienGia_Turn2_Tien()
local GioiHanNhan = self.TaskID_GioiHanNhan_7;
local nLevel = me.GetSkillLevel(self.nSkill_6);	--Thiên Gia Tiễn
	if nLevel >= self.NhanCap then
	Dialog:SendBlackBoardMsg(me, string.format("<color=yellow>Thiên Gia Tiễn đã đủ cấp, không cần nhận thêm!<color>"));
	return 0;
	end

if me.GetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
return 0;		
end
if me.CountFreeBagCell() < 5 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=cyan>Cần ít nhất [5] ô trống Hành trang!<color>"});
return 0;
end

me.AddFightSkill(self.nSkill_6,self.NhanCap);

me.SetTask(self.TaskGroup_GioiHanNhan,GioiHanNhan,1);

local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: "..self.MocAn_500.."\nPhần thưởng: <color=green>Thiên Gia Tiễn Lv10<color><color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end
