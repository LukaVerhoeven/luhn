/*************************
 *          Base        	 *
 **************************/
import '../../sass/hometest.scss';
import '../../sass/layout/_header.scss';
import '../../sass/layout/_footer.scss';
import '../../sass/main.scss';

import './share-button.js';

class Home {
	constructor() {}

	start() {
		console.log('Homepage running...');
	}
}

(() => {
	const script = new Home();
	script.start();
})();
