local tbNpc = Npc:GetClass("Login_LongHonCoQuat");

function tbNpc:OnDialog()
local szMsg = 
"<color=cyan>Quy định Long Hồn Cổ Quật:\n<color>"..
"<color=yellow>- Mỗi nhân vật có tổng 1 giờ trong Cổ Quật mỗi ngày.\n"..
"- Bản đồ PK Tự do.\n"..
"- Nhiệm vụ: Nhanh chóng tiêu diệt Boss Thái Hư Cổ Long trong thời gian ngắn nhất.\n"..
"- Nhân Sĩ bị đánh bại trở về Khu chuẩn bị ở Đông Hạ Lan Sơn.\n<color>"

local tbOpt = 
{
{"<bclr=0,0,200><color=white>Ta muốn vào Long Hồn Cổ Quật<color>", SpecialEvent.Active_LongHonCoQuat.OnDialog,SpecialEvent.Active_LongHonCoQuat};
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
