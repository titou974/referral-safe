import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="edit-dashboard"
export default class extends Controller {
  static targets = ["profilinfos", "form", "infos"]
  connect() {
    console.log(this.infosTarget)
    console.log(this.formTarget)
    console.log(this.infosTarget)
  }

  displayFormDashboard() {
    this.infosTarget.classList.add('d-none')
    this.formTarget.classList.remove('d-none')
  }

  update(event) {
    event.preventDefault();
    const url = this.formTarget.action
    fetch(url, {
      method: 'Patch',
      headers: { 'Accept': 'text/html' },
      body: new FormData(this.formTarget)
    })
    .then(response => response.text())
    .then((data) => console.log(data));
  }
}
