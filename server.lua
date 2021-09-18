AddEventHandler('onResourceStart', function(resourceName)
    if resourceName == 'zf_context' then
        PerformHttpRequest("https://raw.githubusercontent.com/zf-development/zf_versions/main/zf_context.txt", function(err, text, headers)
            Citizen.Wait(2000)
            local curVer = Config.Version
            if text ~= nil then
                if not curVer == text then
                    print '^1-----------------------------------------^0'
                    print '^1       UPDATE AVAILABLE ZF CONTEXT       ^0'
                    print '^1          GET IT ON DISCORD NOW          ^0'
                    print '^1  https://discord.com/invite/YRWF7hxNmB  ^0'
                    print '^1-----------------------------------------^0'
                end
            else
                print '^1----------------------------------------^0'
                print '^1      ERROR GETTING ONLINE VERSION      ^0'
                print '^1       IF PERSIST CONTACT ZF#0001       ^0'
                print '^1        OR BY TICKETS ON DISCORD        ^0'
                print '^1----------------------------------------^0'
            end
        end)
    end
end)