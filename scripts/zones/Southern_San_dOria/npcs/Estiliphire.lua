-----------------------------------
-- Area: Southern Sandoria
--   NPC: Estiliphire
-- Type: Event Sideshow NPC
-- !pos -41.550 1.999 -2.845 230
--
-----------------------------------
local ID = require("scripts/zones/Southern_San_dOria/IDs");
require("scripts/globals/settings");
require("scripts/globals/quests");
-----------------------------------

function onTrade(player,npc,trade)
    local FlyerForRegine = player:getQuestStatus(SANDORIA,FLYERS_FOR_REGINE);
    if (FlyerForRegine == 1) then
        local count = trade:getItemCount();
        local MagicFlyer = trade:hasItemQty(532,1);
        if (MagicFlyer == true and count == 1) then
            player:messageSpecial(ID.text.FLYER_REFUSED);
        end
    end
end;

function onTrigger(player,npc)
    player:startEvent(897);
end;

function onEventUpdate(player,csid,option)
end

function onEventFinish(player,csid,option)
end;
