-------------------------------------------------------------------
--File: c2scall.lua
--Author: lbh
--Date: 2007-7-31 10:05
--Describe: 客户端调用服务端脚本接口
-------------------------------------------------------------------
if not MODULE_GAMESERVER then
	--最好不要在客户端暴露此文件
	--error("Only For Gameserver")
	return
end

--召唤令牌回调
function c2s:ZhaoHuanLingPaiCmd(nMapId, nPosX, nPosY, nMemberPlayerId, nFightState, bAccept)
	--print("ZhaoHuanLingPaiCmd", nMapId, nPosX, nPosY, nMemberPlayerId, nFightState, bAccept)	
	Item.tbZhaoHuanLingPai:PlayerAccredit(nMapId, nPosX, nPosY, nMemberPlayerId, nFightState, bAccept);
end

function c2s:HelpManCmd(szName)
	--print("HelpMan", szName, "点开次数");
end

function c2s:NewPlayerUiCmd(...)
	local fun = Log.Ui_LogSetValue
	if not fun then
		print("c2s NewPlayerUi Command Error Called: Ui_LogSetValue")
		return
	end
	fun(Log, unpack(arg))
end

function c2s:PartnerCmd(szFun, ...)
	if type(szFun) ~= "string" then
		return
	end
	local fun = Partner.c2sFun[szFun]
	if not fun then
		print("c2s Partner Command Error Called: "..szFun)
		return
	end
	fun(Partner, unpack(arg))
end

function c2s:KinCmd(szFun, ...)
	if type(szFun) ~= "string" then
		return
	end
	local fun = Kin.c2sFun[szFun]
	if not fun then
		print("c2s Kin Command Error Called: "..szFun)
		return
	end
	fun(Kin, unpack(arg))
end

function c2s:TongCmd(szFun, ...)
	if type(szFun) ~= "string" then
		return
	end
	local fun = Tong.c2sFun[szFun]
	if not fun then
		print("c2s Tong Command Error Called: "..szFun)
		return
	end
	fun(Tong, unpack(arg))
end

function c2s:DlgCmd(szFun, varValue)
	if type(szFun) ~= "string" then
		return
	end
	if (szFun == "InputNum") then
		local nNum	= tonumber(varValue);
		if not nNum then
			return
		end
		nNum	= math.floor(nNum);
		if (nNum < 0 or nNum > 20*10000*10000) then	-- 暂不允许负数和20亿以上
			ServerEvent:WriteLog(Dbg.LOG_ERROR, "DlgCmd-InputNum Error!", me.szName, me.szAccount, nNum);
			return;
		end
		Dialog:OnOk("tbNumberCallBack", nNum);
	elseif (szFun == "InputTxt") then
		Dialog:OnOk("tbStringCallBack", tostring(varValue));
	end
end

function c2s:MailCmd(szFun, ...)
	if type(szFun) ~= "string" then
		return;
	end
	local fun = Mail.tbc2sFun[szFun];	
	if not fun then
		print("c2s Mail Command Error Called: "..szFun);
		return;
	end
	fun(Mail, unpack(arg));
end

function c2s:HlpQue(nGroupId)
	if (type(nGroupId) ~= "number") then
		return;
	end
	HelpQuestion:StartGame(me, nGroupId)
end

function c2s:OfflineBuy(nType, nCount)
	if (not nType or not nCount or 0 == Lib:IsInteger(nType) or 0 == Lib:IsInteger(nCount)) then
		return;
	end
	nType	= math.floor(nType);
	nCount	= math.floor(nCount);
	-- assert(nType >= 1 and nType <= Item.IVER_nOpenBaiJuWanLevel); --改成return zounan
	if nType < 1 or nType > Item.IVER_nOpenBaiJuWanLevel then
		Player:ProcessIllegalProtocol("c2s:OfflineBuy","nType",nType);	
		return;
	end
	--assert(nCount > 0 and nCount < 10000); --改成return zounan
	if nCount <= 0 or nCount >= 10000 then
		Player:ProcessIllegalProtocol("c2s:OfflineBuy","nCount",nCount);	
		return;
	end
	Player.tbOffline:OnBuy(nType, nCount);
