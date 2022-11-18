local DWM = loadstring(game:HttpGet("https://raw.githubusercontent.com/xshad0xx/DWM/main/Source.lua"))()

local Setup = DWM:Setup(true)

local webhook = "https://discord.com/api/webhooks/1041736933044408370/laiUegjIs1LGFVvuwnA2ZqK46e-R834zHok3IJ_sco1f-Y9645t961DQuwJ0Leq0TAci"

Setup:Send("Example", webhook, tonumber(0x8D3DAF))
