// const getFoo = import(
// 	/* webpackChunkName: "foo"*/ /* webpackPreload: true*/ '../hover-changeGif.js'
// );

// const getlodash = () =>
// 	import(/* webpackChunkName: "lodash"*/ /* webpackPreload: true*/ 'lodash');

// getlodash().then((lodash) => {
// 	console.log(lodash.trim('    test    '));
// 	console.log('    test    ');
// });

// LOOK AT NETWORK==> it gets prefetched but it's not executed
const getHomeCss = () =>
	import(
		/* webpackChunkName: "homepage"*/ /* webpackPreload: true*/ '../../../sass/pages/_home.scss'
	);
// const getHomeCss = () =>
// 	import(
// 		/* webpackChunkName: "homeCSS"*/ /* webpackPreload: true*/ '../../../sass/pages/_home.scss'
// 	);
import '../../../sass/components/_navigation.scss';
// import '../sass/components/footer.scss';
// import './html/index.html';
// import isMobile from '../isMobile.js';
// import hoverChangeGif from '../hover-changeGif.js';
// import '../isMobile.js';
// import '../hover-changeGif.js';
// const getFoo = import(
// 	/* webpackChunkName: "foo"*/ /* webpackPreload: true*/ '../hover-changeGif.js'
// );

class App {
	constructor() {
		// getFoo.then(({ default: foo }) => {
		// 	let f = new foo();
		// });
		getHomeCss();
	}

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
