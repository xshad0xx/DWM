--[[

 /$$$$$$$  /$$      /$$ /$$      /$$                                                                                                                           
| $$__  $$| $$  /$ | $$| $$$    /$$$                                                                                                                           
| $$  \ $$| $$ /$$$| $$| $$$$  /$$$$                                                                                                                           
| $$  | $$| $$/$$ $$ $$| $$ $$/$$ $$                                                                                                                           
| $$  | $$| $$$$_  $$$$| $$  $$$| $$                                                                                                                           
| $$  | $$| $$$/ \  $$$| $$\  $ | $$                                                                                                                           
| $$$$$$$/| $$/   \  $$| $$ \/  | $$                                                                                                                           
|_______/ |__/     \__/|__/     |__/                                                                                                                           
                                                                                                                                                               
                                                                                                                                                               
                                                                                                                                                               
 /$$      /$$                 /$$                 /$$$$$$$                                                                                                     
| $$$    /$$$                | $$                | $$__  $$                                                                                                    
| $$$$  /$$$$  /$$$$$$   /$$$$$$$  /$$$$$$       | $$  \ $$ /$$   /$$                                                                                          
| $$ $$/$$ $$ |____  $$ /$$__  $$ /$$__  $$      | $$$$$$$ | $$  | $$                                                                                          
| $$  $$$| $$  /$$$$$$$| $$  | $$| $$$$$$$$      | $$__  $$| $$  | $$                                                                                          
| $$\  $ | $$ /$$__  $$| $$  | $$| $$_____/      | $$  \ $$| $$  | $$                                                                                          
| $$ \/  | $$|  $$$$$$$|  $$$$$$$|  $$$$$$$      | $$$$$$$/|  $$$$$$$                                                                                          
|__/     |__/ \_______/ \_______/ \_______/      |_______/  \____  $$                                                                                          
                                                            /$$  | $$                                                                                          
                                                           |  $$$$$$/                                                                                          
                                                            \______/                                                                                           
 /$$$$$$$$                                 /$$     /$$           /$$      /$$                                 /$$ /$$    /$$$$$$   /$$$$$$   /$$$$$$  /$$$$$$$ 
| $$_____/                                | $$    |__/          | $$$    /$$$                                / $$/ $$   /$$__  $$ /$$__  $$ /$$__  $$| $$____/ 
| $$        /$$$$$$  /$$   /$$  /$$$$$$  /$$$$$$   /$$  /$$$$$$$| $$$$  /$$$$  /$$$$$$   /$$$$$$  /$$$$$$$  /$$$$$$$$$$| $$  \ $$|__/  \ $$|__/  \ $$| $$      
| $$$$$    /$$__  $$| $$  | $$ /$$__  $$|_  $$_/  | $$ /$$_____/| $$ $$/$$ $$ /$$__  $$ /$$__  $$| $$__  $$|   $$  $$_/|  $$$$$$/  /$$$$$$/   /$$$$$/| $$$$$$$ 
| $$__/   | $$  \ $$| $$  | $$| $$  \ $$  | $$    | $$| $$      | $$  $$$| $$| $$  \ $$| $$  \ $$| $$  \ $$ /$$$$$$$$$$ >$$__  $$ /$$____/   |___  $$|_____  $$
| $$      | $$  | $$| $$  | $$| $$  | $$  | $$ /$$| $$| $$      | $$\  $ | $$| $$  | $$| $$  | $$| $$  | $$|_  $$  $$_/| $$  \ $$| $$       /$$  \ $$ /$$  \ $$
| $$$$$$$$|  $$$$$$$|  $$$$$$$| $$$$$$$/  |  $$$$/| $$|  $$$$$$$| $$ \/  | $$|  $$$$$$/|  $$$$$$/| $$  | $$  | $$| $$  |  $$$$$$/| $$$$$$$$|  $$$$$$/|  $$$$$$/
|________/ \____  $$ \____  $$| $$____/    \___/  |__/ \_______/|__/     |__/ \______/  \______/ |__/  |__/  |__/|__/   \______/ |________/ \______/  \______/ 
           /$$  \ $$ /$$  | $$| $$                                                                                                                             
          |  $$$$$$/|  $$$$$$/| $$                                                                                                                             
           \______/  \______/ |__/                                                                                                                             

]]

