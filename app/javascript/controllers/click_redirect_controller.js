// controllers/click_redirect_controller.js
import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails"

export default class extends Controller {
    static targets = ["row", "rowLink", "media"]

    rowClick(event) {
        const link = event.currentTarget.querySelector("a:first-child")
        if (link) {
            Turbo.visit(link.getAttribute("href"))
        }
    }

    rowLinkClick(event) {
        event.preventDefault()
        const link = event.currentTarget
        Turbo.visit(link.getAttribute("href"))
    }

    mediaClick(event) {
        const link = event.currentTarget.querySelector("a:first-child")
        if (link) {
            Turbo.visit(link.getAttribute("href"))
        }
    }
}
