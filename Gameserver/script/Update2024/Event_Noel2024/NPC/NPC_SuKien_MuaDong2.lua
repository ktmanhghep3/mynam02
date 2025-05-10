local tbSuKienNoel = Npc:GetClass("NPC_SuKien_MuaDong2");

tbSuKienNoel.On_1 = 0900;
tbSuKienNoel.Off_1 = 0920;
tbSuKienNoel.On_2 = 1400;
tbSuKienNoel.Off_2 = 1420;
tbSuKienNoel.On_3 = 1700;
tbSuKienNoel.Off_3 = 1720;
tbSuKienNoel.On_4 = 2000;
tbSuKienNoel.Off_4 = 2020;
tbSuKienNoel.On_5 = 2200;
tbSuKienNoel.Off_5 = 2220;
tbSuKienNoel.TimeDelay = 10;	--Delay thời gian
tbSuKienNoel.SoLuong_OHanhTrang = 15;
tbSuKienNoel.ID_ThiepTrangTri = {18,1,3961,1};	--Thiệp Trang Trí
tbSuKienNoel.SoLuong_ThiepTrangTri = 1;
tbSuKienNoel.TaskGroup_DiemTrangTri = 4511;		--Điểm Trang Trí Cây Thông Noel
tbSuKienNoel.TaskID_DiemTrangTri = 1;
tbSuKienNoel.TaskID_DiemTrangTri_2 = 2;
tbSuKienNoel.TaskID_DiemTrangTri_3 = 3;
tbSuKienNoel.Moc_TrangTriNoel = 1000;
tbSuKienNoel.Id_PhaoHoa1 = 307;
tbSuKienNoel.Id_PhaoHoa2 = 307;
tbSuKienNoel.ThoiGian_Delay = 20; 					--Giãn cách Thời gian Dùng

tbSuKienNoel.TaskGroup_DiemBachKim = 4510;
tbSuKienNoel.TaskID_DiemBachKim = 1;

function tbSuKienNoel:OnDialog()
local Time	= os.date("%d-%m-%Y %Hh:%Mp:%S", GetTime());
local DiemTrangTri = me.GetTask(self.TaskGroup_DiemTrangTri,self.TaskID_DiemTrangTri);
local Diem_BachKim = me.GetTask(self.TaskGroup_DiemBachKim,self.TaskID_DiemBachKim);

local szMsg = "<color=cyan>Thông tin Sự kiện:\n"..
"<color=yellow>★ Thời gian: <color=green>"..Time.."<color><color>\n"..
"<color=yellow>★ Tên nhân vật: <color=green>"..me.szName.."<color><color>\n"..
"<color=yellow>★ Điểm Trang Trí Cây Thông Noel: <color=cyan>"..DiemTrangTri.."<color><color>\n"..
"<color=yellow>★ Điểm Bạch Kim: <color=red>"..Diem_BachKim.."<color><color>\n"..
"<color=yellow>★ Thời gian Trang trí 20 Phút: \n<color=red>09h00-14h00-17h00-20h00-22h00<color><color>\n"
local tbOpt = {};
table.insert(tbOpt,{"<color=yellow>Trang trí: Thiệp Trang Trí", self.TrangTri, self});
table.insert(tbOpt,{"<bclr=0,0,200><color=white>Trang trí: Bạch Kim",SpecialEvent.TrangTri_BachKim.OnDialog, SpecialEvent.TrangTri_BachKim});

	if DiemTrangTri >= self.Moc_TrangTriNoel then
		table.insert(tbOpt,{"<color=green>Nhận thưởng Mốc Thiệp Trang Trí", self.NhanThuong_Moc_TrangTri, self});
	else
		table.insert(tbOpt,{"<color=gray>Nhận thưởng Mốc Thiệp Trang Trí<color>"});
	end

table.insert(tbOpt,{"[Thoát]", self.Cancel, self});
Dialog:Say(szMsg, tbOpt);
end

function tbSuKienNoel:TrangTri()
local nCurTime = tonumber(os.date("%H%M", GetTime()));
if (nCurTime >= self.On_1 and nCurTime <= self.Off_1) or (nCurTime >= self.On_2 and nCurTime <= self.Off_2) or (nCurTime >= self.On_3 and nCurTime <= self.Off_3) or (nCurTime >= self.On_4 and nCurTime <= self.Off_4) or (nCurTime >= self.On_5 and nCurTime <= self.Off_5) then

	local nCount = me.GetItemCountInBags(unpack(self.ID_ThiepTrangTri))			--Thiệp Trang Trí
	if nCount < self.SoLuong_ThiepTrangTri then
	Dialog:Say("<color=yellow>Trang trí Cây Thông Noel cần: ["..self.SoLuong_ThiepTrangTri.."] Thiệp Trang Trí<color>")
	return
	end
	
	if me.CountFreeBagCell() < self.SoLuong_OHanhTrang then
	Dialog:Say(string.format("<color=yellow>Cần: <color=cyan>%s<color> ô trống trong hành trang<color>", self.SoLuong_OHanhTrang));
	return 0;
	end

	local nCheck, nSec = self:Delay_Time_TrangTri();
	--Delay Dùng--
	if nCheck == 0 then
		local szTime = Lib:TimeFullDesc(nSec);
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Giãn cách dùng không quá "..self.ThoiGian_Delay.."s, hiện tại còn: "..szTime.."<color>"});
		return;
	end


