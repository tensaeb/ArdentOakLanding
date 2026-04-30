//
//  File.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Plot

struct AgeGate: Component {
    var body: Component {
        Node<HTML.BodyContext>.raw(
            """
            <div id="age-gate" class="age-gate-overlay">
                <div class="age-gate-modal" role="dialog" aria-modal="true" aria-labelledby="age-gate-title">
                    <p class="eyebrow"> Age Verification </p>
                    <h2 id="age-gate-title"> Welcome to Ardent &amp; Oak </h2>
                    <p> This website contains alcoholic-related content. Please confirm that you are of legal drinking age in your country. </p>
                    <div class="age-gate-actions">
                        <button id="age-yes" class="btn-primary" type="button"> Yes, Enter </button>
                        <a id="age-no" class="btn-secondary" href="https://www.responsibility.org">No, Leave </a>
                    </div>
                </div>
            </div>
            """
        )
    }
}
