local ISUI = Instance.new("ScreenGui")
local MainFrame = Instance.new("ImageLabel")
local ItemsTab = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local List = Instance.new("ScrollingFrame")
local UIGridLayout = Instance.new("UIGridLayout")
local ImageLabel = Instance.new("ImageLabel")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")
local TextButton = Instance.new("TextButton")
local ImageLabel_2 = Instance.new("ImageLabel")
ISUI.Name = "ISUI"
ISUI.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ISUI.DisplayOrder = 2
ISUI.ResetOnSpawn = false
MainFrame.Name = "MainFrame"
MainFrame.Parent = ISUI
MainFrame.AnchorPoint = Vector2.new(0.5, 0.5)
MainFrame.BackgroundColor3 = Color3.fromRGB(12, 12, 12)
MainFrame.BorderColor3 = Color3.fromRGB(27, 42, 53)
MainFrame.BorderSizePixel = 0
MainFrame.Position = UDim2.new(0.842726052, 0, 0.499388754, 0)
MainFrame.Size = UDim2.new(0.253479779, 0, 0.661858678, 0)
MainFrame.ImageColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.ImageTransparency = 1.000
ItemsTab.Name = "ItemsTab"
ItemsTab.Parent = MainFrame
ItemsTab.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ItemsTab.BackgroundTransparency = 1.000
ItemsTab.BorderColor3 = Color3.fromRGB(27, 42, 53)
ItemsTab.Position = UDim2.new(0.0186963379, 0, 0.0461765453, 0)
ItemsTab.Size = UDim2.new(0.961199284, 0, 0.944588125, 0)
TextLabel.Parent = ItemsTab
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 26, 255)
TextLabel.BackgroundTransparency = 1.000
TextLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
TextLabel.Position = UDim2.new(-0.00262603885, 0, 0.0498094335, 0)
TextLabel.Size = UDim2.new(1, 0, 0.0559011176, 0)
TextLabel.ZIndex = 3
TextLabel.Font = Enum.Font.Roboto
TextLabel.Text = "Click on an item to spawn it"
TextLabel.TextColor3 = Color3.fromRGB(0, 98, 255)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextWrapped = true
List.Name = "List"
List.Parent = ItemsTab
List.Active = true
List.AnchorPoint = Vector2.new(0.5, 0)
List.BackgroundColor3 = Color3.fromRGB(36, 36, 36)
List.BackgroundTransparency = 0.950
List.BorderColor3 = Color3.fromRGB(27, 42, 53)
List.Position = UDim2.new(0.498686939, 0, 0.0959089696, 0)
List.Size = UDim2.new(0.940609515, 0, 0.887845635, 0)
List.ZIndex = 2
List.ScrollBarThickness = 6
UIGridLayout.Parent = List
UIGridLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIGridLayout.CellSize = UDim2.new(0, 50, 0, 50)
ImageLabel.Parent = List
ImageLabel.AnchorPoint = Vector2.new(0.5, 0.5)
ImageLabel.BackgroundColor3 = Color3.fromRGB(0, 78, 245)
ImageLabel.BackgroundTransparency = 0.800
ImageLabel.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageLabel.Size = UDim2.new(1.29999995, 0, 1.29999995, 0)
ImageLabel.Visible = false
ImageLabel.ZIndex = 2
ImageLabel.Image = "rbxassetid://7502577911"
ImageLabel.ImageTransparency = 1.000
ImageButton.Parent = ImageLabel
ImageButton.AnchorPoint = Vector2.new(0.5, 0.5)
ImageButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageButton.BackgroundTransparency = 1.000
ImageButton.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageButton.Position = UDim2.new(0.5, 0, 0.5, 0)
ImageButton.Size = UDim2.new(0.899999976, 0, 0.899999976, 0)
ImageButton.ZIndex = 3
ImageButton.Image = "rbxassetid://116348380034701"
UICorner.CornerRadius = UDim.new(0, 20)
UICorner.Parent = ImageLabel
TextButton.Parent = MainFrame
TextButton.BackgroundColor3 = Color3.fromRGB(0, 81, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Position = UDim2.new(0.0155114857, 0, 0, 0)
TextButton.Size = UDim2.new(0.0925778672, 0, 0.044659432, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = ""
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextSize = 14.000
ImageLabel_2.Parent = ISUI
ImageLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
ImageLabel_2.BorderColor3 = Color3.fromRGB(27, 42, 53)
ImageLabel_2.Size = UDim2.new(0, 100, 0, 100)
ImageLabel_2.Visible = false
ImageLabel_2.Image = "rbxassetid://12075716476"
local function USZGE_fake_script() -- MainFrame.ItemScript 
	local script = Instance.new('LocalScript', MainFrame)

	local ItemsTab_upvr = script.Parent.ItemsTab
	
	local buikitems = {"PistolAmmo", "RifleAmmo", "Buckshot", "Wood", "Stone", "Iron", "Steel", "Prints", "Cloth", "Sulfur", "Gunpowder"}
	for _, v in pairs(game.ReplicatedStorage.ItemData:GetChildren()) do
		if  v:IsA("StringValue") and  v:FindFirstChild("ImageID") then
			local newbutton = ItemsTab_upvr.List.ImageLabel:Clone()
			newbutton.Parent = ItemsTab_upvr.List
			newbutton.Visible = true
			newbutton.ImageButton.Visible = true
			newbutton.ImageButton.Image = "rbxassetid://".. v.ImageID.Value
			newbutton.Name =  v.Name
			local playergui = script.Parent.Parent.Parent
			local loadslotmodule = require(game.Players.LocalPlayer.Character:WaitForChild("LoadSlot"))
			newbutton.ImageButton.MouseButton1Down:Connect(function() -- Line 335
				local ammount = 1
				if table.find(buikitems,  v.Name) then
					ammount = math.huge
				end
				for _, v2 in pairs(game.ReplicatedStorage.Events.PlayerAdd:InvokeServer( v.Name, ammount, 0, -1, playergui.InventoryData, playergui.HotbarData, 0)) do
					if string.match(v2, 'A') then
						loadslotmodule.loadSlot(playergui.ScreenGui.Frame.Hotbar:FindFirstChild("Slot_"..v2))
					else
						if playergui.ScreenGui.Tab.Inventory.Inventory:FindFirstChild("Slot_"..v2) then
							loadslotmodule.loadSlot(playergui.ScreenGui.Tab.Inventory.Inventory:FindFirstChild("Slot_"..v2))
						end
						if playergui.ScreenGui.Tab.Inventory.Attire:FindFirstChild("Slot_"..v2) then
							loadslotmodule.loadSlot(playergui.ScreenGui.Tab.Inventory.Attire:FindFirstChild("Slot_"..v2))
						end
					end
				end
			end)
		end
	end
end
coroutine.wrap(USZGE_fake_script)()
local function AWKGI_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(AWKGI_fake_script)()
