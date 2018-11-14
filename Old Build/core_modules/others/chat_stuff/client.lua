--[[
    Script created by: Frazzle

    Contact: frazzle9999@gmail.com

    Note: this script is licensed under "No License", you are allowed to:

    Use and Edit the Script.

    you are not allowed to:

    Copy, re-release, re-distribute it without my written permission.
--]]
RegisterNetEvent('prox_chatMessage')
AddEventHandler('prox_chatMessage', function(id, name, message)
	if PlayerId() == GetPlayerFromServerId(id) then
		TriggerEvent('chatMessage', "^0-", {255, 0, 0}, "^5" .. name .."  ".."^3  " .. message )
	elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(PlayerId())), GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(id))), true) < 50.00 then
		TriggerEvent('chatMessage', "^0-", {255, 0, 0}, "^5" .. name .."  ".."^3  " .. message )
	end
end)

RegisterNetEvent('prox_chatMessageLOOC')
AddEventHandler('prox_chatMessageLOOC', function(id, name, message)
    if PlayerId() == GetPlayerFromServerId(id) then
        TriggerEvent('chatMessage', "^*[Local OOC] ^r"..GetPlayerName(GetPlayerFromServerId(id)), {193, 193, 193}, message )
    elseif GetDistanceBetweenCoords(GetEntityCoords(GetPlayerPed(PlayerId())), GetEntityCoords(GetPlayerPed(GetPlayerFromServerId(id))), true) < 50.00 then
        TriggerEvent('chatMessage', "^*[Local OOC] ^r"..GetPlayerName(GetPlayerFromServerId(id)), {193, 193, 193}, message )
    end
end)

RegisterNetEvent("killfeed")
AddEventHandler("killfeed", function(msg)
    TriggerServerEvent("killfeed", msg)
end)

