local tbBossDuLong = Npc:GetClass("BossDuLong_030");-- class cua boss

function tbBossDuLong:OnDeath(pNpcKiller)


--Phần thưởng--
--Item rơi ra ngoài đất--
local nNpcMapId, nNpcPosX, nNpcPosY = him.GetWorldPos(); 
--KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3004,2); --Ngôi Sao May Mắn

--Item vào Túi--
    --Ngẫu nhiên từ 0 đến 30
    local nRandomItems = MathRandom(0, 30) -- Sinh số lượng ngẫu nhiên từ 0 đến 30

    if nRandomItems > 0 then
        local lastItemName = "" -- Khởi tạo biến lưu tên item cuối cùng
        for i = 1, nRandomItems do
            local pItem = me.AddItem(18,1,4038,1) -- Thêm Du Long Giác
            if pItem then
                lastItemName = pItem.szName -- Cập nhật tên item cuối cùng
            end
        end
        -- Hiển thị thông báo số lượng item và tên của item cuối cùng
        me.Msg(string.format("<color=yellow>Bạn đã may mắn nhận được: <color=cyan>%d<color> - <color=red>%s<color> !!!", nRandomItems, lastItemName))
    else
        -- Nếu không có item nào được thêm
        me.Msg("Không có gì cả!!!")
    end


--Thông Báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>★ Anh Hùng: [ <color=red>"..me.szName.."<color> ] Chiến thắng Boss Du Long <color=cyan>"..him.szName.."<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId).."<color>\n<color=violet>❉ Nhận được Phần thưởng Bất ngờ!<color><color>");
	KDialog.MsgToGlobal("<color=yellow>★ Anh Hùng: [ <color=red>"..me.szName.."<color> ] Chiến thắng Boss Du Long <color=cyan>"..him.szName.."<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId).."<color>\n<color=violet>❉ Nhận được Phần thưởng Bất ngờ!<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
end

