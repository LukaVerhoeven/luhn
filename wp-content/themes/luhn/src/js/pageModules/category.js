// PRELOAD CSS
// Create Chunks for Preloading (once generated ==> you can comment then in the constructor and load them in fucntions.php)
// reset
// typo
// header
// navigation
const genPageChunk = () =>
	import(
		/* webpackChunkName: "PLcategory"*/ /* webpackPrefetch: true*/ '../../../sass/pages/_cathegory.scss'
	);

// LazyLoaded CSS
const getFooterCss = () =>
	import(
		/* webpackChunkName: "LLfooter"*/ /* webpackPrefetch: true*/ '../../../sass/layout/_footer.scss'
	);

// TODO: remove Preloader on other pages

class App {
	constructor() {
		// You can comment the generators once you've got the chunks
		genPageChunk();

		// Lazy load css
		getFooterCss();
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
