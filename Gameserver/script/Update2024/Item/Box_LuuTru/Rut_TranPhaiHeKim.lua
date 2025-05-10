local tbRut_TranPhaiHeKim = {};
SpecialEvent.Rut_TranPhaiHeKim = tbRut_TranPhaiHeKim;


tbRut_TranPhaiHeKim.TaskGroupTP_ThieuLam = 4217; --Túi Trữ Trấn Phái Thiếu Lâm
tbRut_TranPhaiHeKim.TGTP_ThieuLam21 = 1;
tbRut_TranPhaiHeKim.TGTP_ThieuLam22 = 2;
tbRut_TranPhaiHeKim.TGTP_ThieuLam23 = 3;
tbRut_TranPhaiHeKim.TGTP_ThieuLam24 = 4;
tbRut_TranPhaiHeKim.TGTP_ThieuLam25 = 5;
tbRut_TranPhaiHeKim.TGTP_ThieuLam26 = 6;
tbRut_TranPhaiHeKim.TGTP_ThieuLam27 = 7;
tbRut_TranPhaiHeKim.TGTP_ThieuLam28 = 8;
tbRut_TranPhaiHeKim.TGTP_ThieuLam29 = 9;
tbRut_TranPhaiHeKim.TGTP_ThieuLam30 = 10;

tbRut_TranPhaiHeKim.TaskGroupTP_ThienVuong = 4218; --Túi Trữ Trấn Phái Thiên Vương
tbRut_TranPhaiHeKim.TGTP_ThienVuong21 = 1;
tbRut_TranPhaiHeKim.TGTP_ThienVuong22 = 2;
tbRut_TranPhaiHeKim.TGTP_ThienVuong23 = 3;
tbRut_TranPhaiHeKim.TGTP_ThienVuong24 = 4;
tbRut_TranPhaiHeKim.TGTP_ThienVuong25 = 5;
tbRut_TranPhaiHeKim.TGTP_ThienVuong26 = 6;
tbRut_TranPhaiHeKim.TGTP_ThienVuong27 = 7;
tbRut_TranPhaiHeKim.TGTP_ThienVuong28 = 8;
tbRut_TranPhaiHeKim.TGTP_ThienVuong29 = 9;
tbRut_TranPhaiHeKim.TGTP_ThienVuong30 = 10;

tbRut_TranPhaiHeKim.ID_TranPhai_ThieuLam = 
{
{1,15,1250,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 21-1
{1,15,1251,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 22-2
{1,15,1252,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 23-3
{1,15,1253,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 24-4
{1,15,1254,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 25-5
{1,15,1255,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 26-6
{1,15,1256,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 27-7
{1,15,1257,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 28-8
{1,15,1258,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 29-9
{1,15,1259,7};--Tuyệt Thế Trấn Phái Thiếu Lâm Tầng 30-10

}

function tbRut_TranPhaiHeKim:OnDialog_TL()
local TP_TL_21 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam21);
local TP_TL_22 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam22);
local TP_TL_23 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam23);
local TP_TL_24 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam24);
local TP_TL_25 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam25);
local TP_TL_26 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam26);
local TP_TL_27 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam27);
local TP_TL_28 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam28);
local TP_TL_29 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam29);
local TP_TL_30 = me.GetTask(self.TaskGroupTP_ThieuLam,self.TGTP_ThieuLam30);

local szMsg = "<bclr=0,0,200><color=white>Mời lựa chọn Rút Tuyệt kỹ:<color>";
	local tbOpt = 
	{
		--{"Kết thúc đối thoại"},
	}

	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 21-<color=blue>Còn: "..TP_TL_21.."<color><color>", self.TP_TL21, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 22-<color=blue>Còn: "..TP_TL_22.."<color><color>", self.TP_TL22, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 23-<color=blue>Còn: "..TP_TL_23.."<color><color>", self.TP_TL23, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 24-<color=blue>Còn: "..TP_TL_24.."<color><color>", self.TP_TL24, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 25-<color=blue>Còn: "..TP_TL_25.."<color><color>", self.TP_TL25, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 26-<color=blue>Còn: "..TP_TL_26.."<color><color>", self.TP_TL26, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 27-<color=blue>Còn: "..TP_TL_27.."<color><color>", self.TP_TL27, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 28-<color=blue>Còn: "..TP_TL_28.."<color><color>", self.TP_TL28, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 29-<color=blue>Còn: "..TP_TL_29.."<color><color>", self.TP_TL29, self});
	table.insert(tbOpt,{"<color=yellow>Trấn Phái Thiếu Lâm Tầng 30-<color=blue>Còn: "..TP_TL_30.."<color><color>", self.TP_TL30, self});

	table.insert(tbOpt,{"Kết thúc đối thoại 3", self.xxxxxxx, self});

Dialog:Say(szMsg, tbOpt);
end


function tbRut_TranPhaiHeKim:TP_TL21()
	local nTranPhaiIDTask = self.TGTP_ThieuLam21;
	local TranPhai_Lv = 1;
	
	local nTranPhai = me.GetTask(self.TaskGroupTP_ThieuLam,nTranPhaiIDTask);
	local tbItems = self.ID_TranPhai_ThieuLam;
	
	
	if nTranPhai < 1 then
	Dialog:Say("<color=red>Ngươi không có Quyển nào gửi trước đó để Rút!<color>");
	return
	end

	me.SetTask(self.TaskGroupTP_ThieuLam, nTranPhaiIDTask, nTranPhai - 1);
	local pItem = me.AddItem(unpack(tbItems[TranPhai_Lv]));
	pItem.Bind(1);


end
