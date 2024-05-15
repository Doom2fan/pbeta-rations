/*
 * Copyright (C) 2024 Chronos "phantombeta" Ouroboros
 *
 * This software is provided 'as-is', without any express or implied
 * warranty.  In no event will the authors be held liable for any damages
 * arising from the use of this software.
 *
 * Permission is granted to anyone to use this software for any purpose,
 * including commercial applications, and to alter it and redistribute it
 * freely, subject to the following restrictions:
 *
 * 1. The origin of this software must not be misrepresented; you must not
 *    claim that you wrote the original software. If you use this software
 *    in a product, an acknowledgment in the product documentation would be
 *    appreciated but is not required.
 * 2. Altered source versions must be plainly marked as such, and must not be
 *    misrepresented as being the original software.
 * 3. This notice may not be removed or altered from any source distribution.
 */

class PBR_UaS_DollyMRE : UaS_Consumable {
    mixin UaS_2LBottleMixin;

    default {
        UaS_Consumable.Description "$PB_RATIONS_DOLLY_DESC";
        inventory.PickupMessage "$PB_RATIONS_DOLLY_PICKUP";
        tag "$PB_RATIONS_DOLLY_TAG";

        UaS_Consumable.Calories 770;

        inventory.Icon "PBR0A0";
        scale 0.35;
    }

    override void Messages () {
        for (int i = 0; i < 5; i++) {
            AddConsumeText ("$PB_RATIONS_DOLLY_CONSUME_1");
            AddConsumeText ("$PB_RATIONS_DOLLY_CONSUME_2");
            AddConsumeText ("$PB_RATIONS_DOLLY_CONSUME_3");
            AddConsumeText ("$PB_RATIONS_DOLLY_CONSUME_4");
        }
        AddConsumeText ("$PB_RATIONS_DOLLY_CONSUME_RARE_1");
        AddConsumeText ("$PB_RATIONS_DOLLY_CONSUME_RARE_2");
        AddConsumeText ("$PB_RATIONS_DOLLY_CONSUME_RARE_3");
    }

    states (actor) {
    Spawn:
        PBR0 A -1;
        stop;
    }
}