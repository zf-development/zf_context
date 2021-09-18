# ZF Context | NoPixel Inspired Context Menu
Simple and Easy to use Context Menu (Good replacement for ESX Menu Default)


# Information
I really loved the NeroHiro Context that he made so I've ended up re-creating a context menu like he had made because he unfortunately stop support it..
Hope you enjoy this "re-creation" of the nh-context with a new design that is more Luxurious version of it.

![ShowCase](https://media.discordapp.net/attachments/888447971933425694/888914770584027166/unknown.png)
![ShowCase](https://media.discordapp.net/attachments/888447971933425694/888914871897444372/unknown.png?width=1202&height=676)
![ShowCase](https://media.discordapp.net/attachments/888447971933425694/888916293653233695/unknown.png)


## Installation
To Install the ZF Context Menu, you need to ![Click Here](https://github.com/zf-development/zf_context).
After you've downloaded the zf_context, install it in '[resource]/[local]/zf_context'.
Don't forget to start the resource in your server.cfg with `ensure zf_context`


## Usage
This is a default menu to show you how it works.
This is only for exemple.
```
RegisterCommand("testcontext", function(source, args, raw)
    TriggerEvent("zf_context:testMenu")
end)

RegisterNetEvent('zf_context:testMenu', function()
    TriggerEvent('zf_context:openMenu', {
        {
            id = 1,
            header = "Main Title",
            text = ""
        },
        {
            id = 2,
            header = "Sub Menu Button",
            text = "This goes to a sub menu",
            datas = {
                event = "zf_context:testMenu2",
                args = {
                    number = 1,
                    id = 2
                }
            }
        },
    })
end)
```
Or you can use the exported function
```
RegisterCommand("testcontext", function(source, args, raw)
    TriggerEvent("zf_context:testMenu")
end)

RegisterNetEvent('zf_context:testMenu', function()
    local menuArray = {
        {
            id = 1,
            header = "Main Title",
            text = ""
        },
        {
            id = 2,
            header = "Sub Menu Button",
            text = "This goes to a sub menu",
            datas = {
                event = '',
                args = {
                }
            }
        }
    }

    exports['zf_context']:openMenu(menuArray)
end)
```


# Support
If you find an error or have a suggestion, please feel free to help us by creating an issue on the github! [Issues](https://github.com/zf-development/zf_context/issues)