// PRELOAD CSS
// Create Chunks for Preloading (once generated ==> you can comment then in the constructor and load them in fucntions.php)
// reset
// typo
// header
// navigation
// import '../../../sass/pages/_cathegory.scss';

// LazyLoaded CSS
const genPageChunk = () =>
	import(
		/* webpackChunkName: "LLcategory-page"*/
		/* webpackPrefetch: true*/
		'../../../sass/pages/_cathegory.scss'
	);

const getFooterCss = () =>
	import(
		/* webpackChunkName: "LLfooter"*/
		/* webpackPrefetch: true*/
		'../../../sass/layout/_footer.scss'
	);

const getLinesCss = () =>
	import(
		/* webpackChunkName: "LLlines"*/
		/* webpackPrefetch: true*/
		'../../../sass/components/_corner-lines.scss'
	);

// TODO: remove Preloader on other pages

class App {
	constructor() {
		// You can comment the generators once you've got the chunks

		// Lazy load css
		genPageChunk();
		getFooterCss();
		getLinesCss();

		import( /* webpackChunkName: "active-category"*/ /* webpackPrefetch: true*/ '../modules/active-category').then(
			({
				default: instance
			}) => {
				new instance();
			}
		);
	}

	start() {
		// body.has('home', () => {
		//   // This code will run only on the homepage
		//   this.home = new Homepage(this.injector);
		// });
		// console.log('Application running...');
	}
}

(() => {
	const app = new App();
	app.start();
})();