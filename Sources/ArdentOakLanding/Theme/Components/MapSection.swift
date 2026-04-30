//
//  MapSection.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Plot

struct MapSection: Component {
    var body: Component {
        Node<HTML.BodyContext>.raw(
            """
            <section id="stockists" class="section-shell map-section">
                <div class="section-heading">
                    <h2>Where to buy</h2>
                    <p>Explore selected stockists carrying single Forest Gin. Locations are provided as a demonstration dataset.</p>
                </div>
                <div id="map" role="application" aria-label="Map showing mock stocklist locations"></div>
                <ul class="stocklist-list">
                    <li> Black Pine Bottle House - London </li>
                    <li> Oak &amp; Ether Fine Spirits - Edinburgh </li>
                    <li> The Glass Ledger - Bristol </li>
                </ul>
            </section>
            """
        )
    }
}
