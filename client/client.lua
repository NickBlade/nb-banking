

-- Blips
Citizen.CreateThread(function()
    playerPed = PlayerPedId()
    playerCoords = GetEntityCoords(playerPed)

    if Config.EnableBlips then
        blips()
    end

end)

function blips()
    for k, v in pairs(Config["banks"]) do
        local blip = AddBlipForCoord(v.x, v.y, v.z)
        SetBlipSprite(blip, 207)
        SetBlipScale(blip, 0.7)
        SetBlipColour(blip, 2)
        SetBlipDisplay(blip, 2)
        SetBlipAsShortRange(blip, true)

        BeginTextCommandSetBlipName("STRING")
        AddTextComponentString(tostring(v.name))
        EndTextCommandSetBlipName(blip)
    end
end