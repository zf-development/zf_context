RegisterNUICallback('clickedButton', function(data, cb)
    SetNuiFocus(false)

    if data.isServer then
        TriggerServerEvent(data.event, data.args)
    else
        TriggerEvent(data.event, data.args)
    end
end)

RegisterNUICallback('closeMenu', function()
    SetNuiFocus(false)
end)

RegisterNetEvent('zf_context:openMenu')
AddEventHandler('zf_context:openMenu', function(data)
    openMenu(data)
end)

function openMenu(data)
    if not data then return end
    SetNuiFocus(true, true)
    SendNUIMessage({
        action = 'OPEN_MENU',
        data = data
    })
end

RegisterCommand('testcontext', function()
    local myMenu = {
        {
            id = 1,
            header = 'Header Title',
            txt = ''
        },
        {
            id = 2,
            header = 'Button',
            txt = 'Click here for help'
        }
    }
    openMenu(myMenu)
end, false)