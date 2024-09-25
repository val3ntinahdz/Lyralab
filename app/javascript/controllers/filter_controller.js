import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="filter"
export default class extends Controller {
  static targets = ["tab", "content"]

  connect() {
    console.log("Add Dynamism to your filters!")
  }
}