end

function c2s:JingHuoBuy(nType, nCount)
	--if (not nType or not nCount or 0 == Lib:IsInteger(nType) or 0 == Lib:IsInteger(nCount)) then	购买精活的数目已经限定了 故不需要nCount
	if (not nType or 0 == Lib:IsInteger(nType)) then
		return;
	end	
	nType	= math.floor(nType);
	-- nCount	= math.floor(nCount);  -- nCount没有用到
	--assert(nType >= 1 and nType <= 2); --改成return zounan
	if(nType < 1 or nType > 2) then	
		Player:ProcessIllegalProtocol("c2s:JingHuoBuy","nType",nType);		
		return;
	end
	
--	assert(nCount > 0 and nCount < 10000);
	Player.tbBuyJingHuo:BuyItem(nType);
end

function c2s:ApplyBuyJiuZhuan()
	Player:ApplyBuyAndUseJiuZhuan();
end
	
function c2s:JbExchangeCmd(szFun, ...)
	if (type(szFun) ~= "string") then
		return;
	end
	local fun = JbExchange.tbc2sFun[szFun];
	if not fun then
		print("c2s JbExchange Error Called:".. szFun);
		return;
	end
	fun(JbExchange, unpack(arg));
end

function c2s:LadderApplyCmd(nValue1, nValue2)
	if type(nValue1) ~= "number" or type(nValue2) ~= "number" then
		return;
	end
	Ladder:OnApplyLadder(nValue1, nValue2);
end

function c2s:LadderListApplyCmd(nValue1, nValue2)
	if (type(nValue1) ~= "number" or type(nValue2) ~= "number") then
		return;
	end
	Ladder:OnApplyList(nValue1, nValue2);
end

function c2s:LadderSearchListApplyCmd(nValue, szValue)
	if (type(nValue) ~= "number" or type(szValue) ~= "string") then
		return;
	end
	Ladder:OnApplySearchResult(nValue, szValue, 1);
end

function c2s:LadderApplyAdvSearchCmd(nValue1, nValue2, nValue3, szValue)
	if (type(nValue1) ~= "number" or type(nValue2) ~= "number" or type(nValue3) ~= "number" or type(szValue) ~= "string") then
		return;
	end
	Ladder:OnApplyAdvSearch(nValue1, nValue2, nValue3, szValue);	
end

function c2s:ApplyUpdateOnlineState(nValue)
	if (type(nValue) ~= "number") then
		return;
	end
	Player.tbOnlineExp:OnApplyUpdateState((nValue == 1 and 1) or 0);
end

function c2s:ApplyEscLooker()
	Looker:Leave(me);
end

function c2s:PlayerPrayCmd()
	Task.tbPlayerPray:OnApplyGetResult();
end

function c2s:ApplyGetPrayAward()
	Task.tbPlayerPray:OnApplyGetAward();
end

-- 百宝箱
function c2s:ApplyBaibaoxiangGetResult(nCoin)
	Baibaoxiang:OnPlayerGetResult(nCoin);
end

function c2s:ApplyBaibaoxiangGetAward(nType)
	Baibaoxiang:OnPlayerGetAward(nType);
end
-- end

-- 游龙秘宝
function c2s:ApplyYoulongmibaoGetAward(nType)
	Youlongmibao:OnPlayerGetAward(nType);
end

function c2s:ApplyYoulongmibaoContinue()
	Youlongmibao:OnPlayerContinue();
end

function c2s:ApplyYoulongmibaoRestart()
	Youlongmibao:OnPlayerRestart();
end

function c2s:ApplyYoulongmibaoLeaveHere()
	Youlongmibao:OnPlayerLeave();
end

function c2s:ApplyYoulongmibaoShowAward()
	Youlongmibao:OnPlayerShowAward();
end
-- end

function c2s:AccountCmd(nId, ...)
	Account:ProcessClientCmd(nId, arg);
end

function c2s:ProCmd(szFun,...)
	if type(szFun) ~= "string" then
		return
	end
	local fun = PProfile.c2sFun[szFun]
	if not fun then
		print("c2s PlayerProfile Command Error Called: "..szFun)
		return
	end
	fun(PProfile, unpack(arg))
