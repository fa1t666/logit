Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(100000)
	end
end)

local ekaspawn = true
player = PlayerId()
AddEventHandler("playerSpawned", function()
    if ekaspawn then
    SetPlayerControl(player, false, 0)
    ekaspawn = false
    Wait(7000)
    TriggerServerEvent("logit:logitx")
    SetPlayerControl(player, true, 0)
    ekaspawn = false
    end
end)


exports('discord', function(message, color, channel)
	TriggerServerEvent('clienttidiscordi', message, color, channel)
end)
