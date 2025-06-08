local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera

local originalFOV = camera.FieldOfView -- �⺻���� ���� 70
local zoomFOV = 50 -- �󸶳� Ȯ������
local zoomTime = 1.5 -- Ȯ���ϴ� �� �ɸ��� �ð�
local waitTime = 6 -- Ȯ��� ���� ���� �ð�

-- FOV�� �ε巴�� �����ϴ� �Լ�
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

-- ����
task.spawn(function()
	tweenFOV(originalFOV, zoomFOV, zoomTime) -- Ȯ��
	wait(waitTime)
	tweenFOV(zoomFOV, originalFOV, zoomTime) -- ���
end)
