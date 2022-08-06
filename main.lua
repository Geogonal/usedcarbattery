local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Used Car Battery"})
local Tab = Window:MakeTab({Name = 'Carts', Icon = 'rbxassetid://2605986486', PremiumOnly = false})
local Section = Tab:AddSection({
	Name = "Buttons"
})

function getCarts()
    local carts = {}
    for i, v in pairs(game.Workspace:GetChildren()) do
        if string.find(v.Name, 'Cart') then
            if v:FindFirstChild('forward') then
                
                table.insert(carts, v:FindFirstChild('forward').ClickDetector)
            end
        end
    end

    return carts
end

function speedCart(cd)
    for num = 1, 50 do
        fireclickdetector(cd, 10000)
    end
end

function speedMyCart()
    for i = 1, 25 do
        fireclickdetector(game:GetService('Players').LocalPlayer.Character.Humanoid.SeatPart.Parent.forward.ClickDetector, 10000)
    end
end

Tab:AddButton({
	Name = "All cart speed",
	Callback = function()

    
        for i, v in pairs(getCarts()) do
            speedCart(v)
        end
        
        
        

  	end
})

Tab:AddButton({
	Name = "Spawn carts",
	Callback = function()

        for i, v in pairs(game.Workspace:GetDescendants()) do
            if v.Name == 'TouchInterest' and v.Parent.Name == 'respawn' and v.Parent.Parent.Name ~= 'DREAMrespawner' and v.Parent.Parent.Name ~= 'superiorrespawner' then
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 0)
                wait(0.01)
                firetouchinterest(game.Players.LocalPlayer.Character.Head, v.Parent, 1)
            end
        end
        
        
        

  	end
})
Tab:AddButton({
	Name = "Speed my cart",
	Callback = function()

    
        speedMyCart()
        
        
        

  	end
})