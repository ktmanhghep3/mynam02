local tbMocEvent = Item:GetClass("EventMoc_35");

tbMocEvent.TaskGroup = 4008;
tbMocEvent.TaskID = 3;

tbMocEvent.ItemSuKien = {18,1,3003,3};
tbMocEvent.MocEvent = 15;

tbMocEvent.TSK_Max = 1;

tbMocEvent.nBiKiep = {
	{
{1,14,53,4,},--Đao TL
{1,14,53,4,},--Đao TL
	},
	{
{1,14,73,4,},--Thương TV
{1,14,73,4,},--Chùy TV
	},
	{
{1,14,93,4,},--Phi Đao ĐM
{1,14,93,4,},--Tụ tiễn ĐM
	},
	{
{1,14,113,4,},--Đao 5 Độc
{1,14,113,4,},--Chưởng 5 Độc
	},
	{
{1,14,153,4,},--Thủ NM
{1,14,153,4,},--Kiếm NM-
	},
	{
{1,14,173,4,},--Kiếm TY-
{1,14,173,4,},--Đao TY
	},
	{
{1,14,213,4,},--Thủ CB
{1,14,213,4,},--Côn CB
	},
	{
{1,14,233,4,},--Thương Nhẫn
{1,14,233,4,},--Đao Nhẫn
	},
	{
{1,14,253,4,},--Kiếm Nội VĐ-
{1,14,253,4,},--Kiếm Ngoại VĐ-
	},
	{
{1,14,273,4,},--Đao CL
{1,14,273,4,},--Kiếm CL-
	},
	{
{1,14,133,4,},--Chùy MG
{1,14,133,4,},--Kiếm MG-
	},
	{
{1,14,193,4,},--Thủ ĐT
{1,14,193,4,},--Kiếm ĐT-
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
	
	
	me.AddItem(unpack(self.nBiKiep[nFactionId][Routes])).Bind(1);
	me.SetTask(self.TaskGroup,self.TaskID,self.TSK_Max + 1);
	--me.ConsumeItemInBags(1, 18,1,3003,1);--ID Túi Quà
	me.ConsumeItemInBags(1, unpack(self.ItemSuKien));
	
	local szMsg = string.format("\n<color=yellow>Chúc mừng <color=red>"..me.szName.."<color> nhận thành công phần thưởng Event Trăng Tròn Mốc: <color=cyan>"..self.MocEvent.."<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	KDialog.MsgToGlobal(szMsg);
 end

