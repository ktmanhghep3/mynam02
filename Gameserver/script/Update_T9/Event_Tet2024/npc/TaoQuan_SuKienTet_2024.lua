local tbNpc = Npc:GetClass("TaoQuan_SuKienTet_2024");

tbNpc.TaskGroup_GioiHan_Ngay = 4096;		--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbNpc.TaskID_GioiHan_Ngay = 1;				--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện

tbNpc.TaskGroup_GioiHan_CaSuKien = 4097;	--Task Sự kiện Tết 2024 Giới hạn ăn Bánh Chưng cả Sự kiện
tbNpc.TaskID_GioiHan_CaSuKien = 1;

tbNpc.TaskGroup_MocNopChu = 4099;			--Task Mốc Nộp Chữ Năm Mới Giáp Thìn 2024
tbNpc.TaskID_MocNopChu = 1;

tbNpc.TimeOn_NhanThuongChung = 1900;	--Thời gian mở SK Nhận thưởng chung
tbNpc.TimeOff_NhanThuongChung = 1930;	--Thời gian đóng SK Nhận thưởng chung

tbNpc.TimeOn_NhanThuongTriAn = 2000;	--Thời gian mở SK Tri Ân
tbNpc.TimeOff_NhanThuongTriAn = 2100;	--Thời gian đóng SK Tri Ân

tbNpc.TaskGroup_Time = 4000;			--Task Thời Gian Online
tbNpc.TaskID_Time = 1;					--Task Thời Gian Online
tbNpc.ThoiGianThuong = 8;				--Thưởng thêm ngày Online

tbNpc.TaskGroup_Add = 4105;				--Task Nhận Quà Ông Táo
tbNpc.TaskID_NhanQuaChung = 1;			--Nhận Quà Chung
tbNpc.TaskID_NhanQuaTriAn = 2;			--Nhận Quà Tri Ân AE Gắn Bó Đồng hành năm 2023
tbNpc.TaskID_TriAnCuoiNam = 10;			--Tri Ân AE Đóng Góp Cuối Năm

tbNpc.TaskID_MocBanhChung_500 = 4;		--Nhận Quà Mốc Bánh Chưng 500
tbNpc.TaskID_Qua_MocNopChu_50 = 5;		--Nhận Quà Mốc Nộp Chữ 50
tbNpc.TaskID_Qua_MocNopChu_100 = 6;		--Nhận Quà Mốc Nộp Chữ 100
tbNpc.TaskID_Qua_MocNopChu_150 = 7;		--Nhận Quà Mốc Nộp Chữ 150
tbNpc.TaskID_Qua_MocNopChu_200 = 8;		--Nhận Quà Mốc Nộp Chữ 200
tbNpc.MocBanhChung = 500;
tbNpc.MocChu_50 = 50;
tbNpc.MocChu_100 = 100;
tbNpc.MocChu_150 = 150;
tbNpc.MocChu_200 = 200;


function tbNpc:OnDialog()
DoScript("\\script\\Update_T9\\Event_Tet2024\\npc\\TaoQuan_SuKienTet_2024.lua");
local SoLanNgay= me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TaskID_GioiHan_Ngay);
local SoLanSuKien= me.GetTask(self.TaskGroup_GioiHan_CaSuKien,self.TaskID_GioiHan_CaSuKien);
local SoLanNopChu= me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu);
local szMsg = 
"<color=pink>Thông tin Sự Kiện Táo Quân 2024:<color>\n"..
"<color=yellow>- Bánh chưng đã dùng trong ngày: <color=cyan>["..SoLanNgay.."]<color>/25\n<color>"..
"<color=yellow>- Bánh chưng Cả Sự kiện: <color=cyan>["..SoLanSuKien.."]<color>/500\n<color>"..
"<color=yellow>- Phong chữ đã Nộp: <color=cyan>["..SoLanNopChu.."]\n<color><color>"..
"- <color=red>Tri Ân AE Gắn Bó 2023:<color> \n<color=cyan>20h00-21h00 - (01/03/2024-15/03/2024)<color>\n"..
"- <color=red>Phát Quà Sự Kiện Tết 2024:<color> \n<color=cyan>Từ 02/02/2024 đến 30/03/2024<color>"

