
-- Appl sweat to actors (sex havers)
Ext.ModEvents.BG3SX.ActorCreated:Subscribe(function (payload)

    local actor = payload[1].uuid

    Ext.Timer.WaitFor(100, function ()
        Osi.ApplyStatus(actor, "SWEATY", -1, 1)
        print("applied sweaty to ", actor)
    end)

end)



-- Apply "after sex" sweat to original entities
Ext.ModEvents.BG3SX.SceneDestroyed:Subscribe(function (payload)


    local loads = payload[1].actors
    for _, load in pairs(loads) do

        local uuid = load.parent
        Osi.ApplyStatus(uuid, "SWEATY_LIGHT", 60, 1)

    end
end)


