-- made by Nicko21
local Timer = require 'vendor/timer'
return{
    name = "Speed Boost Potion",
    image = "orange_potion",
    type = "consumable",
    MAX_ITEMS = 2,
	duration = 10;
    use = function( consumable, player )
		player:beginFlash(consumable.props.duration, {255,165,50,255})
        local orig = player.speedFactor
    	player.speedFactor = 1.5
        Timer.add(consumable.props.duration, function() 
            player.speedFactor = orig
        end)
	end
}
