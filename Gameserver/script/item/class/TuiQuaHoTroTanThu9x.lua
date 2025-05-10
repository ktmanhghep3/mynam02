
local tbHoTro90 = Item:GetClass("tuiquahotrotanthu9x")
function tbHoTro90:OnUse()
	local szMsg = "Mở ra bạn sẽ nhận được <color=yellow>Set đồ bạch ngân +16<color> kèm <color=yellow>vũ khí theo hệ phái +16<color>";
	local tbOpt = {
		{"<color=orange>Nhận<color>",self.NhanHoTro9x, self},
			};

	Dialog:Say(szMsg, tbOpt);
end

function tbHoTro90:NhanHoTro9x()
if me.CountFreeBagCell() < 10 then
		Dialog:Say("Phải Có 10 Ô Trống Trong Túi Hành Trang!");
		return 0;
	end
local tbItemId2 = {18,1,25502,1,0,0} -- Mảnh Ghép Huyền Vũ Ấn
if me.nFaction == 0 then
Dialog:Say("<color=yellow>Chưa gia nhập môn phái không thể mở<color>")
return 
end
if me.nRouteId == 0 then
Dialog:Say("Chưa chọn hệ phái")
return
end
	local tbInfo	= GetPlayerInfoForLadderGC(me.szName);
	if tbInfo.nSex == 0 and (me.nFaction == 2) and (me.nRouteId == 1) then -- Thiên Vương Thương Nam
		local item1 = me.AddItem(4,9,477,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,153,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,651,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,703,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,503,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,341,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,256,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,711,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,252,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1215,10,1,16);
		item10.Bind(1);
			end
	if tbInfo.nSex == 1 and (me.nFaction == 2) and (me.nRouteId == 1) then -- Thiên Vương Thương Nữ
		local item11 = me.AddItem(4,9,478,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,143,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,656,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,704,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,504,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,341,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,256,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,712,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,252,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1215,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 2) and (me.nRouteId == 2) then -- Thiên Vương Chùy Nam
		local item1 = me.AddItem(4,9,477,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,153,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,651,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,703,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,503,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,341,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,256,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,711,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,252,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1216,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 2) and (me.nRouteId == 2) then -- Thiên Vương Chùy Nữ
		local item11 = me.AddItem(4,9,478,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,143,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,656,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,704,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,504,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,341,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,256,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,712,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,252,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1216,10,1,16);
		item20.Bind(1);
		end
		-------------
			if tbInfo.nSex == 0 and (me.nFaction == 1) and (me.nRouteId == 1) then -- Thiếu Lâm Nam Đao
		local item1 = me.AddItem(4,9,477,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,153,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,651,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,703,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,503,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,341,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,256,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,711,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,252,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1219,10,1,16);
		item10.Bind(1);
		end
		    if tbInfo.nSex == 1 and (me.nFaction == 1) and (me.nRouteId == 1) then -- Thiếu Lâm Nữ Đao
		local item11 = me.AddItem(4,9,478,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,143,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,656,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,704,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,504,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,341,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,256,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,712,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,252,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1219,10,1,16);
		item10.Bind(1);
		end
		    if tbInfo.nSex == 0 and (me.nFaction == 1) and (me.nRouteId == 2) then -- Thiếu Lâm Nam Bổng
		local item1 = me.AddItem(4,9,477,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,153,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,651,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,703,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,503,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,341,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,256,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,711,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,252,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1218,10,1,16);
		item10.Bind(1);
		end
		    if tbInfo.nSex == 1 and (me.nFaction == 1) and (me.nRouteId == 2) then -- Thiếu Lâm Nữ Bổng
		local item11 = me.AddItem(4,9,478,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,143,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,656,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,704,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,504,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,341,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,256,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,712,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,252,10,1,16);
		item19.Bind(1);
		local item10 = me.AddItem(2,1,1218,10,1,16);
		item20.Bind(1);
		end
		---------------
			if tbInfo.nSex == 0 and (me.nFaction == 3) and (me.nRouteId == 2) then -- ĐMTT Nam
		local item1 = me.AddItem(4,9,479,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,154,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,652,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,705,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,505,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,342,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,257,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,713,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,253,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,2,131,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 3) and (me.nRouteId == 2)then -- ĐMTT Nữ
		local item11 = me.AddItem(4,9,480,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,144,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,657,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,706,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,506,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,342,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,257,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,714,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,253,10,1,16);
		item19.Bind(1);
		local item20 =  me.AddItem(2,2,131,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 3) and (me.nRouteId == 1) then -- ĐMHT Nam
		local item1 = me.AddItem(4,9,479,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,154,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,652,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,705,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,505,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,342,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,257,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,713,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,253,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,2,126,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 3) and (me.nRouteId == 1) then -- ĐMHT Nữ
		local item11 = me.AddItem(4,9,480,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,144,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,657,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,706,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,506,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,342,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,257,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,714,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,253,10,1,16);
		item19.Bind(1);
		local item20 =  me.AddItem(2,2,126,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 4) and (me.nRouteId == 1) then -- 5 Độc Đao Nam
		local item1 = me.AddItem(4,9,479,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,154,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,652,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,705,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,505,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,342,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,257,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,713,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,253,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1229,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1  and (me.nFaction == 4) and (me.nRouteId == 1) then -- 5 Độc Đao Nữ
		local item11 = me.AddItem(4,9,480,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,144,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,657,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,706,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,506,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,342,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,257,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,714,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,253,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1229,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 4) and (me.nRouteId == 2) then -- 5 Độc Chưởng Nam
		local item1 = me.AddItem(4,9,479,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,154,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,652,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,705,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,505,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,342,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,257,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,713,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,253,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1227,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 4) and (me.nRouteId == 2) then -- 5 Độc Chưởng Nữ
		local item11 = me.AddItem(4,9,480,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,144,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,657,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,706,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,506,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,342,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,257,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,714,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,253,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1227,10,1,16);
		item20.Bind(1);
        end
			if tbInfo.nSex == 0 and (me.nFaction == 11) and (me.nRouteId == 2) then -- MGK Nam
		local item1 = me.AddItem(4,9,479,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,154,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,652,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,705,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,505,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,342,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,257,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,713,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,253,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1233,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 11) and (me.nRouteId == 2) then -- MGK Nữ
		local item11 = me.AddItem(4,9,480,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,144,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,657,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,706,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,506,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,342,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,257,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,714,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,253,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1233,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 11) and (me.nRouteId == 1) then -- Minh Giáo Chùy Nam
		local item1 = me.AddItem(4,9,479,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,154,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,652,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,705,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,505,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,342,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,257,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,713,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,253,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1226,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 11) and (me.nRouteId == 1) then -- MGC Nữ
		local item11 = me.AddItem(4,9,480,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,144,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,657,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,706,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,506,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,342,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,257,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,714,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,253,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1226,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 12) and (me.nRouteId == 2) then -- ĐTK Nam
		local item1 = me.AddItem(4,9,481,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,155,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,653,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,707,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,507,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,343,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,258,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,715,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,254,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1243,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 12) and (me.nRouteId == 2) then -- ĐTK nữ
		local item11 = me.AddItem(4,9,482,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,145,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,658,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,708,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,508,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,343,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,258,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,716,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,254,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1243,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 12) and (me.nRouteId == 1) then -- ĐTC Nam
		local item1 = me.AddItem(4,9,481,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,155,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,653,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,707,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,507,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,343,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,258,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,715,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,254,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1237,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 12) and (me.nRouteId == 1) then -- ĐTC Nữ
		local item11 = me.AddItem(4,9,482,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,145,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,658,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,708,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,508,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,343,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,258,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,716,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,254,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1237,10,1,16);
		item20.Bind(1);
		end
		if tbInfo.nSex == 0 and (me.nFaction == 5) and (me.nRouteId == 1) then -- Nam Nga Mi Chưởng
		local item1 = me.AddItem(4,9,481,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,155,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,653,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,707,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,507,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,343,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,258,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,715,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,254,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1237,10,1,16);
		item10.Bind(1);
		end
		if tbInfo.nSex == 1 and (me.nFaction == 5) and (me.nRouteId == 1) then -- Nữ Nga Mi Chưởng
		local item11 = me.AddItem(4,9,482,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,145,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,658,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,708,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,508,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,343,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,258,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,716,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,254,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1237,10,1,16);
		item20.Bind(1);
		end
		if tbInfo.nSex == 0 and (me.nFaction == 5) and (me.nRouteId == 2) then -- Nam Nga Mi Kiếm
		local item1 = me.AddItem(4,9,481,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,155,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,653,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,707,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,507,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,343,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,258,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,715,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,254,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1243,10,1,16);
		item10.Bind(1);
		end
		if tbInfo.nSex == 1 and (me.nFaction == 5) and (me.nRouteId == 2) then -- Nữ Nga Mi Kiếm
		local item11 = me.AddItem(4,9,482,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,145,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,658,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,708,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,508,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,343,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,258,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,716,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,254,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1243,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 6) and (me.nRouteId == 2) then -- TYD Nam
		local item1 = me.AddItem(4,9,481,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,155,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,653,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,707,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,507,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,343,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,258,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,715,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,254,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1239,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 6) and (me.nRouteId == 2) then -- TYD Nữ
		local item11 = me.AddItem(4,9,482,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,145,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,658,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,708,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,508,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,343,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,258,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,716,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,254,10,1,16);
		item19.Bind(1);
		local item20 =  me.AddItem(2,1,1239,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 6) and (me.nRouteId == 1) then --TYK Nam
		local item1 = me.AddItem(4,9,481,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,155,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,653,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,707,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,507,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,343,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,258,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,715,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,254,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1243,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 6) and (me.nRouteId == 1) then --TYK Nữ
		local item11 = me.AddItem(4,9,482,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,145,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,658,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,708,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,508,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,343,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,258,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,716,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,254,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1243,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 7) and (me.nRouteId == 1) then -- Cái Bang Rồng Nam
		local item1 = me.AddItem(4,9,483,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,156,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,654,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,709,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,509,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,344,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,259,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,717,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,255,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1254,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 7) and (me.nRouteId == 1) then -- Cái Bang Rồng Nữ
		local item11 = me.AddItem(4,9,484,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,146,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,659,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,710,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,510,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,344,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,259,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,718,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,255,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1254,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 7) and (me.nRouteId == 2) then -- Cái Bang Bổng Nam
		local item1 = me.AddItem(4,9,483,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,156,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,654,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,709,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,509,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,344,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,259,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,717,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,255,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1248,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 7) and (me.nRouteId == 2) then -- Cái Bang Bổng Nữ
		local item11 = me.AddItem(4,9,484,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,146,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,659,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,710,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,510,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,344,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,259,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,718,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,255,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1248,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and  (me.nFaction == 8) and (me.nRouteId == 2) then -- Ma Nhẫn Nam
		local item1 = me.AddItem(4,9,483,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,156,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,654,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,709,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,509,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,344,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,259,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,717,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,255,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1252,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 8) and (me.nRouteId == 2) then -- Ma Nhẫn Nữ
		local item11 = me.AddItem(4,9,484,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,146,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,659,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,710,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,510,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,344,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,259,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,718,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,255,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1252,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 8) and (me.nRouteId == 1) then -- Thiên Nhẫn Thương Nam
		local item1 = me.AddItem(4,9,483,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,156,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,654,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,709,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,509,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,344,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,259,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,717,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,255,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1251,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 8) and (me.nRouteId == 1) then -- THiên Nhẫn Kích Nữ
		local item11 = me.AddItem(4,9,484,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,146,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,659,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,710,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,510,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,344,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,259,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,718,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,255,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1251,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 9) and (me.nRouteId == 1) then -- Võ Đang Khí Nam
		local item1 = me.AddItem(4,9,485,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,157,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,655,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,711,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,511,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,345,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,260,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,719,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,256,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1263,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 9) and (me.nRouteId == 1) then -- Võ Đang Khí Nữ
		local item11 = me.AddItem(4,9,486,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,147,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,660,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,712,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,512,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,345,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,260,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,720,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,256,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1263,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0  and  (me.nFaction == 9) and (me.nRouteId == 2) then -- Võ đang kiếm nam
		local item1 = me.AddItem(4,9,485,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,157,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,655,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,711,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,511,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,345,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,260,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,719,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,256,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1260,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 9) and (me.nRouteId == 2) then  -- Võ đang kiếm nữ
		local item11 = me.AddItem(4,9,486,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,147,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,660,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,712,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,512,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,345,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,260,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,720,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,256,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1260,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 10) and (me.nRouteId == 2) then -- CLK Nam
		local item1 = me.AddItem(4,9,485,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,157,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,655,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,711,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,511,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,345,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,260,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,719,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,256,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1263,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 10) and (me.nRouteId == 2) then -- CLK Nũ
		local item11 = me.AddItem(4,9,486,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,147,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,660,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,712,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,512,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,345,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,260,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,720,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,256,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1263,10,1,16);
		item20.Bind(1);
		end
			if tbInfo.nSex == 0 and (me.nFaction == 10) and (me.nRouteId == 1) then -- CLĐ Nam
		local item1 = me.AddItem(4,9,485,10,1,16);
		item1.Bind(1);
		local item2 = me.AddItem(4,3,157,10,1,16);
		item2.Bind(1);
		local item3 = me.AddItem(2,8,655,10,1,16);
		item3.Bind(1);
		local item4 = me.AddItem(2,10,711,10,1,16);
		item4.Bind(1);
		local item5 = me.AddItem(2,7,511,10,1,16);
		item5.Bind(1);
		local item6 = me.AddItem(2,5,345,10,1,16);
		item6.Bind(1);
		local item7 = me.AddItem(2,4,260,10,1,16);
		item7.Bind(1);
		local item8 = me.AddItem(2,11,719,10,1,16);
		item8.Bind(1);
		local item9 = me.AddItem(2,6,256,10,1,16);
		item9.Bind(1);
		local item10 = me.AddItem(2,1,1259,10,1,16);
		item10.Bind(1);
		end
			if tbInfo.nSex == 1 and (me.nFaction == 10) and (me.nRouteId == 1) then -- CLĐ Nữ
		local item11 = me.AddItem(4,9,486,10,1,16);
		item11.Bind(1);
		local item12 = me.AddItem(4,3,147,10,1,16);
		item12.Bind(1);
		local item13 = me.AddItem(2,8,660,10,1,16);
		item13.Bind(1);
		local item16 = me.AddItem(2,10,712,10,1,16);
		item16.Bind(1);
		local item15 = me.AddItem(2,7,512,10,1,16);
		item15.Bind(1);
		local item16 = me.AddItem(2,5,345,10,1,16);
		item16.Bind(1);
		local item17 = me.AddItem(2,4,260,10,1,16);
		item17.Bind(1);
		local item18 = me.AddItem(2,11,720,10,1,16);
		item18.Bind(1);
		local item19 = me.AddItem(2,6,256,10,1,16);
		item19.Bind(1);
		local item20 = me.AddItem(2,1,1259,10,1,16);
		item20.Bind(1);
		end
Task:DelItem(me, tbItemId2, 1); -- Xóa Túi Hỗ Trợ Tân Thủ	
 end
