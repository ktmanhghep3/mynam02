--报名npc
--sunduoliang
--2008.12.29

local tbNpc = Npc:GetClass("esport_yanruoxue");

tbNpc.tbFollowInsertItem 	= {18, 1, 477, 1};
tbNpc.tbTypeName = {"打雪仗赛","龙舟赛","守护先祖之魂赛"}


tbNpc.tbChangeItemList = {
	[1] = {
		szContext = "1个月影之石换取一双暖暖的手套",
		tbGiftParam = {
			tbAward = { {nGenre=18, nDetail=1, nParticular=477, nLevel=1,nCount=1,},},
			tbMareial = { { nGenre = 18, nDetail = 1, nParticular = 476,nLevel = 1, nCount = 1,},},
		},
	},
	[2] = {
		szContext = "5个月影之石换取一双暖暖的手套·御雪",
		tbGiftParam = {
			tbAward = { {nGenre=18, nDetail=1, nParticular=478, nLevel=1,nCount=1,},},
			tbMareial = { { nGenre = 18, nDetail = 1, nParticular = 476,nLevel = 1, nCount = 5,},},
		},
	},
};
function tbNpc:OnDialog()
	local szMsg = string.format("家族竞技和日常活动");

	local tbOpt = {
		{"家族竞技", self.OnDialogEx, self},
		--{"<color=yellow>清明—守护先祖之魂<color>", TowerDefence.tbNpc.OnDialog, TowerDefence.tbNpc},
		{"随便看看"},
	};	
	Dialog:Say(szMsg, tbOpt);	
end

function tbNpc:OnDialogEx()
	local nState = EPlatForm:GetMacthState();
	local nFlag = 0;
	local tbOpt = {{"我来看看"},};
	if (nState == EPlatForm.DEF_STATE_REST) then
		nFlag =1;
		tbOpt = {
			{"领取最终活动奖励", EPlatForm.GetPlayerAward_Final, EPlatForm},
			{"领取家族奖励", EPlatForm.GetKinAward, EPlatForm},
			{"我来看看"},	
		};
	end
	if nFlag == 1 then
		Dialog:Say("阁下真有心，能来看望我，小女子感激不尽，可惜现在不是比赛的季节，请过段时间再来吧！", tbOpt);
		return 0;
	end
	
	if EPlatForm:IsSignUpByAward(me) > 0 then
		Dialog:Say("你上次比赛的奖励还没领呢，赶快领吧。领奖吗？", 
			{
				{"好，领啊", EPlatForm.GetPlayerAward_Single, EPlatForm},
				{"我在考虑考虑"},
			}
		);
		return 0;
	end
	
	if (nState == EPlatForm.DEF_STATE_CLOSE) then
		Dialog:Say("家族竞技平台还未开启！请过些天再来吧！");
		return 0;
	end
	
	EPlatForm:UpdateEventCount(me);
	local nCount = EPlatForm:GetEventCount(me);
	local nTotalCount = EPlatForm:GetPlayerTotalCount(me);
	local szStateName = EPlatForm.DEF_STATE_MSG[nState];
	local nTypeEx = EPlatForm:GetMacthType(EPlatForm:GetMacthSession());
	local szMsg = string.format("嘿嘿，本月的家族竞技活动是<color=yellow>%s<color>。目前比赛已经到了<color=yellow>%s<color>，你想参加比赛吗？\n\n", self.tbTypeName[nTypeEx], szStateName);
	if (nState == EPlatForm.DEF_STATE_MATCH_1 or nState == EPlatForm.DEF_STATE_MATCH_2) then
		szMsg = string.format("%s<color=yellow>你今天剩余次数：%s次\n", szMsg, nCount);
		if (nState == EPlatForm.DEF_STATE_MATCH_1) then
			szMsg = string.format("%s本阶段已经参加的总场数：%d次", szMsg, nTotalCount);
		end
	end
	local tbOpt = {
		{"参加家族竞技", EPlatForm.tbNpc.OnDialog, EPlatForm.tbNpc},
		{"我要查询相关赛况", EPlatForm.tbNpc.QueryMatch, EPlatForm.tbNpc},
		{"领取最终活动奖励", EPlatForm.GetPlayerAward_Final, EPlatForm},
		{"领取家族奖励", EPlatForm.GetKinAward, EPlatForm},
		{"月影之石商店", self.ChangeItem, self},
		{"了解家族竞技活动", self.OnAboutEx, self, nTypeEx},
		{"随便看看"},
	};
	if nTypeEx == 2 then
		table.insert(tbOpt, 6,{"龙舟改造", Npc:GetClass("dragonboat_signup").ProductBoat,	Npc:GetClass("dragonboat_signup")});
	end
	if nTypeEx == 3 then
		table.insert(tbOpt, 6, {"先祖庇护符改造", TowerDefence.Npc_ProductTD, TowerDefence});
	end
	Dialog:Say(szMsg, tbOpt);
end

