import Device from './isDesktop';
import BrowserDetect from './BrowserDetect';

const hoverGif = class {
	constructor() {
		this.device = new Device();
		this.isDesktop = this.device.isDesktop;
		this.mouseEvent();
	}

	mouseEvent() {
		var isHome = document.querySelector('.home') !== null;

		if (this.isDesktop && isHome) {
			var picture = document.querySelector('#logo picture');
			var source = picture.getElementsByTagName('source');
			var img = picture.getElementsByTagName('img')[0];
			var overlay = document.querySelector('#logo .logo-overlay');
			var changers = document.querySelectorAll('.js-change_gif a');

			for (var i = 0; i < changers.length; i++) {
				changers[i].addEventListener('mouseenter', function () {
					// show the animation
					if (
						BrowserDetect.browser == 'MS Edge' ||
						BrowserDetect.browser == 'Explorer'
					) {
						// ie and edge needs a delay for the new XML request
						setTimeout(function () {
							overlay.classList.add('active');
						}, 170);
					} else {
						overlay.classList.add('active');
					}
					var x =
						this.parentElement.parentElement.dataset.category *
						(picture.offsetWidth / 4);

					// move image to correct letter
					overlay.style.transform = 'translate(' + x + 'px,0)';
					// console.log(this.parentElement.dataset.category,image.offsetWidth, );

					picture.style.transform = 'translate(-' + x + 'px,0)';

					// reset gif animation
					// reset edge and explorer
					if (
						BrowserDetect.browser == 'MS Edge' ||
						BrowserDetect.browser == 'Explorer'
					) {
						for (var i = 0; i < source.length; i++) {
							// weird fix so it will call a new XML every time
							var xhr = new XMLHttpRequest();
							// resetGif
							resetGifEdge(source[i]);
						}
					} else {
						// all other browsers
						img.srcset = img.srcset;
					}
				});

				changers[i].addEventListener('mouseleave', function () {
					// hide animation
					overlay.classList.remove('active');
				});
			}
		}
	}
	resetGifEdge(gif) {
		var xhr = new XMLHttpRequest();
		// Browser will take cached response if it has cache entry with url key.
		var url = '/wp-content/themes/luhn/dist/img/logo.gif';
		xhr.open('GET', url);
		xhr.responseType = 'blob';
		xhr.onload = function () {
			if (xhr.status != 200) {
				// Complain.
				return;
			}
			var blobUrl = URL.createObjectURL(xhr.response);
			gif.srcset = blobUrl;

			setTimeout(function () {
				// Let browser display blob and revoke blob after stack unwind.
				URL.revokeObjectURL(blobUrl);
			}, 0); // You might need to increase delay time for large images.
		};
		xhr.send();
	}
};
export default hoverGif;
