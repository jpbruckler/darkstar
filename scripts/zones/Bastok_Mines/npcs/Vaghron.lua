-----------------------------------
-- Area: Bastok Mines
--  NPC: Vaghron
-- Type: Adventurer's Assistant
-- !pos -39.162 -1 -92.147 234
-----------------------------------
require("scripts/globals/quests");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    local WildcatBastok = player:getVar("WildcatBastok");

    if (player:getQuestStatus(BASTOK,LURE_OF_THE_WILDCAT_BASTOK) == QUEST_ACCEPTED and player:getMaskBit(WildcatBastok,19) == false) then
        player:startEvent(503);
    else
        player:startEvent(118);
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)

    if (csid == 503) then
        player:setMaskBit(player:getVar("WildcatBastok"),"WildcatBastok",19,true);
    end

end;
