local tbLinhLungKyLan = Npc:GetClass("TestBoss24");-- class cua boss

function tbLinhLungKyLan:OnDeath(pNpcKiller)
	local Time	= os.date("%d/%m/%Y - %Hh:%M", GetTime());
	local nKinId, nMemberId = me.GetKinMember();	
	local cKin = KKin.GetKin(nKinId);
	local KinName = "Không Gia Tộc";
	if cKin then
		KinName = cKin.GetName()
	end	

	local pTong = KTong.GetTong(me.dwTongId);
	local szTongName = "Không Bang Hội";	
	if pTong then
		szTongName = pTong.GetName();
	end	


--Phần thưởng--
--Item rơi ra ngoài đất--
local nNpcMapId, nNpcPosX, nNpcPosY = him.GetWorldPos(); 
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3042,1); --Thạch Ấn Hoàng Kim
--Item vào Túi--
me.AddStackItem(18,1,3044,1,nil,1);







	local nStockBaseCount = 10000;
	Tong:AddStockBaseCount_GS1(me.nId, nStockBaseCount, 0.1, 0.5, 0.1, 0.1, 0.3);	
	











--thông báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>\n["..Time.."] - Chiến báo Linh Lung Kỳ Lân:\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng <color=pink>"..him.szName.."<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 1 Rương Linh Lung Huyền Hoàng<color>\n❂ Các phần thưởng Giá trị bất ngờ khác...<color>");
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."] - Chiến báo Linh Lung Kỳ Lân:\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng <color=pink>"..him.szName.."<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 1 Rương Linh Lung Huyền Hoàng<color>\n❂ Các phần thưởng Giá trị bất ngờ khác...<color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
end