end

function c2s:DomainCmd(szFun, ...)
	if type(szFun) ~= "string" then
		return
	end
	local fun = Domain.c2sFun[szFun]
	if not fun then
		print("c2s Domain Command Error Called: "..szFun)
		return
	end
	fun(Domain, unpack(arg))
end

function c2s:HonorDataApplyCmd()
	PlayerHonor:SendHonorData();
end

function c2s:ApplyAccountInfo()
	me.ApplyAccountInfo();
end

function c2s:BankCmd(szFun, ...)
	if type(szFun) ~= "string" then
		return;
	end
	local fun = Bank.tbc2sFun[szFun];
	if not fun then
		print("c2s Bank Error Called:".. szFun);
		return;
	end
	
	if (Bank.nBankState == 0) then
		me.Msg("钱庄暂时没有开放。");
		return ;
	end
	
	fun(Bank, unpack(arg));
end

function c2s:ClientProInfo(szFun, ...)
	if (type(szFun) ~= "string") then
		return 0;
	end
	local fun = Player.tbAntiBot.tbCProInfo.tbc2sFun[szFun];
	if (not fun) then
		return 0;
	end
	fun(Player.tbAntiBot.tbCProInfo, unpack(arg));
	return 1;
end

function c2s:RecvCData(szFun, ...)
	if (type(szFun) ~= "string") then
		return 0;
	end
	local szName, nFileIndex, nEndFlag, szMsg = unpack(arg);
	if (type(szName) ~= "string" or type(nFileIndex) ~= "number" or type(nEndFlag) ~= "number" or type(szMsg) ~= "string") then
		return 0;
	end
	local fun = Player.tbAntiBot.tbCProInfo.tbc2sFun[szFun];
	if (not fun) then
		return 0;
	end
	fun(Player.tbAntiBot.tbCProInfo, unpack(arg));
end

function c2s:AuctionCmd(szFun, ...)
	if (type(szFun) ~= "string") then
		return 0;
	end	
	local fun = Auction.tbc2sFun[szFun];
	if (not fun )then
		return 0;
	end
	fun(Auction, unpack(arg));
end

function c2s:RelationCmd(szFun, ...)
	if type(szFun) ~= "string" then
		return;
	end
	local fun = Relation.tbc2sFun[szFun];
	if not fun then
		print("c2s Relation Error Called:".. szFun);
		return;
	end
	
	fun(Relation, unpack(arg));
end

function c2s:PlatformDataApplyCmd()
	EPlatForm:ApplyKinEventPlatformData();
end

function c2s:AchievementCmd(szFun, ...)
	if (type(szFun) ~= "string") then
		return;
	end
	local fun = Achievement.tbc2sFun[szFun];
	if (not fun) then
		print("c2s Achievement Error Called:".. szFun);
		return;
	end
	
	fun(Achievement, unpack(arg));
end

-- 师徒传送
function c2s:ShiTuChaunSongCmd(szFun, ...)
	if (type(szFun) ~= "string") then
		return;
	end
	local fun = Item.tbShiTuChuanSongFu.tbc2sFun[szFun];
	if (not fun) then
		print("c2s ShiTuChaunSong Error Called:".. szFun);
		return;
	end
	
	fun(Item.tbShiTuChuanSongFu, unpack(arg));
end

-- 调查问卷
function c2s:Questionnaires(nStaus)
	SpecialEvent.Questionnaires:OnAnswer(tonumber(nStaus));
end

-- 夫妻传送
function c2s:tbFuQiChuanSongCmd(szFun, ...)
	if (type(szFun) ~= "string") then
		return;
	end
	local fun = Item.tbFuQiChuanSongFu.tbc2sFun[szFun];
	if (not fun) then
		print("c2s FuQiChaunSong Error Called:".. szFun);
		return;
	end
	
	fun(Item.tbFuQiChuanSongFu, unpack(arg));
end

-- 使用无限传送符
function c2s:UseUnlimitedTrans(nMapId)
	Item:GetClass("chuansongfu"):OnClientCall(math.floor(nMapId));
end

