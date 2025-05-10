SpecialEvent.ResetPoint = {};
local ResetPoint = SpecialEvent.ResetPoint;

ResetPoint.TaskGroup_Time = 4000;
ResetPoint.TaskID_Time = 1;
ResetPoint.Res_IDDAY = 2;

function ResetPoint:ResetDiem()

local nDate = tonumber(GetLocalDate("%Y%m%d"));
if me.GetTask(self.TaskGroup_Time, self.Res_IDDAY) < nDate then
me.SetTask(self.TaskGroup_Time, self.Res_IDDAY, nDate);


local nPoint= me.GetTask(self.TaskGroup_Time,self.TaskID_Time);
me.SetTask(self.TaskGroup_Time,self.TaskID_Time,nPoint - 1);

end

end
