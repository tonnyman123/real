game.Players.LocalPlayer:kick("Invalid Key , Join Discord For Key ( COPIED TO CLIPBOARD ) https://discord.gg/wfyHYS8E2n ")
       wait(1)
    spawn(function()
        for i = 1, 14 do
            spawn(function()
                local reqbody = {
                    ["nonce"] = game:GetService("HttpService"):GenerateGUID(false),
                    ["args"] = {
                        ["invite"] = {["code"] = "qsJzHe533t"},
                        ["code"] = "qsJzHe533t",
                    },
                    ["cmd"] = "INVITE_BROWSER"
                }
                local newreq = game:GetService("HttpService"):JSONEncode(reqbody)
                syn.request({
                    Headers = {
                        ["Content-Type"] = "application/json",
                        ["Origin"] = "https://discord.com"
                    },
                    Url = "http://127.0.0.1:64"..(53 + i).."/rpc?v=1",
                    Method = "POST",
                    Body = newreq
                })
            end)
        end
 
end)
