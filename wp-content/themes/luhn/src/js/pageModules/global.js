// Bundle of Critical css used on all pages (enqueue in functions.php)
import '../../../sass/utils/_reset.scss';
import '../../../sass/utils/_typography.scss';
import '../../../sass/layout/_header.scss';
import '../../../sass/components/_navigation.scss';

// Chunks of less important css used on all pages
const getFooterCss = () =>
	import(
		/* webpackChunkName: "LLfooter"*/ /* webpackPrefetch: true*/ '../../../sass/layout/_footer.scss'
	);

const getHamburgerCss = () =>
	import(
		/* webpackChunkName: "LLhamburger"*/ /* webpackPrefetch: true*/ '../../css/hamburger.css'
	);

class Global {
	constructor() {
		// Lazy load css
		getFooterCss();
		getHamburgerCss();
		// this.lazyLoadingHamburger(this.hamburger);
		import(/* webpackChunkName: "hamburger"*/ '../hamburger/colordrip').then(
			({ default: instance }) => {
				new instance();
			}
		);
	}

	// lazyLoadingHamburger(variable) { // not working on mobile ==> more used for libraries
	// 	let buttons = document.querySelectorAll('.hamburger-menu');
	// 	for (let i = 0; i < buttons.length; i++) {
	// 		const button = buttons[i];
	// 		const events = ['click', 'mouseover'];
	// 		for (let j = 0; j < events.length; j++) {
	// 			button.addEventListener(events[j], () => {
	// 				if (variable == undefined) {
	// 					import(
	// 						/* webpackChunkName: "hamburger"*/ /* webpackPrefetch: true*/ '../hamburger/colordrip'
	// 					).then(({ default: instance }) => {
	// 						variable = new instance();
	// 					});
	// 				}
	// 			});
	// 		}
	// 	}
	// }
}

(() => {
	const global = new Global();
})();
