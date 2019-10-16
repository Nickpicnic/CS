import {choice, remove} from './helpers';
import fruits from './foods';

console.log(fruits);
let fruit = choice(fruits);
console.log(fruit);
console.log(`i'd like one ${fruit}, please!`);
console.log(`Here you go: ${fruit}!`);
console.log(`Delicious! May I have another?`);
remove(fruits, fruit);
console.log(`I'm sorry, we're all out. We have ${fruits} left`);