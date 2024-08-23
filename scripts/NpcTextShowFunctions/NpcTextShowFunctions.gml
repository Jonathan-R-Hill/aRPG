/*
 * NpcTextPopUp
 * Displays a specific message from the npcText array when the player is near the NPC.
 * 
 * @param npcText {array} - The array of strings containing the NPC's dialogue.
 * @param npc {object} - The NPC object that the player is interacting with.
 */
function NpcTextPopUp(npcText, npc) 
{
    if (playerNearby()) {
        if (npc.textBoxCreated == noone) {
            npc.textBoxCreated = instance_create_layer(npc.x, npc.y, "Text", obj_textBox);
            npc.textBoxCreated.text = npcText[npc.page];
        }
    }
    
    if (!playerNearby() && npc.textBoxCreated != noone) {
        instance_destroy(npc.textBoxCreated);
        npc.textBoxCreated = noone;
    }    
}

/*
 * NpcRandomTextPopUp
 * Displays a random message from the npcText array when the player is near the NPC.
 * 
 * @param npcText {array} - The array of strings containing the NPC's dialogue.
 * @param npc {object} - The NPC object that the player is interacting with.
 */
function NpcTextRandomPopUp(npcText, npc) 
{
    if (playerNearby()) {
        if (npc.textBoxCreated == noone) {
            var randomIndex = irandom_range(0, array_length(npcText) - 1);

            npc.textBoxCreated = instance_create_layer(npc.x, npc.y, "Text", obj_textBox);
            npc.textBoxCreated.text = npcText[randomIndex];
        }
    }
    
    if (!playerNearby() && npc.textBoxCreated != noone) {
        instance_destroy(npc.textBoxCreated);
        npc.textBoxCreated = noone;
    }
}

/*
 * NpcTextChainPopUp
 * Displays messages from the npcText array in sequence when the player presses 'F' 
 * and progresses through the messages with the spacebar.
 * 
 * @param npcText {array} - The array of strings containing the NPC's dialogue.
 * @param npc {object} - The NPC object that the player is interacting with.
 */
function NpcTextChainPopUp(npcText, npc) {
    if (playerNearby() && keyboard_check(ord("F"))) 
    {
        if (npc.textBoxCreated == noone) {
            npc.textBoxCreated = instance_create_layer(npc.x, npc.y, "Text", obj_textBox);
            npc.textBoxCreated.text = npcText[npc.page];
        }
    }

    if (npc.textBoxCreated && keyboard_check_released(vk_space)) {
        if (npc.page >= array_length(npcText) - 1) {
            npc.page = 0;
            instance_destroy(npc.textBoxCreated);
            npc.textBoxCreated = noone;
        }
        else {
            npc.page++;
            npc.textBoxCreated.text = npcText[npc.page];
        }
    }

    if (!playerNearby() && npc.textBoxCreated != noone) {
        instance_destroy(npc.textBoxCreated);
        npc.textBoxCreated = noone;
    }
}