RegisterNetEvent("core:ready")
AddEventHandler("core:ready", function(user, power, group)
    TriggerEvent("chat:addTemplate", "tweet", "<img src='data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9Im5vIj8+Cjxz%0D%0AdmcKICB2aWV3Ym94PSIwIDAgMjAwMCAxNjI1LjM2IgogIHdpZHRoPSIyMDAwIgogIGhlaWdodD0i%0D%0AMTYyNS4zNiIKICB2ZXJzaW9uPSIxLjEiCiAgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAv%0D%0Ac3ZnIj4KICA8cGF0aAogICAgZD0ibSAxOTk5Ljk5OTksMTkyLjQgYyAtNzMuNTgsMzIuNjQgLTE1%0D%0AMi42Nyw1NC42OSAtMjM1LjY2LDY0LjYxIDg0LjcsLTUwLjc4IDE0OS43NywtMTMxLjE5IDE4MC40%0D%0AMSwtMjI3LjAxIC03OS4yOSw0Ny4wMyAtMTY3LjEsODEuMTcgLTI2MC41Nyw5OS41NyBDIDE2MDku%0D%0AMzM5OSw0OS44MiAxNTAyLjY5OTksMCAxMzg0LjY3OTksMCBjIC0yMjYuNiwwIC00MTAuMzI4LDE4%0D%0AMy43MSAtNDEwLjMyOCw0MTAuMzEgMCwzMi4xNiAzLjYyOCw2My40OCAxMC42MjUsOTMuNTEgLTM0%0D%0AMS4wMTYsLTE3LjExIC02NDMuMzY4LC0xODAuNDcgLTg0NS43MzksLTQyOC43MiAtMzUuMzI0LDYw%0D%0ALjYgLTU1LjU1ODMsMTMxLjA5IC01NS41NTgzLDIwNi4yOSAwLDE0Mi4zNiA3Mi40MzczLDI2Ny45%0D%0ANSAxODIuNTQzMywzNDEuNTMgLTY3LjI2MiwtMi4xMyAtMTMwLjUzNSwtMjAuNTkgLTE4NS44NTE5%0D%0ALC01MS4zMiAtMC4wMzksMS43MSAtMC4wMzksMy40MiAtMC4wMzksNS4xNiAwLDE5OC44MDMgMTQx%0D%0ALjQ0MSwzNjQuNjM1IDMyOS4xNDUsNDAyLjM0MiAtMzQuNDI2LDkuMzc1IC03MC42NzYsMTQuMzk1%0D%0AIC0xMDguMDk4LDE0LjM5NSAtMjYuNDQxLDAgLTUyLjE0NSwtMi41NzggLTc3LjIwMywtNy4zNjQg%0D%0ANTIuMjE1LDE2My4wMDggMjAzLjc1LDI4MS42NDkgMzgzLjMwNCwyODQuOTQ2IC0xNDAuNDI5LDEx%0D%0AMC4wNjIgLTMxNy4zNTEsMTc1LjY2IC01MDkuNTk3MiwxNzUuNjYgLTMzLjEyMTEsMCAtNjUuNzg1%0D%0AMSwtMS45NDkgLTk3Ljg4MjgsLTUuNzM4IDE4MS41ODYsMTE2LjQxNzYgMzk3LjI3LDE4NC4zNTkg%0D%0ANjI4Ljk4OCwxODQuMzU5IDc1NC43MzIsMCAxMTY3LjQ2MiwtNjI1LjIzOCAxMTY3LjQ2MiwtMTE2%0D%0ANy40NyAwLC0xNy43OSAtMC40MSwtMzUuNDggLTEuMiwtNTMuMDggODAuMTc5OSwtNTcuODYgMTQ5%0D%0ALjczOTksLTEzMC4xMiAyMDQuNzQ5OSwtMjEyLjQxIgogICAgc3R5bGU9ImZpbGw6IzAwYWNlZCIv%0D%0APgo8L3N2Zz4K' height='16'> <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "rivalry", "<img src = \"data:image/png;base64,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\" height=\"16\"/> <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "user", "<img src=\"data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDQzOC41MjkgNDM4LjUyOSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDM4LjUyOSA0MzguNTI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTIxOS4yNjUsMjE5LjI2N2MzMC4yNzEsMCw1Ni4xMDgtMTAuNzEsNzcuNTE4LTMyLjEyMWMyMS40MTItMjEuNDExLDMyLjEyLTQ3LjI0OCwzMi4xMi03Ny41MTUgICAgYzAtMzAuMjYyLTEwLjcwOC01Ni4xLTMyLjEyLTc3LjUxNkMyNzUuMzY2LDEwLjcwNSwyNDkuNTI4LDAsMjE5LjI2NSwwUzE2My4xNiwxMC43MDUsMTQxLjc1LDMyLjExNSAgICBjLTIxLjQxNCwyMS40MTYtMzIuMTIxLDQ3LjI1My0zMi4xMjEsNzcuNTE2YzAsMzAuMjY3LDEwLjcwNyw1Ni4xMDQsMzIuMTIxLDc3LjUxNSAgICBDMTYzLjE2NiwyMDguNTU3LDE4OS4wMDEsMjE5LjI2NywyMTkuMjY1LDIxOS4yNjd6IiBmaWxsPSIjNzg3NTcxIi8+CgkJPHBhdGggZD0iTTQxOS4yNTgsMzM1LjAzNmMtMC42NjgtOS42MDktMi4wMDItMTkuOTg1LTMuOTk3LTMxLjEyMWMtMS45OTktMTEuMTM2LTQuNTI0LTIxLjQ1Ny03LjU3LTMwLjk3OCAgICBjLTMuMDQ2LTkuNTE0LTcuMTM5LTE4Ljc5NC0xMi4yNzgtMjcuODM2Yy01LjEzNy05LjA0MS0xMS4wMzctMTYuNzQ4LTE3LjcwMy0yMy4xMjdjLTYuNjY2LTYuMzc3LTE0LjgwMS0xMS40NjUtMjQuNDA2LTE1LjI3MSAgICBjLTkuNjE3LTMuODA1LTIwLjIyOS01LjcxMS0zMS44NC01LjcxMWMtMS43MTEsMC01LjcwOSwyLjA0Ni0xMS45OTEsNi4xMzljLTYuMjc2LDQuMDkzLTEzLjM2Nyw4LjY2Mi0yMS4yNjYsMTMuNzA4ICAgIGMtNy44OTgsNS4wMzctMTguMTgyLDkuNjA5LTMwLjgzNCwxMy42OTVjLTEyLjY1OCw0LjA5My0yNS4zNjEsNi4xNC0zOC4xMTgsNi4xNGMtMTIuNzUyLDAtMjUuNDU2LTIuMDQ3LTM4LjExMi02LjE0ICAgIGMtMTIuNjU1LTQuMDg2LTIyLjkzNi04LjY1OC0zMC44MzUtMTMuNjk1Yy03Ljg5OC01LjA0Ni0xNC45ODctOS42MTQtMjEuMjY3LTEzLjcwOGMtNi4yODMtNC4wOTMtMTAuMjc4LTYuMTM5LTExLjk5MS02LjEzOSAgICBjLTExLjYxLDAtMjIuMjIyLDEuOTA2LTMxLjgzMyw1LjcxMWMtOS42MTMsMy44MDYtMTcuNzQ5LDguODk4LTI0LjQxMiwxNS4yNzFjLTYuNjYxLDYuMzc5LTEyLjU2MiwxNC4wODYtMTcuNjk5LDIzLjEyNyAgICBjLTUuMTM3LDkuMDQyLTkuMjI5LDE4LjMyNi0xMi4yNzUsMjcuODM2Yy0zLjA0NSw5LjUyMS01LjU2OCwxOS44NDItNy41NjYsMzAuOTc4Yy0yLDExLjEzNi0zLjMzMiwyMS41MDUtMy45OTksMzEuMTIxICAgIGMtMC42NjYsOS42MTYtMC45OTgsMTkuNDY2LTAuOTk4LDI5LjU1NGMwLDIyLjgzNiw2Ljk0OSw0MC44NzUsMjAuODQyLDU0LjEwNGMxMy44OTYsMTMuMjI0LDMyLjM2LDE5LjgzNSw1NS4zOSwxOS44MzVoMjQ5LjUzMyAgICBjMjMuMDI4LDAsNDEuNDktNi42MTEsNTUuMzg4LTE5LjgzNWMxMy45MDEtMTMuMjI5LDIwLjg0NS0zMS4yNjUsMjAuODQ1LTU0LjEwNEM0MjAuMjY0LDM1NC41MDIsNDE5LjkzMiwzNDQuNjUyLDQxOS4yNTgsMzM1LjAzNiAgICB6IiBmaWxsPSIjNzg3NTcxIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==\" height=\"16\"/>  <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "mod", "<img src=\"data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDQzOC41MjkgNDM4LjUyOSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDM4LjUyOSA0MzguNTI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTIxOS4yNjUsMjE5LjI2N2MzMC4yNzEsMCw1Ni4xMDgtMTAuNzEsNzcuNTE4LTMyLjEyMWMyMS40MTItMjEuNDExLDMyLjEyLTQ3LjI0OCwzMi4xMi03Ny41MTUgICAgYzAtMzAuMjYyLTEwLjcwOC01Ni4xLTMyLjEyLTc3LjUxNkMyNzUuMzY2LDEwLjcwNSwyNDkuNTI4LDAsMjE5LjI2NSwwUzE2My4xNiwxMC43MDUsMTQxLjc1LDMyLjExNSAgICBjLTIxLjQxNCwyMS40MTYtMzIuMTIxLDQ3LjI1My0zMi4xMjEsNzcuNTE2YzAsMzAuMjY3LDEwLjcwNyw1Ni4xMDQsMzIuMTIxLDc3LjUxNSAgICBDMTYzLjE2NiwyMDguNTU3LDE4OS4wMDEsMjE5LjI2NywyMTkuMjY1LDIxOS4yNjd6IiBmaWxsPSIjNzg3NTcxIi8+CgkJPHBhdGggZD0iTTQxOS4yNTgsMzM1LjAzNmMtMC42NjgtOS42MDktMi4wMDItMTkuOTg1LTMuOTk3LTMxLjEyMWMtMS45OTktMTEuMTM2LTQuNTI0LTIxLjQ1Ny03LjU3LTMwLjk3OCAgICBjLTMuMDQ2LTkuNTE0LTcuMTM5LTE4Ljc5NC0xMi4yNzgtMjcuODM2Yy01LjEzNy05LjA0MS0xMS4wMzctMTYuNzQ4LTE3LjcwMy0yMy4xMjdjLTYuNjY2LTYuMzc3LTE0LjgwMS0xMS40NjUtMjQuNDA2LTE1LjI3MSAgICBjLTkuNjE3LTMuODA1LTIwLjIyOS01LjcxMS0zMS44NC01LjcxMWMtMS43MTEsMC01LjcwOSwyLjA0Ni0xMS45OTEsNi4xMzljLTYuMjc2LDQuMDkzLTEzLjM2Nyw4LjY2Mi0yMS4yNjYsMTMuNzA4ICAgIGMtNy44OTgsNS4wMzctMTguMTgyLDkuNjA5LTMwLjgzNCwxMy42OTVjLTEyLjY1OCw0LjA5My0yNS4zNjEsNi4xNC0zOC4xMTgsNi4xNGMtMTIuNzUyLDAtMjUuNDU2LTIuMDQ3LTM4LjExMi02LjE0ICAgIGMtMTIuNjU1LTQuMDg2LTIyLjkzNi04LjY1OC0zMC44MzUtMTMuNjk1Yy03Ljg5OC01LjA0Ni0xNC45ODctOS42MTQtMjEuMjY3LTEzLjcwOGMtNi4yODMtNC4wOTMtMTAuMjc4LTYuMTM5LTExLjk5MS02LjEzOSAgICBjLTExLjYxLDAtMjIuMjIyLDEuOTA2LTMxLjgzMyw1LjcxMWMtOS42MTMsMy44MDYtMTcuNzQ5LDguODk4LTI0LjQxMiwxNS4yNzFjLTYuNjYxLDYuMzc5LTEyLjU2MiwxNC4wODYtMTcuNjk5LDIzLjEyNyAgICBjLTUuMTM3LDkuMDQyLTkuMjI5LDE4LjMyNi0xMi4yNzUsMjcuODM2Yy0zLjA0NSw5LjUyMS01LjU2OCwxOS44NDItNy41NjYsMzAuOTc4Yy0yLDExLjEzNi0zLjMzMiwyMS41MDUtMy45OTksMzEuMTIxICAgIGMtMC42NjYsOS42MTYtMC45OTgsMTkuNDY2LTAuOTk4LDI5LjU1NGMwLDIyLjgzNiw2Ljk0OSw0MC44NzUsMjAuODQyLDU0LjEwNGMxMy44OTYsMTMuMjI0LDMyLjM2LDE5LjgzNSw1NS4zOSwxOS44MzVoMjQ5LjUzMyAgICBjMjMuMDI4LDAsNDEuNDktNi42MTEsNTUuMzg4LTE5LjgzNWMxMy45MDEtMTMuMjI5LDIwLjg0NS0zMS4yNjUsMjAuODQ1LTU0LjEwNEM0MjAuMjY0LDM1NC41MDIsNDE5LjkzMiwzNDQuNjUyLDQxOS4yNTgsMzM1LjAzNiAgICB6IiBmaWxsPSIjNzg3NTcxIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==\" height=\"16\"/>  <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "staff", "<img src=\"data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDQzOC41MjkgNDM4LjUyOSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDM4LjUyOSA0MzguNTI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTIxOS4yNjUsMjE5LjI2N2MzMC4yNzEsMCw1Ni4xMDgtMTAuNzEsNzcuNTE4LTMyLjEyMWMyMS40MTItMjEuNDExLDMyLjEyLTQ3LjI0OCwzMi4xMi03Ny41MTUgICAgYzAtMzAuMjYyLTEwLjcwOC01Ni4xLTMyLjEyLTc3LjUxNkMyNzUuMzY2LDEwLjcwNSwyNDkuNTI4LDAsMjE5LjI2NSwwUzE2My4xNiwxMC43MDUsMTQxLjc1LDMyLjExNSAgICBjLTIxLjQxNCwyMS40MTYtMzIuMTIxLDQ3LjI1My0zMi4xMjEsNzcuNTE2YzAsMzAuMjY3LDEwLjcwNyw1Ni4xMDQsMzIuMTIxLDc3LjUxNSAgICBDMTYzLjE2NiwyMDguNTU3LDE4OS4wMDEsMjE5LjI2NywyMTkuMjY1LDIxOS4yNjd6IiBmaWxsPSIjZTkxZTYzIi8+CgkJPHBhdGggZD0iTTQxOS4yNTgsMzM1LjAzNmMtMC42NjgtOS42MDktMi4wMDItMTkuOTg1LTMuOTk3LTMxLjEyMWMtMS45OTktMTEuMTM2LTQuNTI0LTIxLjQ1Ny03LjU3LTMwLjk3OCAgICBjLTMuMDQ2LTkuNTE0LTcuMTM5LTE4Ljc5NC0xMi4yNzgtMjcuODM2Yy01LjEzNy05LjA0MS0xMS4wMzctMTYuNzQ4LTE3LjcwMy0yMy4xMjdjLTYuNjY2LTYuMzc3LTE0LjgwMS0xMS40NjUtMjQuNDA2LTE1LjI3MSAgICBjLTkuNjE3LTMuODA1LTIwLjIyOS01LjcxMS0zMS44NC01LjcxMWMtMS43MTEsMC01LjcwOSwyLjA0Ni0xMS45OTEsNi4xMzljLTYuMjc2LDQuMDkzLTEzLjM2Nyw4LjY2Mi0yMS4yNjYsMTMuNzA4ICAgIGMtNy44OTgsNS4wMzctMTguMTgyLDkuNjA5LTMwLjgzNCwxMy42OTVjLTEyLjY1OCw0LjA5My0yNS4zNjEsNi4xNC0zOC4xMTgsNi4xNGMtMTIuNzUyLDAtMjUuNDU2LTIuMDQ3LTM4LjExMi02LjE0ICAgIGMtMTIuNjU1LTQuMDg2LTIyLjkzNi04LjY1OC0zMC44MzUtMTMuNjk1Yy03Ljg5OC01LjA0Ni0xNC45ODctOS42MTQtMjEuMjY3LTEzLjcwOGMtNi4yODMtNC4wOTMtMTAuMjc4LTYuMTM5LTExLjk5MS02LjEzOSAgICBjLTExLjYxLDAtMjIuMjIyLDEuOTA2LTMxLjgzMyw1LjcxMWMtOS42MTMsMy44MDYtMTcuNzQ5LDguODk4LTI0LjQxMiwxNS4yNzFjLTYuNjYxLDYuMzc5LTEyLjU2MiwxNC4wODYtMTcuNjk5LDIzLjEyNyAgICBjLTUuMTM3LDkuMDQyLTkuMjI5LDE4LjMyNi0xMi4yNzUsMjcuODM2Yy0zLjA0NSw5LjUyMS01LjU2OCwxOS44NDItNy41NjYsMzAuOTc4Yy0yLDExLjEzNi0zLjMzMiwyMS41MDUtMy45OTksMzEuMTIxICAgIGMtMC42NjYsOS42MTYtMC45OTgsMTkuNDY2LTAuOTk4LDI5LjU1NGMwLDIyLjgzNiw2Ljk0OSw0MC44NzUsMjAuODQyLDU0LjEwNGMxMy44OTYsMTMuMjI0LDMyLjM2LDE5LjgzNSw1NS4zOSwxOS44MzVoMjQ5LjUzMyAgICBjMjMuMDI4LDAsNDEuNDktNi42MTEsNTUuMzg4LTE5LjgzNWMxMy45MDEtMTMuMjI5LDIwLjg0NS0zMS4yNjUsMjAuODQ1LTU0LjEwNEM0MjAuMjY0LDM1NC41MDIsNDE5LjkzMiwzNDQuNjUyLDQxOS4yNTgsMzM1LjAzNiAgICB6IiBmaWxsPSIjZTkxZTYzIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==\" height=\"16\" />  <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "owner", "<img src=\"data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDUyMi40NjggNTIyLjQ2OSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNTIyLjQ2OCA1MjIuNDY5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTMyNS43NjIsNzAuNTEzbC0xNy43MDYtNC44NTRjLTIuMjc5LTAuNzYtNC41MjQtMC41MjEtNi43MDcsMC43MTVjLTIuMTksMS4yMzctMy42NjksMy4wOTQtNC40MjksNS41NjhMMTkwLjQyNiw0NDAuNTMgICAgYy0wLjc2LDIuNDc1LTAuNTIyLDQuODA5LDAuNzE1LDYuOTk1YzEuMjM3LDIuMTksMy4wOSwzLjY2NSw1LjU2OCw0LjQyNWwxNy43MDEsNC44NTZjMi4yODQsMC43NjYsNC41MjEsMC41MjYsNi43MS0wLjcxMiAgICBjMi4xOS0xLjI0MywzLjY2Ni0zLjA5NCw0LjQyNS01LjU2NEwzMzIuMDQyLDgxLjkzNmMwLjc1OS0yLjQ3NCwwLjUyMy00LjgwOC0wLjcxNi02Ljk5OSAgICBDMzMwLjA4OCw3Mi43NDcsMzI4LjIzNyw3MS4yNzIsMzI1Ljc2Miw3MC41MTN6IiBmaWxsPSIjZmYwMDAwIi8+CgkJPHBhdGggZD0iTTE2Ni4xNjcsMTQyLjQ2NWMwLTIuNDc0LTAuOTUzLTQuNjY1LTIuODU2LTYuNTY3bC0xNC4yNzctMTQuMjc2Yy0xLjkwMy0xLjkwMy00LjA5My0yLjg1Ny02LjU2Ny0yLjg1NyAgICBzLTQuNjY1LDAuOTU1LTYuNTY3LDIuODU3TDIuODU2LDI1NC42NjZDMC45NSwyNTYuNTY5LDAsMjU4Ljc1OSwwLDI2MS4yMzNjMCwyLjQ3NCwwLjk1Myw0LjY2NCwyLjg1Niw2LjU2NmwxMzMuMDQzLDEzMy4wNDQgICAgYzEuOTAyLDEuOTA2LDQuMDg5LDIuODU0LDYuNTY3LDIuODU0czQuNjY1LTAuOTUxLDYuNTY3LTIuODU0bDE0LjI3Ny0xNC4yNjhjMS45MDMtMS45MDIsMi44NTYtNC4wOTMsMi44NTYtNi41NyAgICBjMC0yLjQ3MS0wLjk1My00LjY2MS0yLjg1Ni02LjU2M0w1MS4xMDcsMjYxLjIzM2wxMTIuMjA0LTExMi4yMDFDMTY1LjIxNywxNDcuMTMsMTY2LjE2NywxNDQuOTM5LDE2Ni4xNjcsMTQyLjQ2NXoiIGZpbGw9IiNmZjAwMDAiLz4KCQk8cGF0aCBkPSJNNTE5LjYxNCwyNTQuNjYzTDM4Ni41NjcsMTIxLjYxOWMtMS45MDItMS45MDItNC4wOTMtMi44NTctNi41NjMtMi44NTdjLTIuNDc4LDAtNC42NjEsMC45NTUtNi41NywyLjg1N2wtMTQuMjcxLDE0LjI3NSAgICBjLTEuOTAyLDEuOTAzLTIuODUxLDQuMDktMi44NTEsNi41NjdzMC45NDgsNC42NjUsMi44NTEsNi41NjdsMTEyLjIwNiwxMTIuMjA0TDM1OS4xNjMsMzczLjQ0MiAgICBjLTEuOTAyLDEuOTAyLTIuODUxLDQuMDkzLTIuODUxLDYuNTYzYzAsMi40NzgsMC45NDgsNC42NjgsMi44NTEsNi41N2wxNC4yNzEsMTQuMjY4YzEuOTA5LDEuOTA2LDQuMDkzLDIuODU0LDYuNTcsMi44NTQgICAgYzIuNDcxLDAsNC42NjEtMC45NTEsNi41NjMtMi44NTRMNTE5LjYxNCwyNjcuOGMxLjkwMy0xLjkwMiwyLjg1NC00LjA5NiwyLjg1NC02LjU3ICAgIEM1MjIuNDY4LDI1OC43NTUsNTIxLjUxNywyNTYuNTY1LDUxOS42MTQsMjU0LjY2M3oiIGZpbGw9IiNmZjAwMDAiLz4KCTwvZz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8Zz4KPC9nPgo8L3N2Zz4K\" height=\"16\" />  <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "admin", "<img src=\"data:image/svg+xml;utf8;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iaXNvLTg4NTktMSI/Pgo8IS0tIEdlbmVyYXRvcjogQWRvYmUgSWxsdXN0cmF0b3IgMTYuMC4wLCBTVkcgRXhwb3J0IFBsdWctSW4gLiBTVkcgVmVyc2lvbjogNi4wMCBCdWlsZCAwKSAgLS0+CjwhRE9DVFlQRSBzdmcgUFVCTElDICItLy9XM0MvL0RURCBTVkcgMS4xLy9FTiIgImh0dHA6Ly93d3cudzMub3JnL0dyYXBoaWNzL1NWRy8xLjEvRFREL3N2ZzExLmR0ZCI+CjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB4bWxuczp4bGluaz0iaHR0cDovL3d3dy53My5vcmcvMTk5OS94bGluayIgdmVyc2lvbj0iMS4xIiBpZD0iQ2FwYV8xIiB4PSIwcHgiIHk9IjBweCIgd2lkdGg9IjE2cHgiIGhlaWdodD0iMTZweCIgdmlld0JveD0iMCAwIDQzOC41MjkgNDM4LjUyOSIgc3R5bGU9ImVuYWJsZS1iYWNrZ3JvdW5kOm5ldyAwIDAgNDM4LjUyOSA0MzguNTI5OyIgeG1sOnNwYWNlPSJwcmVzZXJ2ZSI+CjxnPgoJPGc+CgkJPHBhdGggZD0iTTIxOS4yNjUsMjE5LjI2N2MzMC4yNzEsMCw1Ni4xMDgtMTAuNzEsNzcuNTE4LTMyLjEyMWMyMS40MTItMjEuNDExLDMyLjEyLTQ3LjI0OCwzMi4xMi03Ny41MTUgICAgYzAtMzAuMjYyLTEwLjcwOC01Ni4xLTMyLjEyLTc3LjUxNkMyNzUuMzY2LDEwLjcwNSwyNDkuNTI4LDAsMjE5LjI2NSwwUzE2My4xNiwxMC43MDUsMTQxLjc1LDMyLjExNSAgICBjLTIxLjQxNCwyMS40MTYtMzIuMTIxLDQ3LjI1My0zMi4xMjEsNzcuNTE2YzAsMzAuMjY3LDEwLjcwNyw1Ni4xMDQsMzIuMTIxLDc3LjUxNSAgICBDMTYzLjE2NiwyMDguNTU3LDE4OS4wMDEsMjE5LjI2NywyMTkuMjY1LDIxOS4yNjd6IiBmaWxsPSIjZTY3ZTIyIi8+CgkJPHBhdGggZD0iTTQxOS4yNTgsMzM1LjAzNmMtMC42NjgtOS42MDktMi4wMDItMTkuOTg1LTMuOTk3LTMxLjEyMWMtMS45OTktMTEuMTM2LTQuNTI0LTIxLjQ1Ny03LjU3LTMwLjk3OCAgICBjLTMuMDQ2LTkuNTE0LTcuMTM5LTE4Ljc5NC0xMi4yNzgtMjcuODM2Yy01LjEzNy05LjA0MS0xMS4wMzctMTYuNzQ4LTE3LjcwMy0yMy4xMjdjLTYuNjY2LTYuMzc3LTE0LjgwMS0xMS40NjUtMjQuNDA2LTE1LjI3MSAgICBjLTkuNjE3LTMuODA1LTIwLjIyOS01LjcxMS0zMS44NC01LjcxMWMtMS43MTEsMC01LjcwOSwyLjA0Ni0xMS45OTEsNi4xMzljLTYuMjc2LDQuMDkzLTEzLjM2Nyw4LjY2Mi0yMS4yNjYsMTMuNzA4ICAgIGMtNy44OTgsNS4wMzctMTguMTgyLDkuNjA5LTMwLjgzNCwxMy42OTVjLTEyLjY1OCw0LjA5My0yNS4zNjEsNi4xNC0zOC4xMTgsNi4xNGMtMTIuNzUyLDAtMjUuNDU2LTIuMDQ3LTM4LjExMi02LjE0ICAgIGMtMTIuNjU1LTQuMDg2LTIyLjkzNi04LjY1OC0zMC44MzUtMTMuNjk1Yy03Ljg5OC01LjA0Ni0xNC45ODctOS42MTQtMjEuMjY3LTEzLjcwOGMtNi4yODMtNC4wOTMtMTAuMjc4LTYuMTM5LTExLjk5MS02LjEzOSAgICBjLTExLjYxLDAtMjIuMjIyLDEuOTA2LTMxLjgzMyw1LjcxMWMtOS42MTMsMy44MDYtMTcuNzQ5LDguODk4LTI0LjQxMiwxNS4yNzFjLTYuNjYxLDYuMzc5LTEyLjU2MiwxNC4wODYtMTcuNjk5LDIzLjEyNyAgICBjLTUuMTM3LDkuMDQyLTkuMjI5LDE4LjMyNi0xMi4yNzUsMjcuODM2Yy0zLjA0NSw5LjUyMS01LjU2OCwxOS44NDItNy41NjYsMzAuOTc4Yy0yLDExLjEzNi0zLjMzMiwyMS41MDUtMy45OTksMzEuMTIxICAgIGMtMC42NjYsOS42MTYtMC45OTgsMTkuNDY2LTAuOTk4LDI5LjU1NGMwLDIyLjgzNiw2Ljk0OSw0MC44NzUsMjAuODQyLDU0LjEwNGMxMy44OTYsMTMuMjI0LDMyLjM2LDE5LjgzNSw1NS4zOSwxOS44MzVoMjQ5LjUzMyAgICBjMjMuMDI4LDAsNDEuNDktNi42MTEsNTUuMzg4LTE5LjgzNWMxMy45MDEtMTMuMjI5LDIwLjg0NS0zMS4yNjUsMjAuODQ1LTU0LjEwNEM0MjAuMjY0LDM1NC41MDIsNDE5LjkzMiwzNDQuNjUyLDQxOS4yNTgsMzM1LjAzNiAgICB6IiBmaWxsPSIjZTY3ZTIyIi8+Cgk8L2c+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPGc+CjwvZz4KPC9zdmc+Cg==\" height=\"16\" />  <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "emergency", "<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABS2lUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDIgNzkuMTYwOTI0LCAyMDE3LzA3LzEzLTAxOjA2OjM5ICAgICAgICAiPgogPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIi8+CiA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgo8P3hwYWNrZXQgZW5kPSJyIj8+nhxg7wAAAPVJREFUOI2l0rFqQkEQBdDjahnbVwWxV+wCVn5BuljGKpA0Kf2A9xFp8wcRhAhCOttA/sG06SSNYmGKt4K8+JZELwy7zNy5e3d2a+37J0dwvVvXn0Nzm13cfgrN7dduXb/DrEwMR5qHeEV2kMtibvgXgfyYpapaWaCJVkKgFTlJB/9CWeAbywR/GTlJBw8JgV+1Q4EB3jHCI+b4iDGPuVHkDPZNjbje4CXur6LVGRZ24BJjtCNnoXjSSUMx1bzkrB1PpFZ5nRxvAX10K2nV6KIf0DmheY9OQO8MgV7A6gyBVVBM9FQsAqaKJ4KN4qelYhO5Y0x/ANyqNDsQynKhAAAAAElFTkSuQmCC\" height=\"16\" />  <b>{0}</b>: {1}")
    TriggerEvent("chat:addTemplate", "command", "<img src=\"data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQCAYAAAAf8/9hAAABS2lUWHRYTUw6Y29tLmFkb2JlLnhtcAAAAAAAPD94cGFja2V0IGJlZ2luPSLvu78iIGlkPSJXNU0wTXBDZWhpSHpyZVN6TlRjemtjOWQiPz4KPHg6eG1wbWV0YSB4bWxuczp4PSJhZG9iZTpuczptZXRhLyIgeDp4bXB0az0iQWRvYmUgWE1QIENvcmUgNS42LWMxNDIgNzkuMTYwOTI0LCAyMDE3LzA3LzEzLTAxOjA2OjM5ICAgICAgICAiPgogPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4KICA8cmRmOkRlc2NyaXB0aW9uIHJkZjphYm91dD0iIi8+CiA8L3JkZjpSREY+CjwveDp4bXBtZXRhPgo8P3hwYWNrZXQgZW5kPSJyIj8+nhxg7wAAAPVJREFUOI2l0rFqQkEQBdDjahnbVwWxV+wCVn5BuljGKpA0Kf2A9xFp8wcRhAhCOttA/sG06SSNYmGKt4K8+JZELwy7zNy5e3d2a+37J0dwvVvXn0Nzm13cfgrN7dduXb/DrEwMR5qHeEV2kMtibvgXgfyYpapaWaCJVkKgFTlJB/9CWeAbywR/GTlJBw8JgV+1Q4EB3jHCI+b4iDGPuVHkDPZNjbje4CXur6LVGRZ24BJjtCNnoXjSSUMx1bzkrB1PpFZ5nRxvAX10K2nV6KIf0DmheY9OQO8MgV7A6gyBVVBM9FQsAqaKJ4KN4qelYhO5Y0x/ANyqNDsQynKhAAAAAElFTkSuQmCC\" height=\"16\" />  <b>{0}</b>: {1}")
end)