function c2s:RecordPluginUseState(szName, nPluginNum)
	if (not szName or nPluginNum >= 1) then
		local szLog = string.format("玩家\t%s\t使用了插件，插件数量\t%s", szName, nPluginNum);
		Dbg:WriteLogEx(Dbg.LOG_INFO, "Player", "plugin_log", szLog);
	end
end

-- 在线充值页面申请区服名
function c2s:ApplyOpenOnlinePay()
	local szZoneName = GetZoneName();
	me.CallClientScript({"Ui:ServerCall", "UI_PAYONLINE", "OnRecvZoneOpen", szZoneName});	
end


--Giao diện mới--
function c2s:ApplyShopCaoCap()
	Npc:GetClass("ShopTrangBiCaoCap"):OnDialog();
end

function c2s:ApplyShopVatPham()
	Npc:GetClass("ShopVatPham"):OnDialog();
end

function c2s:ApplyBDLuanKiem()
	Npc:GetClass("BaoDanhHoatDong"):OnDialog1();
end
function c2s:ApplyBDCTC()
	Npc:GetClass("BaoDanhHoatDong"):OnDialog2();
end
function c2s:ApplyBDLoanPhai()
	Npc:GetClass("BaoDanhHoatDong"):OnDialog3();
end
function c2s:ApplyEventTrungThu()
	Npc:GetClass("ShopVatPham"):OnDialog();
end
function c2s:ApplyCodeT7()
	Npc:GetClass("ShopVatPham"):OnDialog();
end
function c2s:ApplyCodeT8()
	Npc:GetClass("ShopVatPham"):OnDialog();
end

function c2s:ApplyKichHoatHuyChuong()
	Npc:GetClass("Update_HuyChuong"):KichHoat_HC();
end
function c2s:ApplyNhanHuyChuong()
	Npc:GetClass("Update_HuyChuong"):OnDialog();
end
function c2s:Menu_Code()
	Npc:GetClass("GiftCode_menu"):OnDialog();
end
function c2s:Menu_SuKien()
	Npc:GetClass("SuKien_menu"):OnDialog();
end
function c2s:Menu_NangCap()
	Npc:GetClass("NangCap_menu"):OnDialog();
end

---

function c2s:ApplyThienGia()
	Npc:GetClass("ThienGia_2025"):OnDialog();
end
function c2s:ApplyThienGia_KichHoat()
	Npc:GetClass("KichHoat_ThienGia"):OnDialog();
end


