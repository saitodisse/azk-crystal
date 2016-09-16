import calcYear from './calcYear.js';
import p from './helpers/p.js';

class AzkJs {
  constructor() {
    p(`You have born ${calcYear(1981)}`);
  }
}

const azkJs = new AzkJs();

p(`azkJs: ${azkJs}`);
p(`console: ${typeof console}`);
p(`print: ${typeof print}`);
