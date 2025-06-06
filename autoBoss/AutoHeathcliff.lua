task.spawn(function()
        while _G.AutoHeathcliff == true do
            wait(0.6)
            pcall(function()
		game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-1772.07983, 2227.46191, 1560.42493, 0.998259544, 1.67380454e-09, 0.0589740612, -7.31890659e-10, 1, -1.59932654e-08, -0.0589740612, 1.59222662e-08, 0.998259544);
		             for _, x in ipairs(workspace:GetChildren()) do
                if string.find(x.Name, "ErlkingHeathcliff") then

					local args = {
	{
		x
	},
	{
		Attributes = {
			Ragdoll = false,
			Daze = false,
			ShowVisual = false,
			Effects = {
				Visual = {
					["Common/hit_punch_1"] = {}
				}
			},
			IgnoreBlock = false,
			IgnoreIframe = false,
			MultipleNpcDmg = 1,
			Stun = 1,
			Guardbreak = false,
			Knockback = {
				Duration = 0.3,
				Direction = vector.create(-0.11328146606683731, -6.295117316312826e-08, 0.9935629367828369)
			},
			Damage = 15000
		},
		Properties = {
			DebounceDuration = 0.3,
			PartOffset = CFrame.new(0, 0, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			Duration = 0.25,
			ReferencePart = x,
			Size = 3
		}
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RegisterHit"):FireServer(unpack(args))
wait(0.5)
end
end
            for _, d in ipairs(workspace:GetChildren()) do
                if string.find(d.Name, "CatherineBoss") then

					local args = {
	{
		d
	},
	{
		Attributes = {
			Ragdoll = false,
			Daze = false,
			ShowVisual = false,
			Effects = {
				Visual = {
					["Common/hit_punch_1"] = {}
				}
			},
			IgnoreBlock = false,
			IgnoreIframe = false,
			MultipleNpcDmg = 1,
			Stun = 1,
			Guardbreak = false,
			Knockback = {
				Duration = 0.3,
				Direction = vector.create(-0.11328146606683731, -6.295117316312826e-08, 0.9935629367828369)
			},
			Damage = 15000
		},
		Properties = {
			DebounceDuration = 0.3,
			PartOffset = CFrame.new(0, 0, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			Duration = 0.25,
			ReferencePart = d,
			Size = 3
		}
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RegisterHit"):FireServer(unpack(args))
wait(0.5)
end
end
            for _, c in ipairs(workspace:GetChildren()) do
                if string.find(c.Name, "ErlkingDullahan") then

					local args = {
	{
		c
	},
	{
		Attributes = {
			Ragdoll = false,
			Daze = false,
			ShowVisual = false,
			Effects = {
				Visual = {
					["Common/hit_punch_1"] = {}
				}
			},
			IgnoreBlock = false,
			IgnoreIframe = false,
			MultipleNpcDmg = 1,
			Stun = 1,
			Guardbreak = false,
			Knockback = {
				Duration = 0.3,
				Direction = vector.create(-0.11328146606683731, -6.295117316312826e-08, 0.9935629367828369)
			},
			Damage = 15000
		},
		Properties = {
			DebounceDuration = 0.3,
			PartOffset = CFrame.new(0, 0, -3, 1, 0, 0, 0, 1, 0, 0, 0, 1),
			Duration = 0.25,
			ReferencePart = c,
			Size = 3
		}
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("RegisterHit"):FireServer(unpack(args))
wait(0.5)
end
end
		end)
    end
end)
  
