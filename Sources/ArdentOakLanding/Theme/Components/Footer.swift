//
//  Footer.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Plot

struct FooterSection: Component {
    var body: Component {
        Node<HTML.BodyContext>.raw(
            """
            <footer class="site-footer">
                <p> &copy; 2026 Ardent &amp; Oak. Crafted for adventurous palates </p>
            </footer>
            """
        )
    }
}