local tbBreakEvent =
{
Player.ProcessBreakEvent.emEVENT_MOVE,
Player.ProcessBreakEvent.emEVENT_ATTACK,
Player.ProcessBreakEvent.emEVENT_SIT,
Player.ProcessBreakEvent.emEVENT_RIDE,
Player.ProcessBreakEvent.emEVENT_USEITEM,
Player.ProcessBreakEvent.emEVENT_ARRANGEITEM,
Player.ProcessBreakEvent.emEVENT_DROPITEM,
Player.ProcessBreakEvent.emEVENT_CHANGEEQUIP,
Player.ProcessBreakEvent.emEVENT_SENDMAIL,
Player.ProcessBreakEvent.emEVENT_TRADE,
Player.ProcessBreakEvent.emEVENT_CHANGEFIGHTSTATE,
Player.ProcessBreakEvent.emEVENT_ATTACKED,
Player.ProcessBreakEvent.emEVENT_DEATH,
Player.ProcessBreakEvent.emEVENT_LOGOUT,
Player.ProcessBreakEvent.emEVENT_REVIVE,
Player.ProcessBreakEvent.emEVENT_CLIENTCOMMAND,
}
GeneralProcess:StartProcess("<color=yellow>đang Trang trí ....<color>", self.TimeDelay * Env.GAME_FPS, {self.TrangTri_2, self}, nil, tbBreakEvent);
return
end
Dialog:Say("<color=yellow>Chỉ trang trí trong khoảng thời gian:<color=cyan>\n1-09h00-09h20\n2-14h00-14h20\n3-17h00-17h20\n4-20h00-20h20\n5-22h00-22h20<color><color>")
end

--Trang trí--
function tbSuKienNoel:TrangTri_2()
local nCurTime = GetTime();
	local DiemTrangTri = me.GetTask(self.TaskGroup_DiemTrangTri,self.TaskID_DiemTrangTri);	

	--Phần thưởng--
	local tbRandomItem = Item:GetClass("randomitem");
	tbRandomItem:SureOnUse(220);

	me.CastSkill(self.Id_PhaoHoa1, 1, -1, me.GetNpc().nIndex);
	me.SetTask(self.TaskGroup_DiemTrangTri, self.TaskID_DiemTrangTri, DiemTrangTri + 1);
	me.SetTask(self.TaskGroup_DiemTrangTri, self.TaskID_DiemTrangTri_3, nCurTime);
	Task:DelItem(me, self.ID_ThiepTrangTri, self.SoLuong_ThiepTrangTri);	--Thiệp Trang Trí
	local szMsg = "<color=yellow>Người chơi <color=cyan>"..me.szName.."<color> đã Trang trí thành công tại Cây Thông Noel!<color>";
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
end

function tbSuKienNoel:NhanThuong_Moc_TrangTri()
if me.GetTask(self.TaskGroup_DiemTrangTri,self.TaskID_DiemTrangTri_2) ~= 0 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
return 0;		
end

if me.CountFreeBagCell() < 10 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=yellow>Cần ít nhất [10] ô trống Hành trang!<color>"});
return 0;
end

me.AddStackItem(18,1,3001,1,{bForceBind=1,},5000);--Lệnh Bài Sát Thần PK
me.AddStackItem(18,1,3027,15,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 20-Vĩnh Viễn
me.AddStackItem(18,1,3036,4,{bForceBind=1,},3);--Tiểu Sư Muội - Đồng hành 10 Kỹ năng
me.AddStackItem(18,1,3100,1,{bForceBind=1,},100);--Rương Vô Cực-Sơ Thành
me.AddStackItem(18,1,3404,5,{bForceBind=1,},3);--Tuyệt Kỹ Trấn Phái Cấp 25
me.AddStackItem(18,1,3404,20,{bForceBind=1,},1);--Tuyệt Kỹ Trấn Phái Cấp 30
me.AddStackItem(18,1,3928,1,{bForceBind=1,},20);--Thái Cực Đồ Triệu Hồi Kỳ Lân

me.CastSkill(self.Id_PhaoHoa2, 1, -1, me.GetNpc().nIndex);

me.SetTask(self.TaskGroup_DiemTrangTri,self.TaskID_DiemTrangTri_2,1);
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=red>Mốc Trang Trí Cây Thông Noel<color>, Chúc mừng Noel An Lành!!!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
return 0;
end


function tbSuKienNoel:Delay_Time_TrangTri()
	local nEndTime = me.GetTask(self.TaskGroup_DiemTrangTri, self.TaskID_DiemTrangTri_3) + self.ThoiGian_Delay;
	local nRemainSec = nEndTime -  GetTime();	
	if nRemainSec < 0   then
	 	return 1 , 0;
	end
	return 0 , nRemainSec;			
end
