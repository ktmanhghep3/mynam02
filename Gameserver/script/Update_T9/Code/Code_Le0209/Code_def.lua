local tbLe0209 = {};
SpecialEvent.Code_Le0209 = tbLe0209;

tbLe0209.TaskGroup = 4007; --TaskGroup Code, TaskID: 1-Code T7, 2-Code Lễ 2-9
tbLe0209.TaskID = 2;

function tbLe0209:OnDialog()	
	local tbOpt = 
	{
		{"<color=cyan>Nhập mã Code", self.GiftCode, self},
   		{"Kết thúc đối thoại"}
	}
	Dialog:Say("<color=green>Mã Kích hoạt chỉ sử dụng 1 mã/1 accout/1 lần duy nhất, hãy chú ý!<color>",tbOpt);
end


function tbLe0209:GiftCode()
	if me.CountFreeBagCell() < 10 then
		Dialog:Say("Cần 10 Ô hành trang, hãy sắp xếp!");
		return 0;
	end
	Dialog:AskString("<color=cyan>Nhập mã Code", 12, self.GiftCode_1, self);
end

function tbLe0209:GiftCode_1(szCode)
	local INPUT_FILE_PATH = "\\script\\Update_T9\\Code\\Code_Le0209\\LoadMaCode.txt";		
	local OUPUT_FILE_PATH = "\\script\\Update_T9\\Code\\Code_Le0209\\File_Log.txt";
	
	local KTra 	= 0;
	if me.GetTask(self.TaskGroup, self.TaskID) > 0 then
		Dialog:Say("<color=yellow>Ngươi đã kích hoạt rồi!<color>");
		return;
	end
	
	if szCode == "" then
		me.Msg("Nhập mã kích hoạt!");
		return;
	end

	local tbFile = Lib:LoadTabFile(INPUT_FILE_PATH);
	if not tbFile then
		Dialog:Say("Hiện tại không phát mã kích hoạt!");
		return;
	end
		for _, tbRow in pairs(tbFile) do
			local szMaCode 	 	 = tbRow["MaCoDe"] or "";
			if szMaCode == szCode then
				self:KTraPhatCode(szCode);
				KTra = 1;	--CO TIM THAY MA CODE
				return;
			end
		end
	if KTra == 0 then
		Dialog:Say("<color=yellow>Mã Kích hoạt không đúng hoặc không tồn tại!<color>");
	end
end 

