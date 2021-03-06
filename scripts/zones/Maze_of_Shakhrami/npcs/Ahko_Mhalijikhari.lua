-----------------------------------
-- Area: Maze of Shakhrami
--  NPC: Ahko Mhalijikhari
-- Type: Quest NPC
-- !pos -344.617 -12.226 -166.233 198
--  61  62  63  64  65
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)
    --player:startEvent(64);
    if (player:getQuestStatus(WINDURST,ECO_WARRIOR_WIN) ~= QUEST_AVAILABLE and player:getVar("ECO_WARRIOR_ACTIVE") == 238) then

        if (player:hasKeyItem(dsp.ki.INDIGESTED_MEAT)) then
            player:startEvent(65); -- After NM's dead
        elseif (player:hasStatusEffect(dsp.effect.LEVEL_RESTRICTION) == false) then
            player:startEvent(62); --
        else
            player:startEvent(64);
        end
    else
        player:startEvent(61); -- default
    end
end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
    printf("RESULT: %u",option);
    if (csid == 62 and option == 1) then
        player:addStatusEffect(dsp.effect.LEVEL_RESTRICTION,20,0,0);
    elseif (csid == 65) then
        player:setVar("ECOR_WAR_WIN-NMs_killed",0);
        player:delStatusEffect(dsp.effect.LEVEL_RESTRICTION);
    elseif (csid == 64) then
        player:delStatusEffect(dsp.effect.LEVEL_RESTRICTION);
    end
end;
