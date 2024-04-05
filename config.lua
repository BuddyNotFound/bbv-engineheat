Config = {}
Config.Debug = false

Config.MaxSpeed = 150.0 -- in km/h after which the engine will start to heat up
Config.MaxTemp = 120.0 -- The temperature after which the engine will start to degrade
Config.DegradeSpeed = 2.0 -- Degradation per 1.5 seconds. (Engine has 1000 health by default, 2.0 means it will remove 2.0 health per 1.5 seconds.)
Config.ShutdownTemp = 140.0 -- If this temperature is hit, the engine will shutdown.

Config.BlacklistedVehicles = { -- Vehicles that the heat will not apply to.
    'luxor2',
}