if syn.request then
    local library = {}

    function library:Setup(HardwareID)
        local dwm = {}

        function dwm:Send(Title, Webhook, Color)
            if Color ~= nil then
                if HardwareID then
                    local responce = syn.request(
                        {
                            Url = Webhook,
                            Method = 'POST',
                            Headers = {
                                ['Content-Type'] = 'application/json'
                            },
                            Body = game:GetService("HttpService"):JSONEncode({
                                ["content"] = "",
                                ["embeds"] = {{
                                    ["title"] = "**"..Title.." has been executed!**",
                                    ["description"] = "https://github.com",
                                    ["type"] = "rich",
                                    ["color"] = Color,
                                    ["fields"] = {
                                        {
                                            ["name"] = "Display Name:",
                                            ["value"] = game.Players.LocalPlayer.DisplayName,
                                            ["inline"] = true
                                        },
                                        {
                                            ["name"] = "User Name:",
                                            ["value"] = game.Players.LocalPlayer.Name,
                                            ["inline"] = true
                                        },
                                        {
                                            ["name"] = "Hardware ID:",
                                            ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                                            ["inline"] = true
                                        }
                                    }
                                }}
                            })
                        }
                    )
                else
                    local responce = syn.request(
                        {
                            Url = Webhook,
                            Method = 'POST',
                            Headers = {
                                ['Content-Type'] = 'application/json'
                            },
                            Body = game:GetService("HttpService"):JSONEncode({
                                ["content"] = "",
                                ["embeds"] = {{
                                    ["title"] = "**"..Title.." has been executed!**",
                                    ["description"] = "https://github.com",
                                    ["type"] = "rich",
                                    ["color"] = Color,
                                    ["fields"] = {
                                        {
                                            ["name"] = "Display Name:",
                                            ["value"] = game.Players.LocalPlayer.DisplayName,
                                            ["inline"] = true
                                        },
                                        {
                                            ["name"] = "User Name:",
                                            ["value"] = game.Players.LocalPlayer.Name,
                                            ["inline"] = true
                                        }
                                    }
                                }}
                            })
                        }
                    )
                end
            else
                if HardwareID then
                    local responce = syn.request(
                        {
                            Url = Webhook,
                            Method = 'POST',
                            Headers = {
                                ['Content-Type'] = 'application/json'
                            },
                            Body = game:GetService("HttpService"):JSONEncode({
                                ["content"] = "",
                                ["embeds"] = {{
                                    ["title"] = "**"..Title.." has been executed!**",
                                    ["description"] = "https://github.com",
                                    ["type"] = "rich",
                                    ["color"] = tonumber(0xffffff),
                                    ["fields"] = {
                                        {
                                            ["name"] = "Display Name:",
                                            ["value"] = game.Players.LocalPlayer.DisplayName,
                                            ["inline"] = true
                                        },
                                        {
                                            ["name"] = "User Name:",
                                            ["value"] = game.Players.LocalPlayer.Name,
                                            ["inline"] = true
                                        },
                                        {
                                            ["name"] = "Hardware ID:",
                                            ["value"] = game:GetService("RbxAnalyticsService"):GetClientId(),
                                            ["inline"] = true
                                        }
                                    }
                                }}
                            })
                        }
                    )
                else
                    local responce = syn.request(
                        {
                            Url = Webhook,
                            Method = 'POST',
                            Headers = {
                                ['Content-Type'] = 'application/json'
                            },
                            Body = game:GetService("HttpService"):JSONEncode({
                                ["content"] = "",
                                ["embeds"] = {{
                                    ["title"] = "**"..Title.." has been executed!**",
                                    ["description"] = "https://github.com",
                                    ["type"] = "rich",
                                    ["color"] = tonumber(0xffffff),
                                    ["fields"] = {
                                        {
                                            ["name"] = "Display Name:",
                                            ["value"] = game.Players.LocalPlayer.DisplayName,
                                            ["inline"] = true
                                        },
                                        {
                                            ["name"] = "User Name:",
                                            ["value"] = game.Players.LocalPlayer.Name,
                                            ["inline"] = true
                                        }
                                    }
                                }}
                            })
                        }
                    )
                end
            end
        end

        return dwm
    end

    return library
else
    game.StarterGui:SetCore("SendMessage", {
        Title = "DWM",
        Text = "Your Executor Doesn't Have The Function syn.request!",
        Duration = 10,
        Button1 = "OK"
    })
end
