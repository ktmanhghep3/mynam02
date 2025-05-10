local tbNpc = Npc:GetClass("Login_LongHonBiBao");

function tbNpc:OnDialog()

local szMsg = 
"<color=cyan>Quy định Long Hồn Bí Bảo:\n<color>"..
"<color=yellow>- Vào mỗi ngày, ban đầu người chơi được 5 phút trong bản đồ hoạt động.\n"..
"- Tìm và Mở thành công 1 Long Hồn Bí Bảo được cộng thêm 3 phút trong hoạt động.\n"..
"- Không giới hạn số lượng mở Long Hồn Bí Bảo.\n"..
"- Bản đồ PK Tự do.\n"..
"- Nhiệm vụ: nhanh chóng thu nhập các loại bí bảo, rương quý trong thời gian ngắn nhất.\n"..
"- Nhân Sĩ bị đánh bại trở về Khu chuẩn bị ở Đông Hạ Lan Sơn.\n<color>"

local tbOpt = 
{
{"<bclr=0,0,200><color=white>Ta muốn vào Long Hồn Bí Bảo<color>", SpecialEvent.Active_LongHonBiBao.OnDialog,SpecialEvent.Active_LongHonBiBao};
{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
