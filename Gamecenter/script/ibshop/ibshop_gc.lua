-- �ļ�������isbhop_gc.lua
-- �����ߡ���zouying
-- ����ʱ�䣺2009-9-8 10:02:31
-- ��  ��  ��

if (not MODULE_GC_SERVER) then
	return 0;
end

function IbShop:StartEvent()
	self.tbGblBuf = {};
	local tbBuf = GetGblIntBuf(GBLINTBUF_IBSHOP, 0, 1);
	if tbBuf and type(tbBuf)=="table"  then
		self.tbGblBuf = tbBuf;
		--Lib:ShowTB(tbBuf)
	end
end


--GC����ͬ����GS
function IbShop:OnRecConnectEvent(nConnectId)
	if self.tbGblBuf then
		for nWaraId, _ in pairs(self.tbGblBuf) do
			GSExcute(nConnectId, {"IbShop:OnRecConnectMsg", nWaraId, 1});
		end
	end
end

function IbShop:SetWareStatus(strParams, bDelOrAdd)
	local strIndex = self:GetParams(strParams)
	if not strIndex then
		return 0;
	end
	if bDelOrAdd == 1 then
		self.tbGblBuf[strIndex] = 1 
	else
		self.tbGblBuf[strIndex] = nil
	end
	-- bDelOrAdd:1���¼ܣ�0���ǻָ��ϼ�
	GlobalExcute({"IbShop:OnRecConnectMsg", strIndex, bDelOrAdd});
	return 1
end

function IbShop:GetWareStatusList()
	local szMsg = ""
	local tbParams = {}
	for strIdx, _ in pairs(self.tbGblBuf) do
		tbParams = {}
		for w in string.gmatch(strIdx, "%d+") do
			table.insert(tbParams, tonumber(w))
		end
		local nG = Lib:LoadBits(tbParams[1], 24, 31)
		local nD = Lib:LoadBits(tbParams[1], 12, 23)
		local nP = Lib:LoadBits(tbParams[1], 0,  11)
		local str = tostring(nG) .. ',' .. tostring(nD) .. ',' .. tostring(nP) ..',' .. tostring(tbParams[2]) .. ',' .. tostring(tbParams[3])
		szMsg = szMsg .. '\n' .. str .. '\t down,'
	end
	return szMsg
end


function IbShop:ServerendEvent()
	SetGblIntBuf(GBLINTBUF_IBSHOP, 0, 1, self.tbGblBuf);
end

-- �Ϸ�ʱ����
function IbShop:MergeCoZoneAndMainZoneBuf(tbSubBuf)
	print("[IbShop MergeCoZoneAndMainZoneBuf] Start!!");
	self:StartEvent();
	if (not self.tbGblBuf) then
		self.tbGblBuf = {};
	end
	
	if (tbSubBuf) then
		for szIndex, value in pairs(tbSubBuf) do
			self.tbGblBuf[szIndex] = value;
		end
	end
	self:ServerendEvent();
end

function IbShop:GetParams(params)
	local tbParams = {}
	print(params)
	for w in string.gmatch(params, "%d+") do
		table.insert(tbParams, tonumber(w))
	
	end
	
	local nG = Lib:SetBits(0, tbParams[1], 24, 31)
	local nD = Lib:SetBits(nG, tbParams[2], 12, 23)
	local nWareId = Lib:SetBits(nD, tbParams[3], 0,  11)
	
	local strIndex = tostring(nWareId) .. ',' .. tbParams[4] .. ',' .. tbParams[5]
	--print(strIndex)
	return strIndex
end


