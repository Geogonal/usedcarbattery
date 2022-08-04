local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
local Window = OrionLib:MakeWindow({Name = "Used Car Battery"})
local Tab = Window:MakeTab({Name = 'Tab 1', Icon = 'rbxassetid://2605986486', PremiumOnly = false})
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

Tab:AddButton({
	Name = "Button!",
	Callback = function()
      	OrionLib:MakeNotification({
            Name = "Title",
            Content = "Content",
            Time = 5
        })
    
        for i, v in pairs(getCarts()) do
            speedCart(v)
        end
        
        
        

  	end
})