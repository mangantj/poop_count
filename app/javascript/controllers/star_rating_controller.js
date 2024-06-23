import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["star", "input"]
  static values = {
    isEdit: Boolean
  }

  connect(){
    if (this.isEditValue){
      this._fillStars(this.inputTarget.value - 1)
    }
  }

  enter(event) {
    this._fillStars(event.params.starIndex)
  }

  leave(){
    if (this.inputTarget.value == '0') {
      this._fillStars(-1)
    } else if (this.isEditValue) {
      this._fillStars(this.inputTarget.value - 1)
    }
  }

  _fillStars(starIndex){
    this.starTargets.forEach((target, index) => {
      if (index <= starIndex){
        target.classList.remove("filter-white")
      } else {
        target.classList.add("filter-white")
      }
    })
  }

  click(event){
    this.inputTarget.value = event.params.starIndex + 1
  }
}