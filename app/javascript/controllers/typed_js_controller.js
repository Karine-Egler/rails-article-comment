

import { Controller } from "@hotwired/stimulus"
import Typed from "typed.js"

export default class extends Controller {
  connect() {
    new Typed(this.element, {
      strings: ["S'informer sur le Monde Informatique", "Prendre connaissance des innovations technologiques"],
      typeSpeed: 50,
      loop: true
    })
  }
}
