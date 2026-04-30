//
//  DarkAcademiaTheme.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Publish
import Plot

extension Theme where Site == ArdentOakLanding {
    static var darkAcademia: Self {
        Theme (
            htmlFactory: DarkAcademiaHTMLFactory(),
            resourcePaths: ["Resources/style.css", "Resources/app.js"]
        )
    }
}
