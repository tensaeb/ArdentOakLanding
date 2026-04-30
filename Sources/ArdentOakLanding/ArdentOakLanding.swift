//
//  ArdentOakLanding.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Publish
import Plot
import Foundation

struct ArdentOakLanding: Website {
    enum SectionID: String, WebsiteSectionID {
        case home
    }
    
    struct ItemMetadata: WebsiteItemMetadata {}
    
    var url = URL(string: "https://github.com/tensae/ArdentOakLanding")!
    var name = "Ardent & Oak"
    var description = "A handcrafted landing page for a forest gin aged in oak."
    var language: Language { .english }
    var imagePath: Path? { nil }
    var theme: Theme<ArdentOakLanding> { .darkAcademia }
    
}
