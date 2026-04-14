import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
    static targets = ["layer"]

    toggle() {
        this.layerTarget.classList.toggle("hidden")
    }

    hide() {
        this.layerTarget.classList.add("hidden")
    }
}