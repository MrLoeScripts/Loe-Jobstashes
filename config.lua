Config = {}

Config.Debug = false  -- Set to true to see stash zones visually in-game for debugging
Config.PoliceOpen = false  -- Set to true if you want to allow police officers to access all job stashes

Config.Stashes = {
    -- Example stash configuration
    --[[ ["example"] = {
         stashName = "example",  -- The name of the stash (used for identifying and accessing the stash)
         coords = vector3(-648.08, -1223.81, 11.54),  -- The coordinates where the stash is located in the world
         heading = 302.76,  -- Optional: The rotation of the stash zone (used for alignment)
         jobrequired = true,  -- Set to true if a specific job is required to access the stash
         job = "example",  -- The job that is allowed to access this stash (e.g., "police", "sho")
         stashSize = 1000000,  -- The maximum weight (in kilograms) that the stash can hold
         stashSlots = 50,  -- The number of inventory slots available in the stash (default is 20 if not set)
         minZ = 11.5,  -- The lower boundary for the PolyZone (determines the bottom of the zone in the Z-axis)
         maxZ = 12.5,  -- The upper boundary for the PolyZone (determines the top of the zone in the Z-axis)
         length = 3.1,  -- The length of the PolyZone (adjustable to fit the area)
         width = 0.5    -- The width of the PolyZone (adjustable to fit the area)
     },]]

    ["sho"] = {
        stashName = "sho",  
        coords = vector3(-648.08, -1223.81, 11.54),  
        heading = 302.76,  
        jobrequired = true,  
        job = "sho",  
        stashSize = 1000000,  
        stashSlots = 50,  
        minZ = 11.5,  
        maxZ = 12.5,  
        length = 3.1,  
        width = 0.5     
   }
}
