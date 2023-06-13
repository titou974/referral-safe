import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// You need to import this to use new flatpickr()
// Connects to data-controller="datepicker"

export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      mode: "range",
      altInput: true,
      altFormat: "F j, Y",
      dateFormat: "Y-m-d"
    })
  }
}
