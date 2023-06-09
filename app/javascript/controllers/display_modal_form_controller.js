import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-modal-form"
export default class extends Controller {
  static targets = ["form"]

  displayForm(event) {
    event.currentTarget.classList.add('d-none')
    this.formTarget.classList.remove("d-none")
    this.element.closest('.modal-content').scrollTo(0, this.element.closest('.modal-content').scrollHeight)
  }
}
