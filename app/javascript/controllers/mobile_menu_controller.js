// app/javascript/controllers/mobile_menu_controller.js
import { Controller } from "@hotwired/stimulus"
import { Turbo } from "@hotwired/turbo-rails"

export default class extends Controller {
    static targets = ["menuBack", "topUserMenu"]

    connect() {
        // 초기 상태
        if (this.hasMenuBackTarget) this.menuBackTarget.style.display = "none"
        if (this.hasTopUserMenuTarget) {
            this.topUserMenuTarget.style.right = "-290px"
            this.topUserMenuTarget.style.display = "none"
            this.topUserMenuTarget.style.transition = "right 0.5s"
        }
    }

    // 모바일 메뉴 열기
    openMenu(event) {
        event.preventDefault()
        if (this.hasMenuBackTarget) this.menuBackTarget.style.display = "block"
        if (this.hasTopUserMenuTarget) {
            this.topUserMenuTarget.style.display = "block"
            requestAnimationFrame(() => {
                this.topUserMenuTarget.style.right = "0px"
            })
        }
    }

    // 모바일 메뉴 닫기
    closeMenu(event) {
        event.preventDefault()
        if (!this.hasTopUserMenuTarget) return

        this.topUserMenuTarget.style.right = "-290px"

        // transition 끝난 후 hide
        const handler = () => {
            this.topUserMenuTarget.style.display = "none"
            if (this.hasMenuBackTarget) this.menuBackTarget.style.display = "none"
            this.topUserMenuTarget.removeEventListener("transitionend", handler)
        }
        this.topUserMenuTarget.addEventListener("transitionend", handler)
    }

    // select 변경 시 페이지 이동
    changeSubMenu(event) {
        const el = event.target
        let url

        if (el.name === "category" || el.name === "speciality") {
            url = el.selectedOptions[0].dataset.url
        } else {
            url = el.value
        }

        if (typeof Turbo !== "undefined") {
            Turbo.visit(url)
        } else {
            location.href = url
        }
    }

    // input 변경 시 form 제출
    submitOnChange(event) {
        const form = event.target.closest("form")
        if (!form) return

        if (typeof Turbo !== "undefined") {
            Turbo.visit(form.action, {
                action: "replace",
                body: new FormData(form)
            })
        } else {
            form.submit()
        }
    }
}
