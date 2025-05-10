local tbRutCuongHoa ={};
SpecialEvent.RutCuongHoa= tbRutCuongHoa;

tbRutCuongHoa.Task_Check = 4008;
tbRutCuongHoa.TaskGroup_nap = 4004; --Task nạp thẻ
tbRutCuongHoa.TaskID_nap = 1;

function tbRutCuongHoa:OnDialog()
	if me.CountFreeBagCell() < 3 then
	Dialog:Say("Kiểm tra hành trang không đủ 3 ô trống");
	return 0;
	end
	if me.IsAccountLock() ~= 0 then
		Dialog:Say("Hãy mở khóa rương!");
        return 0;    
	end
	local nCount = me.GetTask(self.TaskGroup_nap,self.TaskID_nap)
	if nCount < 1000 then
	Dialog:Say("<color=yellow>Tính năng này chỉ dành cho người chơi đạt mốc tích lũy nạp thẻ <color=cyan>1000 Vạn Đồng<color> trở lên<color>");
	return 0;
	end
	local szMsg = "Tính năng rút cường hóa Trang bị Kiếm Thế Mảnh Ghép";
	local tbOpt = 
	{
		{"<color=yellow>Ta muốn Chuyển Cường hóa Trang bị<color>", self.OkRutCuong, self},
		{"<color=cyan>Kiểm tra lượt rút cường hóa<color>", self.CheckRutCuong, self},
   		{"Ta biết rồi!"}
	};
	
	Dialog:Say(szMsg,tbOpt)
end

function tbRutCuongHoa:OkRutCuong()
	local szMsg = "<color=yellow>Đặt vào Trang bị cần chuyển Cường hóa\n<color=cyan>* Lưu ý: Trang bị Cũ sẽ biến mất sau khi Chuyển Cường hóa!<color><color>";
	Dialog:OpenGift(szMsg, nil, {self.RutCuongNgay, self});
end

function tbRutCuongHoa:RutCuongNgay(tbItemObj)
	local nCount = 0; 
    for i = 1, #tbItemObj do 
        nCount = nCount + tbItemObj[i][1].nCount; 
    end

    if nCount ~= 1 then 
    me.Msg("<color=yellow>Mỗi lần rút chỉ dược bỏ vào 1 trang bị<color>");
    return 0; 
    end

	local nCount = me.GetTask(self.TaskGroup_nap,self.TaskID_nap)
	local nLuotRut = 0;
	if nCount >= 1000 and nCount < 2000 then
	nLuotRut = 1;
	elseif nCount >= 2000 and nCount < 3000 then
	nLuotRut = 2;
	elseif nCount >= 3000 and nCount < 5000 then
	nLuotRut = 3;
	elseif nCount >= 5000 and nCount < 10000 then
	nLuotRut = 4;
	elseif nCount >= 10000 and nCount < 15000 then
	nLuotRut = 6;
	elseif nCount >= 15000 and nCount < 20000 then
	nLuotRut = 8;
	elseif nCount >= 20000 then
	nLuotRut = 13;
	else
	nLuotRut = 0;
	end

    local nCheckThe = "1";
    local nCheck = "2";
    local nCheckk = "4";
    local nCheckLev = "12";
    for i = 1, #tbItemObj do 
    local CheckItem = tbItemObj[i][1]; 
    local szKey = string.format("%s",CheckItem.nGenre);
    local szLever = string.format("%s",CheckItem.nEnhTimes);

    if szKey ~= nCheck and szKey ~= nCheckThe and szKey ~= nCheckk then 
    Dialog:Say("Hãy đặt trang bị vào");
    return 0;
    end

    if szLever < nCheckLev then 
    Dialog:Say("Trang bị cường hóa 12 trở lên mới được rút");
    return 0;
    end

    local szLoai = string.format("%s",CheckItem.nDetail);
	if szLoai == "1" or szLoai == "2" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		local szTanLang = string.format("%s",CheckItem.nParticular);
		local szLelver = string.format("%s",CheckItem.nLevel);
		if szTanLang >= "1355" and szTanLang < "1425" and szLelver == "10" then
		me.SetTask(self.TASK_VU,1,nCVuKhi + 1)
		me.AddItem(18,1,3084,CheckItem.nEnhTimes);
		me.AddItem(18,2,385,1); --vũ khí thanh đồng luyện hóa đồ
		elseif szTanLang >= "149" and szTanLang < "161" and szLelver == "10" then
		me.SetTask(self.TASK_VU,1,nCVuKhi + 1)
		me.AddItem(18,1,3084,CheckItem.nEnhTimes);
		me.AddItem(18,2,385,1); --vũ khí thanh đồng luyện hóa đồ
		else
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3084,CheckItem.nEnhTimes);
		end
	elseif szLoai == "3" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3085,CheckItem.nEnhTimes);
	elseif szLoai == "4" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3086,CheckItem.nEnhTimes);
	elseif szLoai == "5" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3086,CheckItem.nEnhTimes);
	elseif szLoai == "6" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3086,CheckItem.nEnhTimes);
	elseif szLoai == "7" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3085,CheckItem.nEnhTimes);
	elseif szLoai == "8" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3085,CheckItem.nEnhTimes);
	elseif szLoai == "9" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3085,CheckItem.nEnhTimes);
	elseif szLoai == "10" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3085,CheckItem.nEnhTimes);
	elseif szLoai == "11" then
		--Check lượt Rút--
		local nCTrangBi = me.GetTask(self.Task_Check,1)
		if nCTrangBi >= nLuotRut then
        me.Msg("<color=yellow>Ngươi đã hết Lượt rút Cường Hóa Trang Bị, hãy kiểm tra lại!<color>");
        return 0;
		end
		----	
		me.SetTask(self.Task_Check,1,nCTrangBi + 1)
		me.AddItem(18,1,3086,CheckItem.nEnhTimes);
	else
    me.Msg("<color=yellow>Hiện tại không thể rút cường hóa trang bị này, hãy liên hệ GM<color>");
    end
	end
	for _, pItem in pairs(tbItemObj) do
		if me.DelItem(pItem[1]) ~= 1 then
			return 0;
		end
	end
end

function tbRutCuongHoa:CheckRutCuong()
	local nCount = me.GetTask(self.TaskGroup_nap,self.TaskID_nap)
	local nLuotRut = 0;
	if nCount >= 1000 and nCount < 2000 then
	nLuotRut = 1;
	elseif nCount >= 2000 and nCount < 3000 then
	nLuotRut = 2;
	elseif nCount >= 3000 and nCount < 5000 then
	nLuotRut = 3;
	elseif nCount >= 5000 and nCount < 10000 then
	nLuotRut = 4;
	elseif nCount >= 10000 and nCount < 15000 then
	nLuotRut = 6;
	elseif nCount >= 15000 and nCount < 20000 then
	nLuotRut = 8;
	elseif nCount >= 20000 then
	nLuotRut = 13;
	else
	nLuotRut = 0;
	end
------------------------------

	local nCTrangBi = nLuotRut - me.GetTask(self.Task_Check,1)
----------------------------------------------

	
	local szMsg = "<color=yellow>Chuyển Cường hóa Trang bị còn: <color=cyan>"..nCTrangBi.."<color> lần<color>";
	local tbOpt = 
	{
		{"Trở lại", self.OnDialog, self},
   		{"Kết thúc đối thoại"}
	};
	Dialog:Say(szMsg,tbOpt)
end