function tbLe0209:KTraPhatCode(szCode)
	local OUPUT_FILE_PATH = "\\script\\Update_T9\\Code\\Code_Le0209\\File_Log.txt";
	local tbFile2 = Lib:LoadTabFile(OUPUT_FILE_PATH);
	local STT = 1;
	if not tbFile2 then
		me.Msg("Kiểm tra mã Kích hoạt thất bại, vui lòng liên hệ GM!");
		return;
	end
	if szCode == "" then
		me.Msg("Nhập mã kích hoạt!");
		return;
	end
		for _, tbRow in pairs(tbFile2) do
			local szMaCode 	 	 = tbRow["MaCoDe"] or "";
			if szMaCode == szCode then
				Dialog:Say("<color=red>Mã kích hoạt này đã được sử dụng!<color>");
				return;
			end
			STT = STT + 1;
		end
	local szTime	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
	local szIp	= me.GetPlayerIpAddress();
	local nHardWareId = me.dwHardWareId;
	local szOut = STT.."\t" .. szCode .. "\t" .. me.szName .. "\t" .. me.szAccount .. "\t" .. szTime .. "\t" .. szIp .. "\t" .. nHardWareId .. "\n";
	KFile.AppendFile(OUPUT_FILE_PATH, szOut);
	me.SetTask(self.TaskGroup, self.TaskID, 1);
	local tbItemInfo = {bForceBind = 1};
	
		--PHAN THUONG
		
		
	local i = 0;
	local nAdd = 0;
	local nRand = 0;
	local nIndex = 0;
	nRand = MathRandom(1, 1000);
	local tbRate = {60, 60, 60, 60, 60, 60, 14, 14, 14, 14, 14, 14, 14, 14, 14, 14, 15, 15, 15, 10, 10, 15, 10, 10, 10, 10, 10, 10, 18, 18, 18, 18, 17, 17, 17, 17, 28, 28, 28, 28, 28, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5};
	for i = 1, 57 do -- so luong phan thuong hien ben tren la 4
		nAdd = nAdd + tbRate[i];
		if nAdd >= nRand then
			nIndex = i;
			break;
		end
	end
	
	if nIndex == 1 then
		me.AddStackItem(18,1,3004,2,{bForceBind=1,},50);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 50- Ngôi Sao May Mắn\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>50- Ngôi Sao May Mắn<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);

	end 
	
	if nIndex == 2 then
		me.AddStackItem(18,1,3004,2,{bForceBind=1,},100);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\ t100- Ngôi Sao May Mắn\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>100- Ngôi Sao May Mắn<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);

	end 
	
	if nIndex == 3 then
		me.AddStackItem(18,1,3004,2,{bForceBind=1,},200);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 200- Ngôi Sao May Mắn\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>200- Ngôi Sao May Mắn<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);

	end 
	
	if nIndex == 4 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},50);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 50- Lệnh Bài Sát Thần PK\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>50- Lệnh Bài Sát Thần PK<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 5 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},100);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 100- Lệnh Bài Sát Thần PK\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>100- Lệnh Bài Sát Thần PK<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 6 then
		me.AddStackItem(18,1,3001,1,{bForceBind=1,},200);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 200- Lệnh Bài Sát Thần PK\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>200- Lệnh Bài Sát Thần PK<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
	
	if nIndex == 7 then
		me.AddStackItem(1,17,2060,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nhật\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nhật<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 8 then
		me.AddStackItem(1,17,2061,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nguyệt\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nguyệt<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 9 then
		me.AddStackItem(1,17,2062,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nhật\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nhật<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 10 then
		me.AddStackItem(1,17,2063,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nguyệt\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nguyệt<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 11 then
		me.AddStackItem(1,17,2064,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nhật\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nhật<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 12 then
		me.AddStackItem(1,17,2065,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nguyệt\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nguyệt<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 13 then
		me.AddStackItem(1,17,2066,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nhật\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nhật<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 14 then
		me.AddStackItem(1,17,2067,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nguyệt\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nguyệt<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 15 then
		me.AddStackItem(1,17,2068,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nhật\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nhật<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 16 then
		me.AddStackItem(1,17,2069,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Hỏa Diệm Thiên Vương - Nguyệt\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Hỏa Diệm Thiên Vương - Nguyệt<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 17 then
		me.AddStackItem(1,15,117,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Thiếu Lâm + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Thiếu Lâm + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 18 then
		me.AddStackItem(1,15,157,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Thiên Vương + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Thiên Vương + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 19 then
		me.AddStackItem(1,15,197,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Đường Môn + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Đường Môn + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 20 then
		me.AddStackItem(1,15,237,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Ngũ Độc + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Ngũ Độc + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 21 then
		me.AddStackItem(1,15,277,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Minh Giáo + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Minh Giáo + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 22 then
		me.AddStackItem(1,15,317,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Nga My + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Nga My + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 23 then
		me.AddStackItem(1,15,357,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Thúy Yên + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Thúy Yên + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 24 then
		me.AddStackItem(1,15,397,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Đoàn Thị + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Đoàn Thị + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 25 then
		me.AddStackItem(1,15,437,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Cái Bang + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Cái Bang + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	

	if nIndex == 26 then
		me.AddStackItem(1,15,477,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Thiên Nhẫn + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Thiên Nhẫn + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 27 then
		me.AddStackItem(1,15,517,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Võ Đang + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Võ Đang + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 28 then
		me.AddStackItem(1,15,557,7,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- [Pháp Bảo Trấn Phái] Côn Lôn + 17\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- [Pháp Bảo Trấn Phái] Côn Lôn + 17<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 29 then
		me.AddStackItem(1,12,1041,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Nguyệt Ngân Thần Quỳ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Nguyệt Ngân Thần Quỳ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 30 then
		me.AddStackItem(1,12,1042,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Tuyết Hồng Quỳ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Tuyết Hồng Quỳ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 31 then
		me.AddStackItem(1,12,1043,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Tuyết Mực Quỳ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Tuyết Mực Quỳ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 32 then
		me.AddStackItem(1,12,1044,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Thích Vân Đích Lô\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Thích Vân Đích Lô<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 33 then
		me.AddStackItem(1,12,1045,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Tước Linh Đạp Tuyết\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Tước Linh Đạp Tuyết<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 34 then
		me.AddStackItem(1,12,1046,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Tuyết Sí Liên Vũ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Tuyết Sí Liên Vũ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 35 then
		me.AddStackItem(1,12,1047,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Dực Tiến\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Dực Tiến<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 36 then
		me.AddStackItem(1,12,1048,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Bôn Ngự Phong\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Bôn Ngự Phong<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 37 then
		me.AddStackItem(5,23,5,5,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Bích Ngọc Phù\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Bích Ngọc Phù<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 38 then
		me.AddStackItem(5,20,5,5,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Huyết Diễm Y\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Huyết Diễm Y<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 39 then
		me.AddStackItem(5,22,5,5,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Huyền Thoại Uyển\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Huyền Thoại Uyển<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 40 then
		me.AddStackItem(5,21,5,5,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Bích Kim Giới\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Bích Kim Giới<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 41 then
		me.AddStackItem(5,19,5,5,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Âm Dương Kiếm\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Âm Dương Kiếm<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----

	if nIndex == 42 then
		me.AddStackItem(2,1,2109,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Thiên Ngự Diệu Dương Đại Đao\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Thiên Ngự Diệu Dương Đại Đao<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 43 then
		me.AddStackItem(2,1,2113,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Bổng\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Bổng<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 44 then
		me.AddStackItem(2,1,2114,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Thương\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Thương<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 45 then
		me.AddStackItem(2,1,2115,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Chùy\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Chùy<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 46 then
		me.AddStackItem(2,1,2118,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Thanh Long Nguyệt Tiếu Đại Đao\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Thanh Long Nguyệt Tiếu Đại Đao<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 47 then
		me.AddStackItem(2,1,2121,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Thủ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Thủ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 48 then
		me.AddStackItem(2,1,2125,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Thất Sát Đại Đao\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Thất Sát Đại Đao<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 49 then
		me.AddStackItem(2,1,2127,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Thủ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Thủ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 50 then
		me.AddStackItem(2,1,2128,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Thủ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Thủ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 51 then
		me.AddStackItem(2,1,2129,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Kiếm\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Kiếm<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 52 then
		me.AddStackItem(2,1,2130,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Bổng\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Bổng<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 53 then
		me.AddStackItem(2,1,2131,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Thương\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Thương<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 54 then
		me.AddStackItem(2,1,2132,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Thủ\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Thủ<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 55 then
		me.AddStackItem(2,1,2136,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Đan Phượng Đại Đao\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Đan Phượng Đại Đao<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 56 then
		me.AddStackItem(2,1,2143,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Kiếm\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Kiếm<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
	if nIndex == 57 then
		me.AddStackItem(2,1,2144,10,{bForceBind=1,},1);
		
		local Time	= os.date("%Y-%m-%d %H:%M:%S", GetTime());
		local szIp	= me.GetPlayerIpAddress();
		local szHistory = "\\script\\Update_T9\\Code\\Code_Le0209\\LuuDanhSach.txt";
		KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t 1- Diệu Dương Tử Sương Kiếm\t"..Time.."\t"..szIp.."\n");
		local szMsg = "<color=yellow>Người chơi: <color=green>"..me.szName.."<color> Sử dụng Code Mừng Lễ 02/09 nhận ngẫu nhiên <color=cyan>1- Diệu Dương Tử Sương Kiếm<color><color>";
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
	end	
----
		


		--[[local szMsg = "<color=yellow>Chúc mừng <color=green>"..me.szName.."<color> đã nhận GiftCode Tháng 7 thành công, nhận phần thưởng:<color=red>/n- Full Danh vọng Sát Thần Cấp 3 (400 Lệnh bài = 2000 điểm Danh vọng Sát Thần PK)\n- Cộng thêm 1 Ngày Online miễn phí<color>!<color>";
		--me.Msg("<color=gold>Ngươi đã Kích hoạt thành công! Hãy chọn vào: <color=green>Bắt đầu hành trình Bôn tẩu Giang hồ<color>!<color>")
		KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
		KDialog.MsgToGlobal(szMsg);
		return 0;]]
end
