import Foundation
import Plot

try ArdentOakLanding().publish(using: [
    .addMarkdownFiles(),
    .generateHTML(withTheme: .darkAcademia),
    .generateSiteMap()
])

