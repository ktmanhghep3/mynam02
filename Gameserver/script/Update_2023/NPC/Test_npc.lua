local tbNpc = Npc:GetClass("Test_npc");
function tbNpc:OnDialog()
DoScript("\\script\\Update_2023\\NPC\\Test_npc.lua");

local szMsg = "Ta có thể giúp gì cho ngươi ?";
local tbOpt = 
{	
	{"<bclr=0,0,200><color=white>Kích hoạt ~ Nhận GiftCode<color>", self.MeNuCode, self},
	{"Kết thúc đối thoại"},
	
}	
Dialog:Say(szMsg, tbOpt);
end
