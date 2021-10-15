local answer = nil

RegisterNUICallback("OnClick", function(data, cb)
    SetNuiFocus(false, false)
    answer:resolve(data)
    answer = nil
end)

RegisterNUICallback("CloseContext", function()
    SetNuiFocus(false, false)
    answer:resolve(nil)
    answer = nil
end)

function OpenContext(data, cb)
    if answer or not data then return end
    answer = promise.new()
    SetNuiFocus(true, true)
    SendNUIMessage({type = "open_context", data = data})
    if cb then
        cb(Citizen.Await(answer))
    else
        return Citizen.Await(answer)
    end
end
