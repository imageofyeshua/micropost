import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static values = { delay: Number };

  connect() {
    setTimeout(() => {
      this.element.remove(); // Removes the element from the DOM
    }, this.delayValue || 10000);
  }
}
