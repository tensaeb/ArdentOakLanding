//
//  File.swift
//  ArdentOakLanding
//
//  Created by Tensae on 30/04/2026.
//

import Publish
import Plot

struct DarkAcademiaHTMLFactory<Site: Website>: HTMLFactory {
    func makeIndexHTML(for index: Index, context: PublishingContext<Site>) throws -> HTML {
        HTML(
            .head(
                .title("Ardent & Oak"),
                .stylesheet("/style.css"),
                .stylesheet("https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"),
                .meta(.name("viewport"), .content("width=device-width, initial-scale=1.0")),
                .meta(.name("description"), .content("Single Forest Gin by Ardent & Oak. Discover the story, botanicals, tasting notes, and Stockists")),
                .meta(.name("theme-color"), .content("#12100f")),
                .script(.src("https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"), .defer()),
                .script(.src("/app.js"), .defer())
            ),
            
            .body(
                .class("dark-theme"),
                .component(HomePage())
            )
        )
    }
    
    func makeSectionHTML(for section: Section<Site>, context: PublishingContext<Site>) throws -> HTML {
        makeDefaultHTML(title: section.title, context: context)
    }
    
    func makeItemHTML(for item: Item<Site>, context: PublishingContext<Site>) throws -> HTML {
        makeDefaultHTML(title: item.title, context: context)
    }
    
    func makePageHTML(for page: Page, context: PublishingContext<Site>) throws -> HTML {
        makeDefaultHTML(title: page.title, context: context)
    }
    
    func makeTagListHTML(for page: TagListPage, context: PublishingContext<Site>) throws -> HTML? {
        makeDefaultHTML(title: "Tags", context: context)
    }
    
    func makeTagDetailsHTML(for page: TagDetailsPage, context: PublishingContext<Site>) throws -> HTML? {
        makeDefaultHTML(title: "Tag: \(page.tag.string)", context: context)
    }
    
    private func makeDefaultHTML(title: String, context: PublishingContext<Site>) -> HTML {
        HTML(
            .head(
                .title(title),
                .stylesheet("/style.css"),
                .stylesheet("https://unpkg.com/leaflet@1.9.4/dist/leaflet.css"),
                .meta(.name("viewport"), .content("width=device-width, initial-scale=1.0")),
                .meta(.name("description"), .content("Single Forest Gin by Ardent & Oak. Discover the story, botanicals, tasting notes, and Stockists")),
                .meta(.name("theme-color"), .content("#12100f")),
                .script(.src("https://unpkg.com/leaflet@1.9.4/dist/leaflet.js"), .defer()),
                .script(.src("/app.js"), .defer())
            ),
            .body(
                .class("dark-theme"),
                .component(HomePage())
            )
        )
    }
}
