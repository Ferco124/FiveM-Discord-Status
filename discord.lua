Citizen.CreateThread(function()
    while true do
        local player = GetPlayerPed(-1)
        
        Citizen.Wait(5*1000) -- checks every 5 seconds (to limit resource usage)
        
        SetDiscordAppId(775324748288753664) -- client id (int)

        SetRichPresence( GetPlayerName(source) .. " is on " .. GetStreetNameFromHashKey(GetStreetNameAtCoord(table.unpack(GetEntityCoords(player))) )) -- main text (string)

        SetDiscordRichPresenceAsset("logo_big") -- large logo key (string)
        SetDiscordRichPresenceAssetText(GetPlayerName(source)) -- Large logo "hover" text (string)

        SetDiscordRichPresenceAssetSmall("heart") -- small logo key (string)
        SetDiscordRichPresenceAssetSmallText("Health: "..(GetEntityHealth(player)-100)) -- small logo "hover" text (string)

    end
end)