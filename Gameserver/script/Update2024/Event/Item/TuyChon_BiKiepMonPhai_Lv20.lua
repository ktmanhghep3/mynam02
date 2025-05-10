local tbBiKiep_MonPhai_Lv20 = Item:GetClass("TuyChon_BiKiepMonPhai_Lv20");

tbBiKiep_MonPhai_Lv20.TaskGroup_GioiHanNhan = 4114;	--Task Giới hạn nhận 1 lần
tbBiKiep_MonPhai_Lv20.TaskID_GioiHanNhan_8 = 8;
tbBiKiep_MonPhai_Lv20.TSK_Max = 1;

tbBiKiep_MonPhai_Lv20.BiKiep_MonPhai_Lv20 = {
	{
{1,14,69,4,},--Thiếu Lâm
{1,14,69,4,},--Thiếu Lâm
	},
	{
{1,14,89,4,},--Thiên Vương
{1,14,89,4,},--Thiên Vương
	},
	{
{1,14,109,4,},--Đường Môn
{1,14,109,4,},--Đường Môn
	},
	{
{1,14,129,4,},--Ngũ Độc
{1,14,129,4,},--Ngũ Độc
	},
	{
{1,14,169,4,},--Nga My
{1,14,169,4,},--Nga My
	},
	{
{1,14,189,4,},--Thúy Yên
{1,14,189,4,},--Thúy Yên
	},
	{
{1,14,229,4,},--Cái Bang
{1,14,229,4,},--Cái Bang
	},
	{
{1,14,249,4,},--Ma Nhẫn
{1,14,249,4,},--Ma Nhẫn
	},
	{
{1,14,269,4,},--Võ Đang
{1,14,269,4,},--Võ Đang
	},
	{
{1,14,289,4,},--Côn Lôn
{1,14,289,4,},--Côn Lôn
	},
	{
{1,14,149,4,},--Minh Giáo
{1,14,149,4,},--Minh Giáo
	},
	{
{1,14,209,4,},--Đoàn Thị
{1,14,209,4,},--Đoàn Thị
	},
}			


function tbBiKiep_MonPhai_Lv20:OnUse()
	local nSex = me.nSex;
	local tbOpt		= {};
	
	local CheckNhan = me.GetTask(self.TaskGroup_GioiHanNhan,self.TaskID_GioiHanNhan_8);
	
	if CheckNhan >= self.TSK_Max then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
		Dialog:SendBlackBoardMsg(me, string.format("<color=red>Phần thưởng này bạn đã nhận rồi!!<color>"));
		return 0;
	end

	for i = 1, Player.FACTION_NUM do
		tbOpt[#tbOpt+1]	= {Player:GetFactionRouteName(i), self.GetEquipRoute, self,nSex, i};
	end;
	tbOpt[#tbOpt+1]	= {"Kết thúc đối thoại"};
	Dialog:Say("<color=yellow>Mời lựa chọn Bí Kiếp Môn Phái lv20:<color>", tbOpt);
end

function tbBiKiep_MonPhai_Lv20:GetEquipRoute(nSex,nFactionId)
	local tbOpt		= {};
	for i = 1, #Player.tbFactions[nFactionId].tbRoutes do
		tbOpt[#tbOpt+1]	= {Player:GetFactionRouteName(nFactionId, i), self.AddItem, self, nSex, nFactionId, i};
	end;
	tbOpt[#tbOpt+1]	= {"Kết thúc đối thoại"};
	Dialog:Say("Mời lựa chọn Trang bị theo hệ phái của bạn.", tbOpt);
end

function tbBiKiep_MonPhai_Lv20:AddItem(nSex,nFactionId,Routes)
	if me.CountFreeBagCell() < 5 then
		Dialog:Say("Hãy xắp túi đủ 5 ô trống rồi quay lại");
		return 0;
	end
	
	if nSex == 0 then
		me.AddItem(unpack(self.BiKiep_MonPhai_Lv20[nFactionId][Routes])).Bind(1);
		
	elseif nSex == 1 then
		me.AddItem(unpack(self.BiKiep_MonPhai_Lv20[nFactionId][Routes])).Bind(1);
	end
	
	
	
	me.SetTask(self.TaskGroup_GioiHanNhan,self.TaskID_GioiHanNhan_8,self.TSK_Max + 1);
local szMsg = "<color=yellow>Chúc mừng <color=cyan>{"..me.szName.."}<color> đã nhận thưởng thành công <color=pink>Mốc Thạch Ấn Hoàng Kim: 550 - Bí Kiếp Môn Phái Lv20 Tự chọn<color>";
KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
KDialog.MsgToGlobal(szMsg);

 end

