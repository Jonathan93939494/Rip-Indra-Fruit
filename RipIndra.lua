local player = game.Players.LocalPlayer
local gui = Instance.new("ScreenGui", player:WaitForChild("PlayerGui"))
gui.Name = "IndraExperience"

-- Fond
local frame = Instance.new("Frame", gui)
frame.Size = UDim2.new(0.4, 0, 0.4, 0)
frame.Position = UDim2.new(0.3, 0, 0.3, 0)
frame.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
frame.BorderSizePixel = 0

-- Avatar de Rip_indra
local avatar = Instance.new("ImageLabel", frame)
avatar.Size = UDim2.new(0, 100, 0, 100)
avatar.Position = UDim2.new(0, 10, 0, 10)
avatar.Image = "https://thumbnails.roblox.com/v1/users/avatar?userIds=3095250&size=720x720&format=Png&isCircular=false"  -- Avatar de rip_indra

-- Nom
local nameLabel = Instance.new("TextLabel", frame)
nameLabel.Position = UDim2.new(0, 120, 0, 10)
nameLabel.Size = UDim2.new(1, -130, 0, 40)
nameLabel.Text = "Rip_indra"
nameLabel.TextColor3 = Color3.new(1, 1, 1)
nameLabel.BackgroundTransparency = 1
nameLabel.TextScaled = true
nameLabel.Font = Enum.Font.SourceSansBold

-- Message
local message = Instance.new("TextLabel", frame)
message.Position = UDim2.new(0, 10, 0, 120)
message.Size = UDim2.new(1, -20, 0, 60)
message.Text = "Tu es sur le point de vivre l'expérience de ta vie.\nTransfert de fruits en cours..."
message.TextColor3 = Color3.new(1, 1, 1)
message.BackgroundTransparency = 1
message.TextScaled = true
message.Font = Enum.Font.SourceSans

-- Barre de chargement
local barBack = Instance.new("Frame", frame)
barBack.Size = UDim2.new(1, -20, 0, 20)
barBack.Position = UDim2.new(0, 10, 0, 200)
barBack.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
barBack.BorderSizePixel = 0

local barFill = Instance.new("Frame", barBack)
barFill.Size = UDim2.new(0, 0, 1, 0)
barFill.BackgroundColor3 = Color3.fromRGB(0, 200, 0)
barFill.BorderSizePixel = 0

-- Pourcentage texte
local percentText = Instance.new("TextLabel", barBack)
percentText.Size = UDim2.new(1, 0, 1, 0)
percentText.BackgroundTransparency = 1
percentText.TextColor3 = Color3.new(1, 1, 1)
percentText.TextScaled = true
percentText.Font = Enum.Font.SourceSansBold
percentText.Text = "0%"

-- Chargement
for i = 1, 100 do
	barFill.Size = UDim2.new(i / 100, 0, 1, 0)
	percentText.Text = tostring(i) .. "%"
	wait(0.05)
end

-- Message de bannissement
frame:ClearAllChildren()
frame.BackgroundColor3 = Color3.fromRGB(200, 0, 0)

local bannedText = Instance.new("TextLabel", frame)
bannedText.Size = UDim2.new(1, 0, 1, 0)
bannedText.Text = "Vous avez été **banni** pour utilisation de script interdit."
bannedText.TextColor3 = Color3.new(1, 1, 1)
bannedText.BackgroundTransparency = 1
bannedText.TextScaled = true
bannedText.Font = Enum.Font.SourceSansBold
