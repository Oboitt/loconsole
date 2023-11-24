import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="dashboard-display"
export default class extends Controller {
  static targets = [ "btn", "infos" ]
  connect() {
    console.log("salut");
    console.log(thi);


  }

  fire(event) {
    console.log(event.currentTarget);

    this.btnTargets.forEach((btn) => {
      btn.classList.remove("black-btn-console");
      btn.classList.add("dark-btn-console");
    })


    event.currentTarget.classList.remove("dark-btn-console");
    event.currentTarget.classList.add("black-btn-console");
    console.log(event.currentTarget.dataset.display);


    this.infosTargets.forEach((info) => {
      info.classList.add("d-none");
    })

    document.querySelector(`#${event.currentTarget.dataset.display}`).classList.remove("d-none");

  }
}


// btn-outline-dark
// btn btn-dark
