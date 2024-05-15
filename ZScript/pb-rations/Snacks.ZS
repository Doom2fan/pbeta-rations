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

class PBR_UaS_PacocaMRE : UaS_Consumable {
    mixin UaS_SingleSnack;

    default {
        UaS_Consumable.Calories 3000;
        UaS_Consumable.Bulk 15;

        UaS_Consumable.Description "$UAS_PB_RATIONS_PACOCA_DESC";
        Inventory.PickupMessage "$UAS_PB_RATIONS_PACOCA_PICKUP";
        Tag "$UAS_PB_RATIONS_PACOCA_TAG";

        inventory.Icon "PBR0B0";
        scale 0.25;
    }

    override void Messages () {
        AddConsumeText ("$PB_RATIONS_PACOCA_CONSUME_1");
        AddConsumeText ("$PB_RATIONS_PACOCA_CONSUME_2");
    }

    states (actor) {
    Spawn:
        PBR0 B -1;
        stop;
    }
}