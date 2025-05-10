local tbLinhLungKyLan = Npc:GetClass("TuDai_HungThu");-- class cua boss

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
--KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3004,2); --Ngôi Sao May Mắn
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)
KItem.AddItemInPos(nNpcMapId,nNpcPosX,nNpcPosY,18,1,3941,2); --Mảnh Cường Nhân (Chưa Giám Định)

--Item vào Túi--
	local nRand = MathRandom(5);
	
	if (nRand==1) then
	me.AddStackItem(18,1,3300,1,nil,1);--Túi Thạch Trung Châu
	--thông báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 1 Túi Thạch Trung Châu<color><color>");
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 1 Túi Thạch Trung Châu<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
	end
	
	if (nRand==2) then
	me.AddStackItem(18,1,3300,1,nil,2);--Túi Thạch Trung Châu
	--thông báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 2 Túi Thạch Trung Châu<color><color>");
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 2 Túi Thạch Trung Châu<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
	end

	if (nRand==3) then
	me.AddStackItem(18,1,3300,1,nil,3);--Túi Thạch Trung Châu
	--thông báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 3 Túi Thạch Trung Châu<color><color>");
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 3 Túi Thạch Trung Châu<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
	end

	if (nRand==4) then
	me.AddStackItem(18,1,3300,1,nil,4);--Túi Thạch Trung Châu
	--thông báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 4 Túi Thạch Trung Châu<color><color>");
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 4 Túi Thạch Trung Châu<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
	end

	if (nRand==5) then
	me.AddStackItem(18,1,3300,1,nil,5);--Túi Thạch Trung Châu
	
	--thông báo--
	local nMapId,nX,nY = me.GetWorldPos();
	local szMsg = string.format("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 5 Túi Thạch Trung Châu<color><color>");
	KDialog.MsgToGlobal("<color=yellow>\n["..Time.."]\n《Chiến báo Linh Lung Kỳ Lân 》\n★ Anh Hùng: [ <color=red>"..me.szName.."<color> ]\n★ Gia tộc <color=Turquoise>"..KinName.."<color>\n★ Bang hội <color=Turquoise>"..szTongName.."<color>\n✸ Chiến thắng 1 trong các <color=pink>Tứ Đại Hung Thú<color>\n✸ Tại <color=green>"..GetMapNameFormId(nMapId)..".<color>\n\n<color=violet>❉ Nhận được Phần thưởng:\n<color=cyan>❂ 5 Túi Thạch Trung Châu<color><color>");
	KDialog.NewsMsg(0, Env.NEWSMSG_COUNT, szMsg);
	self:BroadCast(szMsg);
	end

	local nStockBaseCount = 10000;
	Tong:AddStockBaseCount_GS1(me.nId, nStockBaseCount, 0.1, 0.5, 0.1, 0.1, 0.3);	
end
