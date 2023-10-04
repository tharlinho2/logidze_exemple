import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "drawer" ]

  connect() {
    setTimeout(() => {
      this.open();
    }, 100);
  }

  disconnect() {
    this.close();
  }

  open() {
    $(this.drawerTarget).offcanvas('show');

    document.addEventListener("turbo:submit-end", () => {
      setTimeout(() => {
        this.close();
      }, 100)
    }, { once: true });
  }

  close() {
    $(this.drawerTarget).offcanvas('hide');
  }
}
