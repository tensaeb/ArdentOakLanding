//
//  HomePage.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Plot

struct HomePage: Component {
    var body: Component {
        ComponentGroup {
            AgeGate()
            HeroSection()
            BotanicalSection()
            TastingNotesSection()
            MapSection()
            FooterSection()
        }
    }
}
