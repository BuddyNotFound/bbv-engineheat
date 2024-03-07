Main = {}

CreateThread(function()
    while true do
        Wait(1500)
        Main.Veh = GetVehiclePedIsIn(PlayerPedId(), false)
        Main.EngineTemp = GetVehicleEngineTemperature(Main.Veh)
        Main.VehHealth = GetVehicleEngineHealth(Main.Veh)
        Main.VehSpeed = GetEntitySpeed(Main.Veh) * 3.6
        if Config.Debug then 
            print(Main.EngineTemp .. " - Engine Temp")
            print(Main.VehHealth.. " - Engine Health")
            print(Main.VehSpeed .. " - Vehicle Speed")
        end
        if Main.VehSpeed > Config.MaxSpeed then
            if Config.Debug then 
                print("Over Speed")
            end
            SetVehicleEngineTemperature(Main.Veh, Main.EngineTemp + (Main.VehSpeed / 15))
        end
        if Main.EngineTemp > Config.MaxTemp then 
            if Config.Debug then
                print("Over Temp")
            end
            SetVehicleEngineHealth(Main.Veh, Main.VehHealth - Config.DegradeSpeed)
        end
        if Main.EngineTemp >= Config.ShutdownTemp then 
            SetVehicleEngineOn(Main.Veh, false, true)
        end
    end
end)
