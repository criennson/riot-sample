import * as riot from 'riot';
import route from 'riot-route';

console.log('START');

// let subRoute;
// subRoute = route.create();

let subRoute = route.create();
subRoute((...args) => {
	console.log(args);
});

subRoute('vegetables', () => {
	console.log('vegetable を mount します')
	riot.mount('#content', 'vegetable');
});
subRoute('vegetables/carrot', () => {
	 console.log('subRoute carrot');
	 riot.mount('#page', 'carrot', { name: "にんじん" });
});
subRoute('vegetables/pumpkin', () => {
	console.log('subRoute pumpkin');
	 riot.mount('#page', 'pumpkin', { name: "かぼちゃ" });
});
subRoute('vegetables/lettuce', () => {
	console.log('subRoute lettuce');
	 riot.mount('#page', 'lettuce', { name: "れたす" });
});

subRoute('fruits', () => {
	riot.mount('#content', 'fruit');
});
// subRoute('fruits/*', () => {
// 	 riot.mount('#page', 'fruit-detail');
// });

subRoute('meats', () => {
	riot.mount('#content', 'meat');
});