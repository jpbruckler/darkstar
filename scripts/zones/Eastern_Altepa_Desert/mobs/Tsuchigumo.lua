-----------------------------------
-- Area: Eastern Altepa Desert
--  MOB: Tsuchigumo
-- Involved in Quest: 20 in Pirate Years
-----------------------------------

function onMobDeath(mob, player, isKiller)
    if player:getVar("twentyInPirateYearsCS") == 3 then
        player:setVar("TsuchigumoKilled", player:getVar("TsuchigumoKilled") + 1)
    end
end
