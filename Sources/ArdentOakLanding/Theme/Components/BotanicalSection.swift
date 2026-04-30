//
//  BotanicalSection.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Plot

struct BotanicalSection: Component {
    var body: Component {
        Node<HTML.BodyContext>.raw(
            """
            <section id="botanicals" class="section-shell">
                <div class="section-heading">
                    <h2>Botanical Profiles</h2>
                    <p>Every batch begins with a day forage and is proofed slowly to preserve aromatic detail. </p>
                </div>
                <div class="botanical-grid">
                    <article class="botanical-card">
                        <h3> Juniper </h3>
                        <p> Wild Macedonian Juniper lends resinous structure and a cooling alpine edge </p>
                    </article>
                    <article class="botanical-card">
                        <h3> Scots Pine Tip </h3>
                        <p> Fresh spring tips contribute green lift, sap brightness, and a forest-floor aroma. </p>
                    </article>
                    <article class="botanical-card">
                        <h3> Angelica Root </h3>
                        <p> A dry, earthy anchor that extends the finish and ties citrus to oak spice. </p>
                    </article>
                    <article class="botanical-card">
                        <h3> Dried Orange Peel </h3>
                        <p> Bittersweet oils open the palate with elegant warmth and candied zest. </p>
                    </article>
                </div>
            </section>
            """
        )
    }
}
