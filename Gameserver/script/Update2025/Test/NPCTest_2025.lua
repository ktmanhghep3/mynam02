local tbNpc_Test = Npc:GetClass("NPCTest_2025");


function tbNpc_Test:OnDialog()
local szMsg = "Trông ngươi rất quen.\nTa có thể hỗ trợ gì cho ngươi?";
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

table.insert(tbOpt,{"Kết thúc đối thoại!"});
Dialog:Say(szMsg, tbOpt);
end
