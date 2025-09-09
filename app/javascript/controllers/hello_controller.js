import { Controller } from "@hotwired/stimulus"
import { Modal } from "bootstrap"

export default class extends Controller {
    static targets = ["row", "rowLink", "media"]

    connect() {

    }

    disconnect() {
        // 컨트롤러가 해제될 때 Fancybox 인스턴스도 정리
        Fancybox.close()
        Fancybox.destroy()
    }
}

