local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera

local originalFOV = camera.FieldOfView -- 기본값은 보통 70
local zoomFOV = 50 -- 얼마나 확대할지
local zoomTime = 1.5 -- 확대하는 데 걸리는 시간
local waitTime = 6 -- 확대된 상태 유지 시간

-- FOV를 부드럽게 변경하는 함수
local function tweenFOV(fromFOV, toFOV, duration)
	local elapsed = 0
	while elapsed < duration do
		local dt = RunService.RenderStepped:Wait()
		elapsed += dt
		local alpha = math.clamp(elapsed / duration, 0, 1)
		camera.FieldOfView = fromFOV + (toFOV - fromFOV) * alpha
	end
	camera.FieldOfView = toFOV
end

-- 실행
task.spawn(function()
	tweenFOV(originalFOV, zoomFOV, zoomTime) -- 확대
	wait(waitTime)
	tweenFOV(zoomFOV, originalFOV, zoomTime) -- 축소
end)
