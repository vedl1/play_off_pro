import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="end-game"
export default class extends Controller {

  static targets = [
    "end"
  ]

  connect() {
    setTimeout(() => {
      this.endTarget.classList.remove('d-none');
    }, "10000");
  }
}