local tbOpt = 
{

	--{"<color=gold>Phát Quà 23 Tết Ông Táo", self.PhatQua_23Tet, self,};
	--{"<color=yellow>Tri Ân AE Đóng Góp Cuối Năm", self.TriAnDongGop, self,};

	{"<color=gold>Tri Ân AE Gắn Bó Đồng hành năm 2023", self.PhatQua_TriAn2023, self,};
	{"<color=gold>Phát Quà Sự Kiện Tết 2024", self.PhatQua_SuKienTet, self,};	
	
	{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbNpc:PhatQua_SuKienTet()
local SoLanNgay= me.GetTask(self.TaskGroup_GioiHan_Ngay,self.TaskID_GioiHan_Ngay);
local SoLanSuKien= me.GetTask(self.TaskGroup_GioiHan_CaSuKien,self.TaskID_GioiHan_CaSuKien);
local SoLanNopChu= me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu);
local szMsg = 
"<color=pink>Thông tin Sự Kiện Táo Quân 2024:<color>\n"..
"<color=yellow>- Bánh chưng đã dùng trong ngày: <color=cyan>["..SoLanNgay.."]<color>/25\n<color>"..
"<color=yellow>- Bánh chưng Cả Sự kiện: <color=cyan>["..SoLanSuKien.."]<color>/500\n<color>"..
"<color=yellow>- Phong chữ đã Nộp: <color=cyan>["..SoLanNopChu.."]\n<color><color>"..
"- <color=red>Tri Ân AE Gắn Bó 2023:<color> \n<color=cyan>20h00-21h00 - (01/03/2024-15/03/2024)<color>\n"..
"- <color=red>Phát Quà Sự Kiện Tết 2024:<color> \n<color=cyan>Từ 02/02/2024 đến 30/03/2024<color>"

local tbOpt = 
{

{"<color=gold>Quà Mốc Bánh Chưng 500", self.Qua_MocBanhChung_500, self,};
{"<color=gold>Quà Mốc Nộp Chữ: 50", self.Qua_MocNopChu_50, self,};
{"<color=gold>Quà Mốc Nộp Chữ: 100", self.Qua_MocNopChu_100, self,};
{"<color=gold>Quà Mốc Nộp Chữ: 150", self.Qua_MocNopChu_150, self,};
{"<color=gold>Quà Mốc Nộp Chữ: 200", self.Qua_MocNopChu_200, self,};

{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end




--ADD TÀI KHOẢN -- Tri Ân AE Gắn Bó trong 2023--
function tbNpc:PhatQua_TriAn2023()
if (me.szAccount == "kiemthest2") or (me.szAccount == "buithohk") or (me.szAccount == "satthan1") or (me.szAccount == "sakernd") or (me.szAccount == "doantuan") or (me.szAccount == "bodauto") or (me.szAccount == "longtkhuc") or (me.szAccount == "haikutedn2212") or (me.szAccount == "thj3nth4n") or (me.szAccount == "lingnga") or (me.szAccount == "vuhasoo") or (me.szAccount == "hoanghainn") or (me.szAccount == "minhtungkg") or (me.szAccount == "hoangan2310") or (me.szAccount == "ngochieuby") or (me.szAccount == "vanqui95") or (me.szAccount == "vudoan177") or (me.szAccount == "zxczxc25") or (me.szAccount == "giakiem") or (me.szAccount == "tranbaoanh92") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") or (me.szAccount == "") then

local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTriAn);
local nCurTime = tonumber(GetLocalDate("%H%M"));
	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end
	if nCurTime < self.TimeOn_NhanThuongTriAn or nCurTime >= self.TimeOff_NhanThuongTriAn then
		Dialog:Say("<color=yellow>Thời gian Nhận thưởng là <color=cyan>"..self.TimeOn_NhanThuongTriAn.." đến "..self.TimeOff_NhanThuongTriAn.."<color>");
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Thời gian Nhận thưởng là <color=cyan>"..self.TimeOn_NhanThuongTriAn.." đến "..self.TimeOff_NhanThuongTriAn.."<color>"});
		return 0;
	end
	if me.CountFreeBagCell() < 10 then
			Dialog:Say("Phải Có 10 Ô Trống Trong Túi Hành Trang");
	return 0;
	end
--Phần thưởng--
me.AddTitle(254,1,1,1);
me.SetCurTitle(254,1,1,1);
me.AddItem(18,1,3037,1);	--Quà 1.000.000 VNĐ Tùy chọn
me.SetTask(self.TaskGroup_Add,self.TaskID_NhanQuaTriAn,CheckNhan + 1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà Tri Ân AE Gắn Bó trong 2023<color>, gồm:\n- Danh hiệu kỷ niệm: Huynh Đệ Sát Thần PK\n- Phần thưởng: 1.000.000 VNĐ tùy chọn.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
	return 0;
	else	
			Dialog:SendBlackBoardMsg(me, string.format("<color=red>Ngươi không có trong danh sách nhận phần thưởng!<color>"));
	return 0;
	end
end



--QUÀ ĐÓNG GÓP CUỐI NĂM--
function tbNpc:TriAnDongGop()
if (me.szAccount == "kiemthest2") or (me.szAccount == "") then


local Tong_SoNgoiSao = 000;	--ADD SỐ PHONG CHỮ


local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_TriAnCuoiNam);
	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end
	if me.CountFreeBagCell() < 10 then
			Dialog:Say("Phải Có 10 Ô Trống Trong Túi Hành Trang");
	return 0;
	end
--Phần thưởng--
me.AddStackItem(18,1,3032,6,{bForceBind=1,},Tong_SoNgoiSao);	--Năm Mới Giáp Thìn 2024
me.SetTask(self.TaskGroup_Add,self.TaskID_TriAnCuoiNam,CheckNhan + 1);

local Time	= os.date("%H:%M:%S~%d-%m-%Y", GetTime());
local szIp	= me.GetPlayerIpAddress();
local szHistory = "\\script\\Update_T9\\Event_Tet2024\\npc\\Log_NhanTriAnDongGop2023.txt";
KFile.AppendFile(szHistory, ""..me.szAccount.."\t"..me.szName.."\t"..Tong_SoNgoiSao.."\t"..Time.."\t"..szIp.."\n");
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà Tri Ân AE Đóng Góp Cuối Năm<color>, gồm:\n- Phong chữ: Năm Mới Giáp Thìn 2024 - ["..Tong_SoNgoiSao.."] cái!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
	return 0;
	else	
			Dialog:SendBlackBoardMsg(me, string.format("<color=red>Ngươi không có trong danh sách nhận phần thưởng!<color>"));
	return 0;
	end
end









--Quà Chung 18h00-18h30--
function tbNpc:PhatQua_23Tet()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_NhanQuaChung);
local nCurTime = tonumber(GetLocalDate("%H%M"));

	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end

	if nCurTime < self.TimeOn_NhanThuongChung or nCurTime >= self.TimeOff_NhanThuongChung then
		Dialog:Say("<color=yellow>Thời gian Nhận thưởng là <color=cyan>"..self.TimeOn_NhanThuongChung.." đến "..self.TimeOff_NhanThuongChung.."<color>");
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Thời gian Nhận thưởng là <color=cyan>"..self.TimeOn_NhanThuongChung.." đến "..self.TimeOff_NhanThuongChung.."<color>"});
		return 0;
	end
	
--Phần thưởng--
me.AddStackItem(18,1,3004,2,{bForceBind=1,},100);--Ngôi Sao May Mắn
local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint + self.ThoiGianThuong);
me.AddStackItem(18,1,3001,1,{bForceBind=1,},1000);--Lệnh Bài Sát Thần PK

