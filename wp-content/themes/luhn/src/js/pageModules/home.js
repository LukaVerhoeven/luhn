// non global shared chunks can by Dynamicly imported  to generate a chunk
// once generated ==> comment the import and execution in the constructor and load them in fucntions.php

// Shared CSS Chunks (non global)
// const genSharedChunk = () =>
// 	import(
// 		/* webpackChunkName: "sharedChunk"*/ /* webpackPreload: true*/ '../../../sass/layout/_sharedChunk.scss'
// 	);

// LazyLoaded CSS
const getPageCss = () =>
	import(
		/* webpackChunkName: "LLhomepage"*/ /* webpackPrefetch: true*/ '../../../sass/pages/_home.scss'
	);

// Critical CSS (enqueue in functions.php)
import '../../../sass/components/_preloader.scss';
// import '../../../sass/layout/_header.scss';
// import '../../../sass/components/_navigation.scss';

class App {
	constructor() {
		// You can comment the generators once you've got the chunks
		// genSharedChunk();

		// Lazy load css
		getPageCss();

		// LazyLoaded & prefeteched Js
		this.lazyLoadingHover();
	}

	lazyLoadingHover() {
		//this method is more used form importing libraries and using them only when needed
		let buttons = document.querySelectorAll('.js-change_gif');
		for (let i = 0; i < buttons.length; i++) {
			const button = buttons[i];
			button.addEventListener('mouseover', () => {
				if (this.hoverGif == undefined) {
					import(
						/* webpackChunkName: "HoverGif"*/ /* webpackPrefetch: true*/ '../modules/hover-changeGif'
					).then(({ default: instance }) => {
						this.hoverGif = new instance();
					});
				}
			});
		}
	}
	// This won't do the same
	// lazyLoadingHover(variable, getModule, classname) {
	// 	let buttons = document.querySelectorAll(classname);
	// 	for (let i = 0; i < buttons.length; i++) {
	// 		const button = buttons[i];
	// 		button.addEventListener('mouseover', () => {
	// 			if (variable == undefined) {
	// 				// getModule.then(({ default: module }) => {
	// 				// 	variable = new module();
	// 				// });
	// 			}
	// 		});
	// 	}
	// }
	start() {
		// body.has('home', () => {
		//   // This code will run only on the homepage
		//   this.home = new Homepage(this.injector);
		// });
		console.log('Application running...');
	}
}

(() => {
	const app = new App();
	app.start();
})();
