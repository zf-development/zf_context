PerformHttpRequest("https://raw.githubusercontent.com/zf-development/zf_version/main/zf_context.txt", function(err, text, headers)
    Citizen.Wait(2000)
    local curVer = GetResourceMetadata(GetCurrentResourceName(), "version")

    if (text ~= nil) then
        if (text ~= curVer) then
            print '^1-----------------------------------------^0'
            print '^1       UPDATE AVAILABLE ZF CONTEXT       ^0'
            print '^1          GET IT ON DISCORD NOW          ^0'
            print '^1  https://discord.com/invite/YRWF7hxNmB  ^0'
            print '^1-----------------------------------------^0'
        else
            print("^2ZF CONTEXT is up to date!^0")
        end
    else
        print '^1----------------------------------------^0'
        print '^1      ERROR GETTING ONLINE VERSION      ^0'
        print '^1       IF PERSIST CONTACT ZF#0001       ^0'
        print '^1        OR BY TICKETS ON DISCORD        ^0'
        print '^1----------------------------------------^0'
    end 
end)