local p = game.Players.LocalPlayer
local m = p:GetMouse()
m.Button2Down:Connect(function()
    local t = nil
    for _, v in pairs(game.Players:GetPlayers()) do
        if v ~= p and v.Character and v.Character:FindFirstChild("Head") then
            t = v.Character.Head
            workspace.CurrentCamera.CFrame = CFrame.new(workspace.CurrentCamera.CFrame.Position, t.Position)
        end
    end
end)
