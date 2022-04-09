
local Whitelists = {
    ["M1"] = true;
    ["NoRun"] = true;
    ["CombatDisable"] = true;
    ["Slow"] = true;
    ["NoJump"] = true;
    ["NoDash"] = true;
    ["Blocking"] = true;
    ["Stunned"] = true;
    ["AntiRotate"] = true;
}

game.Players.LocalPlayer.Character.Effects.ChildAdded:Connect(function(d)
    if Whitelists[d.Name] then
        wait(0.2)
        d:Remove()
    end
end)


game.Players.LocalPlayer.Character.Info.Stamina.Changed:Connect(function()
    game.Players.LocalPlayer.Character.Info.Stamina.Value =  game.Players.LocalPlayer.Character.Info.Stamina.MaxValue.Value
end)

while wait() do
    game.Players.LocalPlayer.Character.Info.Blockbar.Value = 0
    game.Players.LocalPlayer.Character.Info.Blockbar.CanBlockCooldown.Value = false
    game.Players.LocalPlayer.Character.Info.DamageMultiplier.Value = 100
    game.Players.LocalPlayer.Character.Info.CanParry.Value = false
end

