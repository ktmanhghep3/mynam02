local tbNpc = Npc:GetClass("Add_Tuong");


function tbNpc:OnDialog()
local Time	= os.date("%d/%m/%Y - %Hh:%M", GetTime());
local szMsg = 
"<color=green>Hiện tại: <color=cyan>"..Time.."<color>\n"..
"<color=yellow>Tượng vinh danh Anh Hùng Mạn Đà Trang\n"

local tbOpt = 
{
{"<color=green>Tượng Vinh Danh của: <color=yellow>"..him.szName.."<color><color>", self.stop_end, self};


--{"Kết Thúc Đối Thoại"}
}
Dialog:Say(szMsg,tbOpt)
end
