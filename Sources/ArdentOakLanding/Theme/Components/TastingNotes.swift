//
//  TastingNotes.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Plot

struct TastingNotesSection: Component {
    var body: Component {
        Node<HTML.BodyContext>.raw(
            """
                <section id="tasting-notes" class="section-shell tasting-notes">
                    <div class="section-heading">
                        <h2>Interactive Tasting Notes</h2>
                        <p>Select a stage to reveal how the flavor evolves from first aroma to finish.</p>
                    </div>
                    <div class="tasting-grid">
                        <button class = "tasting-note" type="button" data-note="nose">
                            <span class="note-title">Nose</span>
                            <span class="note-description">Rain-soaked cedar, crushed juniper, and a suggestion of orange marmalade</span>
                        </button>

                        <button class = "tasting-note" type="button" data-note="palate">
                            <span class="note-title">Palate</span>
                            <span class="note-description">Silken entry with bright pine, lifted citrus oils, and warm botanical spice.</span>
                        </button>

                        <button class = "tasting-note" type="button" data-note="mid">
                            <span class="note-title">Mid</span>
                            <span class="note-description">Oak-aged character unfolds as cocoa husk, vanilla pod, and dry tea tannin.</span>
                        </button>

                        <button class = "tasting-note" type="button" data-note="finish">
                            <span class="note-title">Finish</span>
                            <span class="note-description">Long, clean, and slightly smoky, with a mineral snap and returning citrus. </span>
                        </button>
            
            
                    </div>
                        
                    
                </section>
            """
        )
    }
}
