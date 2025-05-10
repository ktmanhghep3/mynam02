local tbDoi_PhongLiXi_Lan2 = {};
SpecialEvent.Doi_PhongLiXi_Lan2 = tbDoi_PhongLiXi_Lan2;



tbDoi_PhongLiXi_Lan2.TaskGourp_free = 4110; 		--Task Hái Lộc hàng ngày (add; 1-ngày 2-đếm số lần 3-tính thời gian)
tbDoi_PhongLiXi_Lan2.TaskId_Day = 1; 				--Task lưu ngày
tbDoi_PhongLiXi_Lan2.TaskId_Count = 2;  			--Task lưu lần nhận

tbDoi_PhongLiXi_Lan2.TaskGourp_TieuPhi = 4111; 			--Task Hái Lộc hàng ngày (1: Trong ngày (Reset) - 2: Cả Sự kiện)
tbDoi_PhongLiXi_Lan2.TaskId_TieuPhi_Ngay = 1;  			--Task Trong ngày (Reset)
tbDoi_PhongLiXi_Lan2.TaskId_TieuPhi_CaSK_Lan2 = 20;  			--Task Cả Sự kiện lần 2
tbDoi_PhongLiXi_Lan2.TaskId_NhanPhongLiXi = 19;  		--Task Nhận Phong Lì Xì

tbDoi_PhongLiXi_Lan2.Delay_Times = 2;


function tbDoi_PhongLiXi_Lan2:OnDialog()
	local nDate = tonumber(GetLocalDate("%Y%m%d"));
	if me.GetTask(self.TaskGourp_free, self.TaskId_Day) < nDate then
		me.SetTask(self.TaskGourp_free, self.TaskId_Day, nDate);
		me.SetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay, 0);	--Cần Reset
	end 
local nTieuPhi_Ngay = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_Ngay);
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);

local szMsg = 
"<color=pink>Thông tin Event:<color>\n"..
"<color=blue>- Hái Lộc Tiêu Phí trong ngày: <color=cyan>["..nTieuPhi_Ngay.."]<color>\n<color>"..
"<color=green>- Hái Lộc Tiêu Phí Cả Sự Kiện lần 2: <color=cyan>["..nTieuPhi_CaSK_Lan2.."]<color>\n<color>"..
"<color=red>- Lưu ý: Chỉ nhận Phong Lì Xì 1 lần!\n<color>"

local tbOpt = 
{
	{"<color=gold>Ta Muốn Nhận Phong Lì Xì", self.Nhan_Enter1, self,};

	{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end

function tbDoi_PhongLiXi_Lan2:Nhan_Enter1()
local nTieuPhi_CaSK_Lan2 = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2);
local nNhanPhongLiXi = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_NhanPhongLiXi);

if nNhanPhongLiXi ~= 0 then
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Chỉ nhận Phong Lì Xì 1 lần!<color>"));
return 0;		
end

if nTieuPhi_CaSK_Lan2 < 2 then
me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Điểm Hái Lộc Tiêu Phí lần 2 dưới 2 Điểm, Không thể nhận Phong Lì Xì<color>"});
Dialog:SendBlackBoardMsg(me, string.format("<color=red>Điểm Hái Lộc Tiêu Phí lần 2 dưới 2 Điểm, Không thể nhận Phong Lì Xì<color>"));
return
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
GeneralProcess:StartProcess("<color=yellow>Đang Nhận Phong Lì Xì lần 2 ...<color>", self.Delay_Times * Env.GAME_FPS, {self.HaiLoc_Enter2, self}, nil, tbBreakEvent);
end

function tbDoi_PhongLiXi_Lan2:HaiLoc_Enter2()
local nTieuPhi_CaSK_Lan2 = (me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_TieuPhi_CaSK_Lan2))/4;
local nNhanPhongLiXi = me.GetTask(self.TaskGourp_TieuPhi, self.TaskId_NhanPhongLiXi);
	

--Phần thưởng--
me.AddStackItem(18,1,3039,2,{bForceBind=1,},nTieuPhi_CaSK_Lan2);	--Lì Xì Năm Mới 2024




me.SetTask(self.TaskGourp_TieuPhi,self.TaskId_NhanPhongLiXi,nNhanPhongLiXi + 1);


local szMsg = "<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> Nhận được <color=cyan>"..nTieuPhi_CaSK_Lan2.."<color> Phong Lì Xì từ Sự kiện: Nhận Phong Lì Xì Sau Tết lần 2, tại NPC Tài Thần Mộc Bảo!<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);
end
