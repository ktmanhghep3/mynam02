local tbCsriptGoi_NPCTest ={};
SpecialEvent.ItemCsriptGoi_NPCTest = tbCsriptGoi_NPCTest;


function tbCsriptGoi_NPCTest:OnDialog()
DoScript("\\script\\Update2025\\GM_Code\\CsriptGoi_NPCTest.lua");

local szMsg = "<color=cyan>Chọn:<color>";
local tbOpt = 
{

	{"<color=yellow>Xóa Res NPC", self.Res_Xoa, self};
	{"<color=yellow>Gọi Res NPC 1", self.Res_Add1, self};
	{"<color=yellow>Gọi Res NPC 2", self.Res_Add2, self};
	{"<color=yellow>Gọi Res NPC 3", self.Res_Add3, self};
	{"<color=yellow>Gọi Res NPC 4", self.Res_Add4, self};
	{"<color=yellow>Gọi Res NPC 5", self.Res_Add5, self};
	{"<color=yellow>Gọi Res NPC 6", self.Res_Add6, self};
	{"<color=yellow>Gọi Res NPC 7", self.Res_Add7, self};
	{"<color=yellow>Gọi Res NPC 8", self.Res_Add8, self};
	{"<color=yellow>Gọi Res NPC 9", self.Res_Add9, self};
	{"<color=yellow>Gọi Res NPC 10", self.Res_Add10, self};

	--{"<color=yellow>Gọi Res NPC 11", self.Res_Add_11, self};
	--{"<color=yellow>Gọi Res NPC 12", self.Res_Add_12, self};
	--{"<color=yellow>Gọi Res NPC 13", self.Res_Add_13, self};
	--{"<color=yellow>Gọi Res NPC 14", self.Res_Add_14, self};
	--{"<color=yellow>Gọi Res NPC 15", self.Res_Add_15, self};
	--{"<color=yellow>Gọi Res NPC 16", self.Res_Add_16, self};
	--{"<color=yellow>Gọi Res NPC 17", self.Res_Add_17, self};
	--{"<color=yellow>Gọi Res NPC 18", self.Res_Add_18, self};
	--{"<color=yellow>Gọi Res NPC 19", self.Res_Add_19, self};
	--{"<color=yellow>Gọi Res NPC 20", self.Res_Add20, self};
	--{"<color=yellow>Gọi Res NPC 21", self.Res_Add21, self};
	--{"<color=yellow>Gọi Res NPC 22", self.Res_Add22, self};


	{"<color=cyan>Đến: Map Test Res NPC<color>", me.NewWorld, 1824,1611, 3171};
}
Dialog:Say(szMsg,tbOpt)
end

function tbCsriptGoi_NPCTest:Res_Xoa()
ResetMapNpc(1824);
me.NewWorld(1824,1611,3171);
end

function tbCsriptGoi_NPCTest:Res_Add1()


me.Msg(string.format("<color=yellow>Số 1"));
end

function tbCsriptGoi_NPCTest:Res_Add2()



me.Msg(string.format("<color=yellow>Số 2"));
end

function tbCsriptGoi_NPCTest:Res_Add3()


me.Msg(string.format("<color=yellow>Số 3"));
end

function tbCsriptGoi_NPCTest:Res_Add4()



me.Msg(string.format("<color=yellow>Số 4"));
end

function tbCsriptGoi_NPCTest:Res_Add5()


me.Msg(string.format("<color=yellow>Số 5"));
end

function tbCsriptGoi_NPCTest:Res_Add6()


me.Msg(string.format("<color=yellow>Số 6"));
end

function tbCsriptGoi_NPCTest:Res_Add7()


me.Msg(string.format("<color=yellow>Số 7"));
end

function tbCsriptGoi_NPCTest:Res_Add8()


me.Msg(string.format("<color=yellow>Số 8"));
end

function tbCsriptGoi_NPCTest:Res_Add9()


me.Msg(string.format("<color=yellow>Số 9"));
end

function tbCsriptGoi_NPCTest:Res_Add10()


me.Msg(string.format("<color=yellow>Số 10"));
end

