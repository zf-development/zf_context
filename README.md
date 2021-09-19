![Lua](https://img.shields.io/badge/lua-%232C2D72.svg?style=for-the-badge&logo=lua&logoColor=white)
![VS Code](https://img.shields.io/badge/VS%20Code-0078d7.svg?style=for-the-badge&logo=visual-studio-code&logoColor=white)
![Discord](https://img.shields.io/badge/%3CZF%3E-%237289DA.svg?style=for-the-badge&logo=discord&logoColor=white)

# ZF Context | NoPixel Inspired Context Menu
Simple and Easy to use Context Menu (Good replacement for ESX Menu Default)


# Information
I really loved the NeroHiro Context that he made so I've ended up re-creating a context menu like he had made because he unfortunately stop support it..
Hope you enjoy this "re-creation" of the nh-context with a new design that is more Luxurious version of it.

![ShowCase](https://media.discordapp.net/attachments/888447971933425694/888935190485954611/unknown.png)
![ShowCase](https://media.discordapp.net/attachments/888447971933425694/888936008358449192/unknown.png)
![ShowCase](https://media.discordapp.net/attachments/888447971933425694/888936077665120256/unknown.png)


## Installation
To Install the ZF Context Menu, you need to down it ![Here](https://github.com/zf-development/zf_context/releases).
After you've downloaded the zf_context, install it in '[resource]/[local]/zf_context'.
Don't forget to start the resource in your server.cfg with `ensure zf_context`


## Usage
This is a default menu to show you how it works.
This is only for exemple.
```
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
            params = {
                event = 'takemymoney',
                args = {
                    amount = 500
                }
            }
        }
    }
    exports['zf_context']:openMenu(myMenu)

    RegisterNetEvent('takemymoney')
    AddEventHandler('takemymoney', function(data)
        print('You have took ' .. data.amount .. '$ from me... 😭')
    end)
end, false)
```


# Support
If you find an error or have a suggestion, please feel free to help us by creating an issue on the github! [Issues](https://github.com/zf-development/zf_context/issues)