//
//  HeroSection.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Plot

struct HeroSection: Component {
    var body: Component {
        Node<HTML.BodyContext>.raw(
            """
            <section id="story" class="hero">
                <p class="eyebrow"> Ardent &amp; Oak </p>
                <h1>Single Forest Gin</h1>

                <p> A contemplative Spirit distilled with hand-forged botanicals and matured in oak for uncommon depth. </p>

                <div class="hero-actions">
                    <a class="btn-primary" href="#botanicals">Explore Botanicals</a>
                    <a class="btn-secondary" href="#stocklists">Find a stocklist</a>
                </div>
            </section>
            """
        )
    }
}
