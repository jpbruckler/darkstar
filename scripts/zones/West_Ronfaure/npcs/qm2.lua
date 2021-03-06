-----------------------------------
-- Area: West Ronfaure
--  NPC: qm2 (???)
--  Involved in Quest: The Dismayed Customer
-- !pos -550 -0 -542 100
-----------------------------------
require("scripts/globals/settings");
require("scripts/globals/quests");
require("scripts/globals/keyitems");
local ID = require("scripts/zones/West_Ronfaure/IDs");
-----------------------------------

function onTrade(player,npc,trade)
end;

function onTrigger(player,npc)

    if (player:getQuestStatus(SANDORIA, THE_DISMAYED_CUSTOMER) == QUEST_ACCEPTED and player:getVar("theDismayedCustomer") == 2) then
        player:addKeyItem(dsp.ki.GULEMONTS_DOCUMENT);
        player:messageSpecial(ID.text.KEYITEM_OBTAINED, dsp.ki.GULEMONTS_DOCUMENT);
        player:setVar("theDismayedCustomer", 0);
    else
        player:messageSpecial(ID.text.DISMAYED_CUSTOMER);
    end;

end;

function onEventUpdate(player,csid,option)
end;

function onEventFinish(player,csid,option)
end;
