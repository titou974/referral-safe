import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "infos", "form" ]

  connect() {
    console.log(this.infosTarget);
    console.log(this.formTarget);
    console.log(this.cardTarget);
  }

  displayForm() {
    this.infosTarget.classList.add('d-none');
    this.formTarget.classList.remove('d-none');
  }
  // app/javascript/controllers/edit_resource.js

}
