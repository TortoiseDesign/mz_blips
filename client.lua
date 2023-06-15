local blips = {
    -- {title='Khu | Bãi Đá LV1', colour=46, id=527, x = 2970.46, y = 2775.47, z = 38.28},
    -- {title='Khu | Bãi Đá LV21', colour=46, id=527, x = 2951.47, y = 2769.12, z = 39.04},
    -- {title='Khu | Bãi Đá LV30', colour=46, id=527, x = 2934.21, y = 2742.93, z = 44.12},
    --{title='Độ xe', colour=2, id=72, x = 157.59, y = -3028.64, z = 7.03},
    {title='Bar Cat', colour=27, id=136, x = -446.96, y = 276.95, z = 83.02},
    {title='Coffee Cat', colour=2, id=674, x = -581.0933, y = -1061.233, z = 22.352172},
    {title='Nhặt phế liệu', colour=41, id=400, x = 2410.8, y = 3111.34, z = 48.15},
    {title='Bắn Bida', colour=10, id=546, x = 1990.82, y = 3053.96, z = 47.21},
    {title='Nuôi ong ', colour=46, id=106, x = -2048.9, y = 1518.8, z = 280.5},
    {title='Nuôi ong ', colour=46, id=106, x = 1239.99, y = -854.95, z = 65.29}
    -- {title='Nuôi ong ', colour=46, id=106, x = 1990.82, y = 3053.96, z = 47.21}
    -- {title='Nuôi ong ', colour=46, id=106, x = 1990.82, y = 3053.96, z = 47.21}
    -- {title='Nuôi ong ', colour=46, id=106, x = 1990.82, y = 3053.96, z = 47.21}
    -- {title='Nuôi ong ', colour=46, id=106, x = 1990.82, y = 3053.96, z = 47.21}
		}
Citizen.CreateThread(function()

    for _, info in pairs(blips) do
      info.blip = AddBlipForCoord(info.x, info.y, info.z)
      SetBlipSprite(info.blip, info.id)
      SetBlipDisplay(info.blip, 4)
      SetBlipScale(info.blip, 0.7)
      SetBlipColour(info.blip, info.colour)
      SetBlipAsShortRange(info.blip, true)
	  BeginTextCommandSetBlipName("STRING")
      AddTextComponentString(info.title)
      EndTextCommandSetBlipName(info.blip)
    end
end)