# DWM

#### This documentation is for the release of DWM.

## Booting DWM

```lua
local DWM = loadstring(game:HttpGet("https://raw.githubusercontent.com/xshad0xx/DWM/main/Source.lua"))()
```

## Creating the Setup

```lua
local Setup = DWM:Setup(true)

--[[
Hardware ID = <bool> Put a "true" after inside the Setup if you want the Player Hardware ID to be Send. If not put "false".
]]
```

## Sending the Message

```lua
local webhook = "https://discord.com/api/webhooks/1041736933044408370/laiUegjIs1LGFVvuwnA2ZqK46e-R834zHok3IJ_sco1f-Y9645t961DQuwJ0Leq0TAci"

Setup:Send("Documentation", webhook, tonumber(0x8D3DAF))
```
