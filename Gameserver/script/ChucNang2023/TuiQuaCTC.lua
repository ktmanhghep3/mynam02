local tbItem = Item:GetClass("TuiQua_CTC_1");

function tbItem:OnUse()
if me.CountFreeBagCell() < 20 then
Dialog:Say("Phải Có 20 Ô Trống Trong Túi Hành Trang");
return 0;
end

local pTong = KTong.GetTong(me.dwTongId);
local szTongName = "Không BH";	
if pTong then
szTongName = pTong.GetName();
end	
me.Earn(5000000,0); --Bạc thường

me.AddStackItem(18,1,1,10,nil,10);--Huyền Tinh hoàn mỹ (cấp 10)
me.AddStackItem(18,1,3071,1,nil,100);--Túi Mảnh Ghép
me.AddStackItem(18,1,3072,1,nil,400);--Chân Nguyên Tu Luyện Đơn
me.AddStackItem(18,1,3072,2,nil,400);--Thánh Linh Bảo Hạp Hồn
me.AddStackItem(18,1,244,2,nil,30);--Rương Hồn Thạch (1000 cái)
me.AddStackItem(18,1,325,1,nil,1000);--Vỏ sò vàng
me.AddStackItem(18,1,3073,1,nil,8);--Rương Trang Bị
me.AddStackItem(18,1,3073,2,nil,8);--Rương Trang Bị Đồng Hành
me.AddStackItem(18,1,3067,1,nil,3);--Rương Vũ Khí
me.AddStackItem(18,1,3068,1,nil,6);--Túi Trang bị Phòng Cụ
me.AddStackItem(18,1,3069,1,nil,6);--Túi Trang bị Trang Sức
local szMsg = "<color=yellow>Bang chủ: <color=green>"..me.szName.."<color> của Bang hội <color=red>"..szTongName.."<color> đã mở và nhận quà <color=cyan>Rương Công Thành Hạng 1<color> phần thưởng từ <color=pink>Công Thành Chiến<color> thành Công!<color>";
me.Msg("<color=gold>Bạn đã nhận Phần Thưởng Công Thành Chiến thành công!<color>")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 1;				
end

local tbItem = Item:GetClass("TuiQua_CTC_2");

function tbItem:OnUse()
if me.CountFreeBagCell() < 20 then
Dialog:Say("Phải Có 20 Ô Trống Trong Túi Hành Trang");
return 0;
end

local pTong = KTong.GetTong(me.dwTongId);
local szTongName = "Không BH";	
if pTong then
szTongName = pTong.GetName();
end	
me.Earn(3000000,0); --Bạc thường

me.AddStackItem(18,1,1,9,nil,10);--Huyền Tinh vô hạ (cấp 9)
me.AddStackItem(18,1,3071,1,nil,60);--Túi Mảnh Ghép
me.AddStackItem(18,1,3072,1,nil,300);--Chân Nguyên Tu Luyện Đơn
me.AddStackItem(18,1,3072,2,nil,300);--Thánh Linh Bảo Hạp Hồn
me.AddStackItem(18,1,244,2,nil,20);--Rương Hồn Thạch (1000 cái)
me.AddStackItem(18,1,325,1,nil,700);--Vỏ sò vàng
me.AddStackItem(18,1,3073,1,nil,6);--Rương Trang Bị
me.AddStackItem(18,1,3073,2,nil,6);--Rương Trang Bị Đồng Hành
me.AddStackItem(18,1,3068,1,nil,5);--Túi Trang bị Phòng Cụ
me.AddStackItem(18,1,3069,1,nil,5);--Túi Trang bị Trang Sức
local szMsg = "<color=yellow>Bang chủ: <color=green>"..me.szName.."<color> của Bang hội <color=red>"..szTongName.."<color> đã mở và nhận quà <color=cyan>Rương Công Thành Hạng 2<color> phần thưởng từ <color=pink>Công Thành Chiến<color> thành Công!<color>";
me.Msg("<color=gold>Bạn đã nhận Phần Thưởng Công Thành Chiến thành công!<color>")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 1;				
end

local tbItem = Item:GetClass("TuiQua_CTC_3");

function tbItem:OnUse()
if me.CountFreeBagCell() < 20 then
Dialog:Say("Phải Có 20 Ô Trống Trong Túi Hành Trang");
return 0;
end

local pTong = KTong.GetTong(me.dwTongId);
local szTongName = "Không BH";	
if pTong then
szTongName = pTong.GetName();
end	
me.Earn(2000000,0); --Bạc thường

me.AddStackItem(18,1,1,8,nil,10);--Huyền Tinh có tì vết (cấp 8)
me.AddStackItem(18,1,3071,1,nil,40);--Túi Mảnh Ghép
me.AddStackItem(18,1,3072,1,nil,200);--Chân Nguyên Tu Luyện Đơn
me.AddStackItem(18,1,3072,2,nil,200);--Thánh Linh Bảo Hạp Hồn
me.AddStackItem(18,1,244,2,nil,10);--Rương Hồn Thạch (1000 cái)
me.AddStackItem(18,1,325,1,nil,500);--Vỏ sò vàng
me.AddStackItem(18,1,3073,1,nil,4);--Rương Trang Bị
me.AddStackItem(18,1,3073,2,nil,4);--Rương Trang Bị Đồng Hành
me.AddStackItem(18,1,3068,1,nil,4);--Túi Trang bị Phòng Cụ
local szMsg = "<color=yellow>Bang chủ: <color=green>"..me.szName.."<color> của Bang hội <color=red>"..szTongName.."<color> đã mở và nhận quà <color=cyan>Rương Công Thành Hạng 3<color> phần thưởng từ <color=pink>Công Thành Chiến<color> thành Công!<color>";
me.Msg("<color=gold>Bạn đã nhận Phần Thưởng Công Thành Chiến thành công!<color>")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 1;				
end


local tbItem = Item:GetClass("TuiQua_CTC_4");

function tbItem:OnUse()
if me.CountFreeBagCell() < 20 then
Dialog:Say("Phải Có 20 Ô Trống Trong Túi Hành Trang");
return 0;
end

local pTong = KTong.GetTong(me.dwTongId);
local szTongName = "Không BH";	
if pTong then
szTongName = pTong.GetName();
end	
me.Earn(1000000,0); --Bạc thường

me.AddStackItem(18,1,1,7,nil,10);--Huyền Tinh thường (cấp 7)
me.AddStackItem(18,1,3071,1,nil,30);--Túi Mảnh Ghép
me.AddStackItem(18,1,3072,1,nil,100);--Chân Nguyên Tu Luyện Đơn
me.AddStackItem(18,1,3072,2,nil,100);--Thánh Linh Bảo Hạp Hồn
me.AddStackItem(18,1,244,2,nil,5);--Rương Hồn Thạch (1000 cái)
me.AddStackItem(18,1,325,1,nil,300);--Vỏ sò vàng
me.AddStackItem(18,1,3073,1,nil,3);--Rương Trang Bị
me.AddStackItem(18,1,3073,2,nil,3);--Rương Trang Bị Đồng Hành
local szMsg = "<color=yellow>Bang chủ: <color=green>"..me.szName.."<color> của Bang hội <color=red>"..szTongName.."<color> đã mở và nhận quà <color=cyan>Rương Công Thành Hạng 4<color> phần thưởng từ <color=pink>Công Thành Chiến<color> thành Công!<color>";
me.Msg("<color=gold>Bạn đã nhận Phần Thưởng Công Thành Chiến thành công!<color>")
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 1;				
end
