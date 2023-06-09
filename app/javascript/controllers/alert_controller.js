import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="alert"
export default class extends Controller {
  static targets = ['placeholder'];

  connect() {
    // Register the click event listener on the button
    this.element.addEventListener('click', this.showAlert.bind(this));
  }

  showAlert() {
    const message = 'The experience is certified!';
    const type = 'success';
    const wrapper = document.createElement('div');
    wrapper.innerHTML = `
      <div class="alert alert-${type} alert-dismissible" role="alert">
        <div>${message}</div>
        <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
      </div>
    `;

    
  }
}
