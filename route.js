import * as riot from 'riot';
import route from 'riot-route';

console.log('START');

// let subRoute;
// subRoute = route.create();

let subRoute = route.create();
subRoute((...args) => {
	console.log(args);
	riot.mount('#page', 'main');
});

subRoute('', () => {
	route('home');
});
subRoute('home', () => {
	console.log('route home');
	riot.mount('#content', 'home');
});

subRoute('vegetables', () => {
	console.log('route vegetables..');
	riot.mount('#content', 'vegetable');
});
subRoute('vegetables/carrot', () => {
	console.log('route carrot');
	riot.mount('#container', 'carrot', {name: "にんじん"});
});
subRoute('vegetables/pumpkin', () => {
	console.log('route pumpkin');
	riot.mount('#container', 'pumpkin', {name: "かぼちゃ"});
});
subRoute('vegetables/lettuce', () => {
	console.log('route lettuce');
	riot.mount('#container', 'lettuce', {name: "れたす"});
});

subRoute('fruits', () => {
	riot.mount('#content', 'fruit');
});

subRoute('meats..', () => {
	riot.mount('#content', 'meat');
});
subRoute('meats/beef', () => {
	console.log('route beef');
	riot.mount('#container', 'beef', {name: "うし"});
});
subRoute('meats/pork', () => {
	console.log('route pork');
	riot.mount('#container', 'pork', {name: "ぶた"});
});
subRoute('meats/chicken', () => {
	console.log('route chicken');
	riot.mount('#container', 'chicken', {name: "とり"});
});