local tbMocEvent = Item:GetClass("EventMoc_25");

tbMocEvent.TaskGroup = 4008;
tbMocEvent.TaskID = 2;

tbMocEvent.ItemSuKien = {18,1,3003,2};
tbMocEvent.MocEvent = 10;

tbMocEvent.TSK_Max = 1;

tbMocEvent.nPhapBao = {
	{
{1,14,52,4,},--Đao TL
{1,14,52,4,},--Đao TL
	},
	{
{1,14,72,4,},--Thương TV
{1,14,72,4,},--Chùy TV
	},
	{
{1,14,92,4,},--Phi Đao ĐM
{1,14,92,4,},--Tụ tiễn ĐM
	},
	{
{1,14,112,4,},--Đao 5 Độc
{1,14,112,4,},--Chưởng 5 Độc
	},
	{
{1,14,152,4,},--Thủ NM
{1,14,152,4,},--Kiếm NM-
	},
	{
{1,14,172,4,},--Kiếm TY-
{1,14,172,4,},--Đao TY
	},
	{
{1,14,212,4,},--Thủ CB
{1,14,212,4,},--Côn CB
	},
	{
{1,14,232,4,},--Thương Nhẫn
{1,14,232,4,},--Đao Nhẫn
	},
	{
{1,14,252,4,},--Kiếm Nội VĐ-
{1,14,252,4,},--Kiếm Ngoại VĐ-
	},
	{
{1,14,272,4,},--Đao CL
{1,14,272,4,},--Kiếm CL-
	},
	{
{1,14,132,4,},--Chùy MG
{1,14,132,4,},--Kiếm MG-
	},
	{
{1,14,192,4,},--Thủ ĐT
{1,14,192,4,},--Kiếm ĐT-
	},
}			





function tbMocEvent:OnUse()
	local nSex = me.nSex;
	local tbOpt		= {};
	
	local CheckNhan = me.GetTask(self.TaskGroup,self.TaskID);
	
	--[[if CheckNhan >= self.TSK_Max then
		me.CallClientScript({"UiManager:OpenWindow","UI_INFOBOARD","<color=red>Phần thưởng này chỉ nhận 1 lần!<color>"});
		return 0;
	end]]

	for i = 1, Player.FACTION_NUM do
		tbOpt[#tbOpt+1]	= {Player:GetFactionRouteName(i), self.GetEquipRoute, self,nSex, i};
	end;
	tbOpt[#tbOpt+1]	= {"Kết thúc đối thoại"};
	Dialog:Say("<color=yellow>Mời lựa chọn phần thưởng theo hệ phái:<color>", tbOpt);
end

function tbMocEvent:GetEquipRoute(nSex,nFactionId)
	local tbOpt		= {};
	for i = 1, #Player.tbFactions[nFactionId].tbRoutes do
		tbOpt[#tbOpt+1]	= {Player:GetFactionRouteName(nFactionId, i), self.AddItem, self, nSex, nFactionId, i};
	end;
	tbOpt[#tbOpt+1]	= {"Kết thúc đối thoại"};
	Dialog:Say("Mời lựa chọn Trang bị theo hệ phái của bạn.", tbOpt);
end

--add--
function tbMocEvent:AddItem(nSex,nFactionId,Routes)
	if me.CountFreeBagCell() < 5 then
		Dialog:Say("Hãy xắp túi đủ 5 ô trống rồi quay lại");
		return 0;
	end
	
	
	me.AddItem(unpack(self.nPhapBao[nFactionId][Routes])).Bind(1);
	me.SetTask(self.TaskGroup,self.TaskID,self.TSK_Max + 1);
	--me.ConsumeItemInBags(1, 18,1,3003,1);--ID Túi Quà
	me.ConsumeItemInBags(1, unpack(self.ItemSuKien));
	
	local szMsg = string.format("\n<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> nhận thành công phần thưởng Event Trăng Tròn Mốc: <color=cyan>"..self.MocEvent.."<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
 end

