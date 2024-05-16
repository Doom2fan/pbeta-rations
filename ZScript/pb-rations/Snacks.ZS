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

class PBetaR_UaS_Pacoquitas : UaS_Consumable {
    default {
        UaS_Consumable.Calories 3000;
        UaS_Consumable.Fluid 0;
        UaS_Consumable.Bulk 15;

        UaS_Consumable.Description "$PBETA_RATIONS_PACOCA_DESC";
        Inventory.PickupMessage "$PBETA_RATIONS_PACOCA_PICKUP";
        Tag "$PBETA_RATIONS_PACOCA_TAG";

        inventory.Icon "PBR0B0";
        scale 0.25;

        +UaS_Consumable.Packaged +UaS_Consumable.Resealable
    }

    override void Messages () {
        AddConsumeText ("$PBETA_RATIONS_PACOCA_CONSUME_1");
        AddConsumeText ("$PBETA_RATIONS_PACOCA_CONSUME_2");
    }

    states (actor) {
    Spawn:
        PBR0 B -1;
        stop;
    }
}

class PBetaR_UaS_CoxinhaMRE : UaS_Consumable {
    mixin PBetaR_UaS_SingleSnack;

    // TODO: Apply these.
    enum MREFlags {
        FLAG_INITTED = 1,
        FLAG_SOGGY = 1 << 1,
        FLAG_NEEDSMORESEASONING = 1 << 2,
        FLAG_DOUGHY = 1 << 3,
    };

    default {
        UaS_Consumable.Calories 250;
        UaS_Consumable.Fluid 0;
        UaS_Consumable.Bulk 5;

        UaS_Consumable.Description "$PBETA_RATIONS_COXINHA_DESC";
        Inventory.PickupMessage "$PBETA_RATIONS_COXINHA_PICKUP";
        Tag "$PBETA_RATIONS_COXINHA_TAG";

        scale 0.5;
    }
}