me.SetTask(self.TaskGroup_Add,self.TaskID_NhanQuaChung,CheckNhan + 1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà 23 Tết Ông Táo<color>, gồm:\n- 100 Ngôi Sao May Mắn\n- 10 Ngày Online\n- 1000 Lệnh Bài Sát Thần PK<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end

--Quà Mốc Bánh Chưng 500--
function tbNpc:Qua_MocBanhChung_500()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_MocBanhChung_500);
	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end

	if me.GetTask(self.TaskGroup_GioiHan_CaSuKien,self.TaskID_GioiHan_CaSuKien) < self.MocBanhChung then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Bạn chưa đạt mốc Bánh chưng 500!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn chưa đạt mốc Bánh chưng 500!<color>"));
		return 0;		
	end


	
--Phần thưởng--
me.AddStackItem(1,18,1,1,{bForceBind=1,},1);
me.AddStackItem(1,18,2,1,{bForceBind=1,},1);
me.AddStackItem(1,18,3,1,{bForceBind=1,},1);
me.AddStackItem(1,18,4,1,{bForceBind=1,},1);
me.AddStackItem(1,18,5,1,{bForceBind=1,},1);

me.SetTask(self.TaskGroup_Add,self.TaskID_MocBanhChung_500,CheckNhan + 1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà Mốc Bánh Chưng 500<color>, gồm:\n- Quan ấn Trí Sự vĩnh viễn.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end


--Quà Mốc Nộp Chữ: 50--
function tbNpc:Qua_MocNopChu_50()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_50);
	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end

	if me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu) < self.MocChu_50 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Bạn chưa đạt mốc Nộp Chữ 50!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn chưa đạt mốc Nộp Chữ 50!<color>"));
		return 0;		
	end


	
