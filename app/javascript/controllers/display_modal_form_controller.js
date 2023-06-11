import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="display-modal-form"
export default class extends Controller {
  static targets = ["form", "formcompany", "formcompany2", "formrecruiter"]

  displayForm(event) {
    event.currentTarget.classList.add('d-none')
    this.formTarget.classList.remove("d-none")
    this.element.closest('.modal-content').scrollTo(0, this.element.closest('.modal-content').scrollHeight)
  }

  displayForm2(event) {
    if (event.target.value === "yes") {
      this.formrecruiterTarget.classList.remove('d-none')
      this.formcompanyTarget.classList.add('d-none')
      this.formcompany2Target.classList.add('d-none')
    } else {
      this.formcompanyTarget.classList.remove('d-none')
      this.formcompany2Target.classList.remove('d-none')
      this.formrecruiterTarget.classList.add('d-none')
      console.log("test2")
    }
  }
}
