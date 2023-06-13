import { Controller } from "@hotwired/stimulus"
import TomSelect from "tom-select";
// Connects to data-controller="autocomplete"
export default class extends Controller {
  connect() {
    console.log("hello")
    new TomSelect(this.element,{
      persist: false,
      createOnBlur: true,
      create: true,
      render:{
        option: function(data) {

          const div = document.createElement('div');
          div.className = 'd-flex align-items-center';

          const span = document.createElement('span');
          span.className = 'flex-grow-1';
          span.innerText = data.text;
          div.append(span);

          const a = document.createElement('a');
          a.innerText = '#';
          a.className = 'btn btn-sm btn-light';
          div.append(a);
          a.addEventListener('click',function(evt){
            evt.stopPropagation();
            alert(`You clicked # within the "${data.text}" option`);
          });

          return div;
        },
      }

  })
  new TomSelect('#ex-clear-button',{
    plugins: {
      'clear_button':{
        'title':'Remove all selected options',
      }
    },
    persist: false,
    create: true,
  });
}


}
