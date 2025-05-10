local tbSkillEffectViewer ={};
SpecialEvent.TestCode = tbSkillEffectViewer;



function tbSkillEffectViewer:OnDialog()
DoScript("\\script\\Update2025\\GM_Code\\TestCode.lua");

local szMsg = "<color=cyan>Chọn phần thưởng nhận không giới hạn<color>";
local tbOpt = 
{
{"<color=yellow>Test Hiệu ứng", self.TestHieuUng, self};



}
Dialog:Say(szMsg,tbOpt)
end