--Phần thưởng--
me.AddStackItem(18,1,3036,1,{bForceBind=1,},3); --Thanh Uyển - Đồng hành 7 Kỹ năng

me.SetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_50,CheckNhan + 1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà Mốc Nộp Chữ 50<color>, gồm:\n- 3- Thanh Uyển - Đồng hành 7 Kỹ năng.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Quà Mốc Nộp Chữ: 100--
function tbNpc:Qua_MocNopChu_100()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_100);
	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end

	if me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu) < self.MocChu_100 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Bạn chưa đạt mốc Nộp Chữ 100!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn chưa đạt mốc Nộp Chữ 100!<color>"));
		return 0;		
	end


	
--Phần thưởng--
me.AddStackItem(18,1,3036,2,{bForceBind=1,},3); --Tử Sắc Kiếm - Đồng hành 8 Kỹ năng

me.SetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_100,CheckNhan + 1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà Mốc Nộp Chữ 100<color>, gồm:\n- 3- Tử Sắc Kiếm - Đồng hành 8 Kỹ năng.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Quà Mốc Nộp Chữ: 150--
function tbNpc:Qua_MocNopChu_150()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_150);
	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end

	if me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu) < self.MocChu_150 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Bạn chưa đạt mốc Nộp Chữ 150!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn chưa đạt mốc Nộp Chữ 150!<color>"));
		return 0;		
	end


	
--Phần thưởng--
me.AddStackItem(18,1,3036,3,{bForceBind=1,},3); --Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng

me.SetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_150,CheckNhan + 1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà Mốc Nộp Chữ 150<color>, gồm:\n- 3- Thanh Sắc Kiếm - Đồng hành 9 Kỹ năng.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
--Quà Mốc Nộp Chữ: 200--
function tbNpc:Qua_MocNopChu_200()
local CheckNhan = me.GetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_200);
	if CheckNhan ~= 0 then
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!<color>"));
		return 0;		
	end

	if me.GetTask(self.TaskGroup_MocNopChu,self.TaskID_MocNopChu) < self.MocChu_200 then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Bạn chưa đạt mốc Nộp Chữ 200!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Bạn chưa đạt mốc Nộp Chữ 200!<color>"));
		return 0;		
	end


	
--Phần thưởng--
me.AddStackItem(18,1,3036,4,{bForceBind=1,},3); --Tiểu Sư Muội - Đồng hành 10 Kỹ năng

me.SetTask(self.TaskGroup_Add,self.TaskID_Qua_MocNopChu_200,CheckNhan + 1);
local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> đã nhận thưởng thành công ở Táo Quân 2024 <color=cyan>Quà Mốc Nộp Chữ 200<color>, gồm:\n- 3- Tiểu Sư Muội - Đồng hành 10 Kỹ năng.<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
