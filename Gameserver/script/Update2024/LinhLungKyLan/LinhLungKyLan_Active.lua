if not MODULE_GAMESERVER then
    return;
end

--Add Boss--
function LinhLungKyLan:Call_LinhLungKyLan()
   -- local nMapIndex = SubWorldID2Idx(133);	-- check ID map
    --if nMapIndex < 0 then
       -- return;
   -- end
	
	local nCurTime = GetTime();
	local nWeek	= tonumber(os.date("%w", nCurTime));
		
	if nWeek == 6 then
		local pNpc1	= KNpc.Add2(9000, 150, -1,133,1715,3474);--Linh Lung Kỳ Lân (Thứ 7)

		local pNpc1	= KNpc.Add2(9001, 150, -1,133,1731,3462);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Thứ 7)
		local pNpc1	= KNpc.Add2(9002, 150, -1,133,1699,3486);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Thứ 7)
		local pNpc1	= KNpc.Add2(9003, 150, -1,133,1705,3450);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Thứ 7)
		local pNpc1	= KNpc.Add2(9004, 150, -1,133,1725,3496);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Thứ 7)

		local szMsg = "<color=yellow>《Chiến báo Linh Lung Kỳ Lân 》\n★ Trung tâm Lương Sơn Bạc xuất hiện dị tượng:\n❂ Tứ Đại Hung Thú\n❂ Linh Lung Kỳ Lân\nĐã dần dần xuất hiện\nCác nhân sĩ khẩn trương cơ hội lên đường 1 tuần chỉ xuất hiện 2 lần!<color>";
		GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
		
	elseif nWeek == 0 then
		local pNpc1	= KNpc.Add2(9000, 150, -1,133,1715,3474);--Linh Lung Kỳ Lân (Chủ Nhật)

		local pNpc1	= KNpc.Add2(9001, 150, -1,133,1731,3462);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Chủ Nhật)
		local pNpc1	= KNpc.Add2(9002, 150, -1,133,1699,3486);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Chủ Nhật)
		local pNpc1	= KNpc.Add2(9003, 150, -1,133,1705,3450);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Chủ Nhật)
		local pNpc1	= KNpc.Add2(9004, 150, -1,133,1725,3496);--Linh Lung Kỳ Lân-Tứ Đại Hung Thú (Chủ Nhật)

		local szMsg = "<color=yellow>《Chiến báo Linh Lung Kỳ Lân 》\n★ Trung tâm Lương Sơn Bạc xuất hiện dị tượng:\n❂ Tứ Đại Hung Thú\n❂ Linh Lung Kỳ Lân\nĐã dần dần xuất hiện\nCác nhân sĩ khẩn trương cơ hội lên đường 1 tuần chỉ xuất hiện 2 lần!<color>";
		GlobalExcute({"Dialog:GlobalNewsMsg_GS", szMsg});
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	end

end


--Xóa Boss--
function LinhLungKyLan:Del_LinhLungKyLan()
    local nMapIndex = SubWorldID2Idx(133);	-- check ID map
    if nMapIndex < 0 then
        return;
    end
	


ClearMapNpcWithName(133, "Linh Lung Kỳ Lân");
end