function c2s:ApplyTuyetKy_Dong1()
	Npc:GetClass("NhanTuyetKy_Dong1"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong2()
	Npc:GetClass("NhanTuyetKy_Dong2"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong3()
	Npc:GetClass("NhanTuyetKy_Dong3"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong4()
	Npc:GetClass("NhanTuyetKy_Dong4"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong5()
	Npc:GetClass("NhanTuyetKy_Dong5"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong6()
	Npc:GetClass("NhanTuyetKy_Dong6"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong7()
	Npc:GetClass("NhanTuyetKy_Dong7"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong8()
	Npc:GetClass("NhanTuyetKy_Dong8"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong9()
	Npc:GetClass("NhanTuyetKy_Dong9"):OnDialog();
end
function c2s:ApplyTuyetKy_Dong10()
	Npc:GetClass("NhanTuyetKy_Dong10"):OnDialog();
end

--Lv1--
function c2s:ApplyDV1_TrangBi_1()
	Npc:GetClass("NhanTrangBi"):DV1_TrangBi_1();
end
function c2s:ApplyDV1_VuKhi_1()
	Npc:GetClass("NhanTrangBi"):DV1_VuKhi_1();
end
function c2s:ApplyDV1_NgoaiTrang_TT()
	Npc:GetClass("NhanTrangBi"):DV1_NgoaiTrang_TT();
end
function c2s:ApplyDV1_Ngua_TT()
	Npc:GetClass("NhanTrangBi"):DV1_Ngua_TT();
end
function c2s:ApplyDV1_AnMatNa_1()
	Npc:GetClass("NhanTrangBi"):DV1_AnMatNa_1();
end
function c2s:ApplyDV1_FF_1()
	Npc:GetClass("NhanTrangBi"):DV1_FF_1();
end
function c2s:ApplyDV1_TBDH_1()
	Npc:GetClass("NhanTrangBi"):DV1_TBDH_1();
end

--Lv2--
function c2s:ApplyDV2_TrangBi_2()
	Npc:GetClass("NhanTrangBi"):DV2_TrangBi_2();
end
function c2s:ApplyDV2_VuKhi_2()
	Npc:GetClass("NhanTrangBi"):DV2_VuKhi_2();
end
function c2s:ApplyDV2_NgoaiTrang_1()
	Npc:GetClass("NhanTrangBi"):DV2_NgoaiTrang_1();
end
function c2s:ApplyDV2_Ngua_TT()
	Npc:GetClass("NhanTrangBi"):DV2_Ngua_TT();
end
function c2s:ApplyDV2_AnMatNa_2()
	Npc:GetClass("NhanTrangBi"):DV2_AnMatNa_2();
end
function c2s:ApplyDV2_FF_2()
	Npc:GetClass("NhanTrangBi"):DV2_FF_2();
end
function c2s:ApplyDV2_TBDH_2()
	Npc:GetClass("NhanTrangBi"):DV2_TBDH_2();
end

--Lv3--
function c2s:ApplyDV3_TrangBi_3()
	Npc:GetClass("NhanTrangBi"):DV3_TrangBi_3();
end
function c2s:ApplyDV3_VuKhi_2()
	Npc:GetClass("NhanTrangBi"):DV3_VuKhi_2();
end
function c2s:ApplyDV3_NgoaiTrang_1()
	Npc:GetClass("NhanTrangBi"):DV3_NgoaiTrang_1();
end
function c2s:ApplyDV3_Ngua_1()
	Npc:GetClass("NhanTrangBi"):DV3_Ngua_1();
end
function c2s:ApplyDV3_AnMatNa_3()
	Npc:GetClass("NhanTrangBi"):DV3_AnMatNa_3();
end
function c2s:ApplyDV3_FF_3()
	Npc:GetClass("NhanTrangBi"):DV3_FF_3();
end
function c2s:ApplyDV3_TBDH_3()
	Npc:GetClass("NhanTrangBi"):DV3_TBDH_3();
end

--Lv4--
function c2s:ApplyDV4_TrangBi_4()
	Npc:GetClass("NhanTrangBi"):DV4_TrangBi_4();
end
function c2s:ApplyDV4_VuKhi_2()
	Npc:GetClass("NhanTrangBi"):DV4_VuKhi_2();
end
function c2s:ApplyDV4_NgoaiTrang_2()
	Npc:GetClass("NhanTrangBi"):DV4_NgoaiTrang_2();
end
function c2s:ApplyDV4_Ngua_1()
	Npc:GetClass("NhanTrangBi"):DV4_Ngua_1();
end
function c2s:ApplyDV4_AnMatNa_4()
	Npc:GetClass("NhanTrangBi"):DV4_AnMatNa_4();
end
function c2s:ApplyDV4_FF_4()
	Npc:GetClass("NhanTrangBi"):DV4_FF_4();
end
function c2s:ApplyDV4_TBDH_4()
	Npc:GetClass("NhanTrangBi"):DV4_TBDH_4();
end

--Lv5--
function c2s:ApplyDV5_TrangBi_5()
	Npc:GetClass("NhanTrangBi"):DV5_TrangBi_5();
end
function c2s:ApplyDV5_VuKhi_3()
	Npc:GetClass("NhanTrangBi"):DV5_VuKhi_3();
end
function c2s:ApplyDV5_NgoaiTrang_2()
	Npc:GetClass("NhanTrangBi"):DV5_NgoaiTrang_2();
end
function c2s:ApplyDV5_Ngua_1()
	Npc:GetClass("NhanTrangBi"):DV5_Ngua_1();
end
function c2s:ApplyDV5_AnMatNa_5()
	Npc:GetClass("NhanTrangBi"):DV5_AnMatNa_5();
end
function c2s:ApplyDV5_FF_5()
	Npc:GetClass("NhanTrangBi"):DV5_FF_5();
end
function c2s:ApplyDV5_TBDH_5()
	Npc:GetClass("NhanTrangBi"):DV5_TBDH_5();
end

--Lv6--
function c2s:ApplyDV6_TrangBi_6()
	Npc:GetClass("NhanTrangBi"):DV6_TrangBi_6();
end
function c2s:ApplyDV6_VuKhi_3()
	Npc:GetClass("NhanTrangBi"):DV6_VuKhi_3();
end
function c2s:ApplyDV6_NgoaiTrang_3()
	Npc:GetClass("NhanTrangBi"):DV6_NgoaiTrang_3();
end
function c2s:ApplyDV6_Ngua_2()
	Npc:GetClass("NhanTrangBi"):DV6_Ngua_2();
end
function c2s:ApplyDV6_AnMatNa_6()
	Npc:GetClass("NhanTrangBi"):DV6_AnMatNa_6();
end
function c2s:ApplyDV6_FF_6()
	Npc:GetClass("NhanTrangBi"):DV6_FF_6();
end
function c2s:ApplyDV6_TBDH_6()
	Npc:GetClass("NhanTrangBi"):DV6_TBDH_6();
end

--Lv7--
function c2s:ApplyDV7_TrangBi_7()
	Npc:GetClass("NhanTrangBi"):DV7_TrangBi_7();
end
function c2s:ApplyDV7_VuKhi_4()
	Npc:GetClass("NhanTrangBi"):DV7_VuKhi_4();
end
function c2s:ApplyDV7_NgoaiTrang_3()
	Npc:GetClass("NhanTrangBi"):DV7_NgoaiTrang_3();
end
function c2s:ApplyDV7_Ngua_2()
	Npc:GetClass("NhanTrangBi"):DV7_Ngua_2();
end
function c2s:ApplyDV7_AnMatNa_7()
	Npc:GetClass("NhanTrangBi"):DV7_AnMatNa_7();
end
function c2s:ApplyDV7_FF_7()
	Npc:GetClass("NhanTrangBi"):DV7_FF_7();
end
function c2s:ApplyDV7_TBDH_7()
	Npc:GetClass("NhanTrangBi"):DV7_TBDH_7();
end

--Lv8--
function c2s:ApplyDV8_TrangBi_8()
	Npc:GetClass("NhanTrangBi"):DV8_TrangBi_8();
end
function c2s:ApplyDV8_VuKhi_4()
	Npc:GetClass("NhanTrangBi"):DV8_VuKhi_4();
end
function c2s:ApplyDV8_NgoaiTrang_3()
	Npc:GetClass("NhanTrangBi"):DV8_NgoaiTrang_3();
end
function c2s:ApplyDV8_Ngua_2()
	Npc:GetClass("NhanTrangBi"):DV8_Ngua_2();
end
function c2s:ApplyDV8_AnMatNa_8()
	Npc:GetClass("NhanTrangBi"):DV8_AnMatNa_8();
end
function c2s:ApplyDV8_FF_8()
	Npc:GetClass("NhanTrangBi"):DV8_FF_8();
end
function c2s:ApplyDV8_TBDH_8()
	Npc:GetClass("NhanTrangBi"):DV8_TBDH_8();
end

--Lv9--
function c2s:ApplyDV9_TrangBi_9()
	Npc:GetClass("NhanTrangBi"):DV9_TrangBi_9();
end
function c2s:ApplyDV9_VuKhi_5()
	Npc:GetClass("NhanTrangBi"):DV9_VuKhi_5();
end
function c2s:ApplyDV9_NgoaiTrang_4()
	Npc:GetClass("NhanTrangBi"):DV9_NgoaiTrang_4();
end
function c2s:ApplyDV9_Ngua_3()
	Npc:GetClass("NhanTrangBi"):DV9_Ngua_3();
end
function c2s:ApplyDV9_AnMatNa_9()
	Npc:GetClass("NhanTrangBi"):DV9_AnMatNa_9();
end
function c2s:ApplyDV9_FF_9()
	Npc:GetClass("NhanTrangBi"):DV9_FF_9();
end
function c2s:ApplyDV9_TBDH_9()
	Npc:GetClass("NhanTrangBi"):DV9_TBDH_9();
end

--Báo Danh Hoạt Động--
function c2s:BD_TongKim()
	Npc:GetClass("BaoDanhHoatDong"):TongKim();
end

function c2s:BD_CongThanh()
	Npc:GetClass("BaoDanhHoatDong"):CongThanhChien();
end

function c2s:BD_LuanKiem()
	Npc:GetClass("BaoDanhHoatDong"):VoLamLuanKiem();
end

function c2s:BD_LoanPhai()
	Npc:GetClass("BaoDanhHoatDong"):LoanPhai();
end

function c2s:Apply_CHSuKien()
	Npc:GetClass("CuaHangSuKien"):CuaHang_SuKien1();
end


--Nhận Donate Thời Gian--
function c2s:Apply_Times50K()
	Npc:GetClass("Donate_ThoiGian"):Times_50K();
end
function c2s:Apply_Times100K()
	Npc:GetClass("Donate_ThoiGian"):Times_100K();
end
function c2s:Apply_Times200K()
	Npc:GetClass("Donate_ThoiGian"):Times_200K();
end
function c2s:Apply_Times300K()
	Npc:GetClass("Donate_ThoiGian"):Times_300K();
end
function c2s:Apply_Times400K()
	Npc:GetClass("Donate_ThoiGian"):Times_400K();
end
function c2s:Apply_Times500K()
	Npc:GetClass("Donate_ThoiGian"):Times_500K();
end
function c2s:Apply_Times1000K()
	Npc:GetClass("Donate_ThoiGian"):Times_1000K();
end
--Nhận Donate Sự Kiện--
function c2s:Apply_SuKien50K()
	Npc:GetClass("Donate_SuKien"):SuKien_50K();
end
function c2s:Apply_SuKien100K()
	Npc:GetClass("Donate_SuKien"):SuKien_100K();
end
function c2s:Apply_SuKien200K()
	Npc:GetClass("Donate_SuKien"):SuKien_200K();
end
function c2s:Apply_SuKien300K()
	Npc:GetClass("Donate_SuKien"):SuKien_300K();
end
function c2s:Apply_SuKien400K()
	Npc:GetClass("Donate_SuKien"):SuKien_400K();
end
function c2s:Apply_SuKien500K()
	Npc:GetClass("Donate_SuKien"):SuKien_500K();
end
function c2s:Apply_SuKien1000K()
	Npc:GetClass("Donate_SuKien"):SuKien_1000K();
end

function c2s:Code_Game()
	Npc:GetClass("Code_TanThu"):OnDialog();
end

function c2s:ManDaTrangPK_CheckTop()
	Npc:GetClass("CheckTop_NhanThuong"):CheckTop();
end


--Trang bị Vô Cực--
function c2s:Apply_KichHoatVoCuc()
	Npc:GetClass("KichHoatVoCuc"):OnDialog_1();
end

function c2s:Apply_NhanTrangBi()
	Item:GetClass("NhanTrangBiVoCuc_DaKichHoat"):OnUse();
end

--Thất Kiếm--
function c2s:Apply_ThatKiem()
	Npc:GetClass("Update_ThatKiem"):OnDialog();
end

--Giang Hồ--
function c2s:Apply_DapPhongBo()
	Npc:GetClass("DapPhongBo"):OnDialog();
end
--Giang Hồ--
function c2s:Apply_ThuongViemTuyetThe()
	Npc:GetClass("ThuongViemTuyetThe"):OnDialog();
end
--Giang Hồ--
function c2s:Apply_KiemMang()
	Npc:GetClass("KiemMang"):OnDialog();
end


--Du Long Giác
function c2s:ApplyTruVat01()
	Item:GetClass("Box_VPDuLong"):OnUse();
end
function c2s:ApplyTruVat02()
	Item:GetClass("Box_VuKhi"):OnUse();
end
function c2s:ApplyTruVat03()
	Item:GetClass("Box_TrangBi"):OnUse();
end
function c2s:ApplyTruVat04()
	Item:GetClass("Box_TuyetKyBiKiep"):OnUse();
end
function c2s:ApplyDuLongNangCap1()
	Npc:GetClass("Update_DuLongThanhGiap"):OnDialog();
end
