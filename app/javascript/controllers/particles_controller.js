import { Controller } from "@hotwired/stimulus"
import particlesJS from 'particles.js'

// Connects to data-controller="particles"
export default class extends Controller {
  connect() {
    particlesJS.load(this.element, {}, function() {
      console.log('callback - particles.js config loaded');
    });
  }

  getAllFuncs(toCheck) {
    const props = [];
    let obj = toCheck;
    do {
        props.push(...Object.getOwnPropertyNames(obj));
    } while (obj = Object.getPrototypeOf(obj));

    return props.sort().filter((e, i, arr) => {
       if (e!=arr[i+1] && typeof toCheck[e] == 'function') return true;
    });
  }

  getAllMethodNames(obj) {
    let methods = new Set();
    while (obj = Reflect.getPrototypeOf(obj)) {
      let keys = Reflect.ownKeys(obj)
      keys.forEach((k) => methods.add(k));
    }
    return methods;
  }
}
