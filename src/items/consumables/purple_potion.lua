-- made by Nicko21
local Timer = require 'vendor/timer'
return{
    name = "Punch Damage Potion",
    image = "purple_potion",
    type = "consumable",
    MAX_ITEMS = 2,
	duration = 30;
    use = function( consumable, player )
		player:beginFlash(consumable.props.duration, {180,80,255,255})
        local orig = player.punchDamage
        player.punchDamage = 5
        Timer.add(consumable.props.duration, function() 
            player.punchDamage = orig
        end)
	end
}