-- 放入物品
function tbNpc:ChangeItem(nLevel)
	
	me.OpenShop(166,3);
	do return end;
	
	if (EPlatForm:GetMacthType(EPlatForm:GetMacthSession()) ~= 1) then
		Dialog:Say("活动还没有开放，不能兑换道具。");
		return;
	end
	
	if (not nLevel) then
		Dialog:Say("1个月影之石换取一双暖暖的手套，5个月影之石换取一双暖暖的手套·御雪。月影之石可以去杂货店买月影原石利用生活技能加工制作得到。你要兑换哪种道具？",
			{
				{"暖暖的手套", self.ChangeItem, self, 1},
				{"暖暖的手套·御雪", self.ChangeItem, self, 2},
				{"我来看看"},	
			}
		);
		return 0;
	end
	local tbParam = self.tbChangeItemList[nLevel];
	
	if (not tbParam or not tbParam.tbGiftParam) then
		return 0;
	end
	
	Dialog:OpenGift(tbParam.szContext, tbParam.tbGiftParam);
end

function tbNpc:GetAward()
	if EPlatForm:IsSignUpByAward(me) <= 0 then
		Dialog:Say("想要若雪的礼物吗？想要的话就要报名参加打雪仗哦。", {{"我会去参加的", self.OnDialog, self}});		
		return 0;
	end

	if (0 == EPlatForm:GetPlayerAward(me)) then
		return 0;
	end
	Dialog:Say("这是我送你的礼物，你能接受若雪的礼物，若雪好开心，记得再来玩哦。", {{"谢谢若雪姐姐", self.OnDialog, self}});
	return 0;
end

function tbNpc:OnOpenRank()
	local nTotal = EPlatForm:GetPlayerTotalMatch(me);
	local nWin 	 = EPlatForm:GetPlayerWinMatch(me);
	local nTie 	 = EPlatForm:GetPlayerLoseMatch(me);
	local nLost  = nTotal - nWin - nTie;
	local szRate  = "无胜率";
	if nTotal > 0 then
		szRate = string.format("%.2f", (nWin/nTotal)*100) .. "％";
	end
	local szMsg = string.format([[若雪可以帮你打开荣誉排行榜，你在界面下面的“其他排行榜”下的“活动排行”中查询到排行信息，需要我帮你打开排行榜吗？
	<color=green>
	---参赛信息---
	
	总场数：%s
	胜场数：%s
	平场数：%s
	负场数：%s
	胜率值：%s
	<color>
	]], nTotal, nWin, nTie, nLost, szRate);
	local tbOpt = {
		{"帮我打开排行榜吧", self.OnOpenRankList, self},
		{"我自己去看吧"},
	}
	Dialog:Say(szMsg, tbOpt);
end

function tbNpc:OnOpenRankList()
	me.CallClientScript({"UiManager:OpenWindow", "UI_LADDER"});
end

tbNpc.tbAbout = {
[1] = [[
    比赛共分三个阶段：
    家族选拔赛阶段：单人混战。每个月的7号~20号，共计14天，活动开启时间为每天的10点——23点，每15分钟开启一场，10点为第一场，22：45为每天最后一场，报名时间5分钟。
    家族预选赛阶段：战队对战赛。总积分排名前120的家族可以组战队进入比赛。每个月的21号~26号，共计6天。活动开启时间每天共2轮，下午及晚上各一轮：每天的15点——17点，21：30——23：00。
    家族决赛阶段：家族战队决赛，8强战队有资格进入。每个月的27号，为期1天，21：30~~23：00为比赛时间。
]],

[2] = [[
    家族选拔赛阶段你可以单独来我这里报名，而后两个阶段的比赛则需要战队才可以参加比赛，这需要你的家族成员共同努力晋级才行。没有家族是不能参加战队赛的。
]],
[3] = [[
    你们到了比赛场会发现大家被变成了一群小孩，并获得一个叫“扔雪球”的技能，你用其攻击和你不一样的小孩就可以获得积分。你还会发现赛场会出现一些奇怪的雪人，神符什么的，右键点击就可以获得其他强力技能，击中对手可以获得更多积分。还有啊，场地经常下冰雹，要注意安全。山顶有个年兽，被吵醒了可是不得了，这个怪物脾气很大的。
]],
[4] = [[
    1.虽然你报名了但是由于人数问题可能会轮空，没关系，出了准备场再报名吧。
    
    2.进了赛场后，大家属性都一样的，和角色的技能等都没有任何关系了哦。
    
    3.赛场上有障碍可以躲避别人扔你的雪球，但是障碍附近经常会下冰雹，务必小心。
]],
};

function tbNpc:OnAboutEx(nFlag)
	local szMsg = "家族竞技活动都有以下的几种，你想要了解那个呢？"
	local tbOpt = {
		{"了解打雪仗活动", self.OnAbout, self},
		{"了解龙舟赛活动", Npc:GetClass("dragonboat_signup").OnAbout, Npc:GetClass("dragonboat_signup")},
		{"了解守护先祖之魂赛活动", TowerDefence.OnAbout, TowerDefence},
		{"随便看看"},
	};
	
	Dialog:Say(szMsg, tbOpt);
end

function tbNpc:OnAbout(nSel)
	if nSel then
		Dialog:Say(self.tbAbout[nSel], {{"返回上层", self.OnDialog, self}});
		return 0;
	end
	local szMsg = "你想了解打雪仗活动的哪方面信息呢？"; 
	local tbOpt = {
		{"活动时间相关"	, self.OnAbout, self, 1},
		{"参加形式"		, self.OnAbout, self, 2},
		{"雪仗如何打"	, self.OnAbout, self, 3},
		{"注意事项"		, self.OnAbout, self, 4},
		{"我知道啦"		, self.OnDialog, self},
	};
	Dialog:Say(szMsg, tbOpt);
end
------------------------