-- �ֹ��޸�ib���ߣ�
-- tbWareInfo ��Ʒ�ľ�����Ϣ�����а�������Ϣ�ο�"\\setting\\ibshop\\warelist.txt"�ļ���
function IbShop:PreEditIBWare(tbWareInfo)
	if (not tbWareInfo) then
		return;
	end
	
	tbWareInfo.WareId = tbWareInfo.WareId or 0;	-- ��Ʒid
	tbWareInfo.WareName = tbWareInfo.WareName or ""; -- ��Ʒ����
	tbWareInfo.WareType = tbWareInfo.WareType or 0; -- ��Ʒ���������ʯ������װ���ȣ�
	tbWareInfo.nGenre = tbWareInfo.nGenre or 0;	-- GDPL
	tbWareInfo.nDetailType = tbWareInfo.nDetailType or 0;
	tbWareInfo.nParticular = tbWareInfo.nParticular or 0;
	tbWareInfo.nLevel = tbWareInfo.nLevel or 0;
	tbWareInfo.nSeries = tbWareInfo.nSeries or 0; -- ����
	tbWareInfo.nCurrencyType = tbWareInfo.nCurrencyType or 0; -- ��������
	tbWareInfo.nUseType = tbWareInfo.nUseType or 2;	-- ʹ������
	tbWareInfo.nOrgPrice = tbWareInfo.nOrgPrice or 0; -- ԭʼ�۸�
	tbWareInfo.nWareUseStyle = tbWareInfo.nWareUseStyle or 0; -- ��Ʒʹ�÷�ʽ
	tbWareInfo.nDiscount = tbWareInfo.nDiscount or 100; -- �ۿۣ�Ĭ����100%��Ҳ���ǲ����ۣ�
	tbWareInfo.nRecommend = tbWareInfo.nRecommend or 0; -- �Ƿ��Ƽ���Ʒ
	tbWareInfo.timeSaleStart = tbWareInfo.timeSaleStart or ""; -- ��ʼ����ʱ��
	tbWareInfo.timeSaleClose = tbWareInfo.timeSaleClose or ""; -- ��������ʱ��
	tbWareInfo.DiscountStart = tbWareInfo.DiscountStart or ""; -- ��ʼ�Ż�ʱ��
	tbWareInfo.DiscountClose = tbWareInfo.DiscountClose or ""; -- �����Ż�ʱ��
	tbWareInfo.dwTimeout = tbWareInfo.dwTimeout or 0; -- ��ʱʱ�䣨��¼���Ƿ�������
	tbWareInfo.nTimeFrameStartSale = tbWareInfo.nTimeFrameStartSale or 0; -- ����ʱ���ᣬ��Ʒ��ʼ����ʱ�䣬��
	tbWareInfo.nTimeFrameEndSale = tbWareInfo.nTimeFrameEndSale or 0; -- ����ʱ���ᣬ��Ʒ��������ʱ�䣬��
	tbWareInfo.Ware_Describe = tbWareInfo.Ware_Describe or ""; -- ��Ʒ����
	tbWareInfo.Consumed = tbWareInfo.Consumed or 0; -- �����Ʒ�����ļ��㷽ʽ
	
	return tbWareInfo;
end

-- ��gc�رյ�ʱ�򣬰Ѵ���buff���е�����ָ�����
function IbShop:SaveBuf()
	if (self.tbIbshopCmdBuff) then
		SetGblIntBuf(GBLINTBUF_IBSHOP_CMDBUF, 0, 1, self.tbIbshopCmdBuff);
	end
end

-- gc����ʱ����buff���ж�ȡibshop������ָ�ִ��
function IbShop:ExecuteBuf()
	self.tbIbshopCmdBuff = GetGblIntBuf(GBLINTBUF_IBSHOP_CMDBUF, 0, 1);
	if (self.tbIbshopCmdBuff) then
		self:ExecuteIbshopCmdBuf(self.tbIbshopCmdBuff);
	end
end

-- �ڼ��ؽű���ʱ�򣬰�warelist���е���Ʒ��Ϣ��ȡ���ڴ浱��
function IbShop:PreLoadWareInfo()
	self.tbPreloadWareInfo = {};
	local tbWare = Lib:LoadTabFile("\\setting\\ibshop\\warelist.txt");
	for _, tbData in pairs(tbWare) do
		local nId = tonumber(tbData["WareId"]);
		self.tbPreloadWareInfo[nId] = tbData;
	end
end

IbShop:PreLoadWareInfo();

--GCEvent:RegisterGCServerStartFunc(IbShop.ExecuteBuf, IbShop);
GCEvent:RegisterGCServerShutDownFunc(IbShop.SaveBuf, IbShop);
GCEvent:RegisterGCServerStartFunc(IbShop.StartEvent, IbShop);
GCEvent:RegisterGCServerShutDownFunc(IbShop.ServerendEvent, IbShop);
