//
// these easing functions are based on the code of glsl-easing module.
// https://github.com/glslify/glsl-easings
//

const ease = {
	exponentialIn: (t) => {
		return t == 0.0 ? t : Math.pow(2.0, 10.0 * (t - 1.0));
	},
	exponentialOut: (t) => {
		return t == 1.0 ? t : 1.0 - Math.pow(2.0, -10.0 * t);
	},
	exponentialInOut: (t) => {
		return t == 0.0 || t == 1.0
			? t
			: t < 0.5
			? +0.5 * Math.pow(2.0, 20.0 * t - 10.0)
			: -0.5 * Math.pow(2.0, 10.0 - t * 20.0) + 1.0;
	},
	sineOut: (t) => {
		const HALF_PI = 1.5707963267948966;
		return Math.sin(t * HALF_PI);
	},
	circularInOut: (t) => {
		return t < 0.5
			? 0.5 * (1.0 - Math.sqrt(1.0 - 4.0 * t * t))
			: 0.5 * (Math.sqrt((3.0 - 2.0 * t) * (2.0 * t - 1.0)) + 1.0);
	},
	cubicIn: (t) => {
		return t * t * t;
	},
	cubicOut: (t) => {
		const f = t - 1.0;
		return f * f * f + 1.0;
	},
	cubicInOut: (t) => {
		return t < 0.5 ? 4.0 * t * t * t : 0.5 * Math.pow(2.0 * t - 2.0, 3.0) + 1.0;
	},
	quadraticOut: (t) => {
		return -t * (t - 2.0);
	},
	quarticOut: (t) => {
		return Math.pow(t - 1.0, 3.0) * (1.0 - t) + 1.0;
	},
};

class ShapeOverlays {
	constructor(elm) {
		this.elm = elm;
		this.path = elm[0].querySelectorAll('path');
		this.numPoints = 10;
		this.duration = 900;
		this.delayPointsArray = [];
		this.delayPointsMax = 300;
		this.delayPerPath = 250;
		this.timeStart = Date.now();
		this.isOpened = false;
		this.isAnimating = false;
	}
	toggle() {
		this.isAnimating = true;
		for (var i = 0; i < this.numPoints; i++) {
			this.delayPointsArray[i] = Math.random() * this.delayPointsMax;
		}
		if (this.isOpened === false) {
			this.open();
		} else {
			this.close();
		}
	}
	open() {
		this.isOpened = true;
		this.elm[0].classList.add('is-opened');
		// this.elm[1].classList.add('hide-behind-menu');
		this.timeStart = Date.now();
		this.renderLoop();
	}
	close() {
		this.isOpened = false;
		this.elm[0].classList.remove('is-opened');
		// setTimeout(function() {this.elm[1].classList.remove('hide-behind-menu')} , 1000);
		this.timeStart = Date.now();
		this.renderLoop();
	}
	updatePath(time) {
		const points = [];
		for (var i = 0; i < this.numPoints; i++) {
			points[i] =
				(1 -
					ease.cubicInOut(
						Math.min(
							Math.max(time - this.delayPointsArray[i], 0) / this.duration,
							1
						)
					)) *
				100;
		}

		let str = '';
		str += this.isOpened ? `M 0 0 V ${points[0]}` : `M 0 ${points[0]}`;
		for (var i = 0; i < this.numPoints - 1; i++) {
			const p = ((i + 1) / (this.numPoints - 1)) * 100;
			const cp = p - ((1 / (this.numPoints - 1)) * 100) / 2;
			str += `C ${cp} ${points[i]} ${cp} ${points[i + 1]} ${p} ${
				points[i + 1]
			} `;
		}
		str += this.isOpened ? `V 100 H 0` : `V 0 H 0`;
		return str;
	}
	render() {
		if (this.isOpened) {
			for (var i = 0; i < this.path.length; i++) {
				this.path[i].setAttribute(
					'd',
					this.updatePath(Date.now() - (this.timeStart + this.delayPerPath * i))
				);
			}
		} else {
			for (var i = 0; i < this.path.length; i++) {
				this.path[i].setAttribute(
					'd',
					this.updatePath(
						Date.now() -
							(this.timeStart + this.delayPerPath * (this.path.length - i - 1))
					)
				);
			}
		}
	}
	renderLoop() {
		this.render();
		if (
			Date.now() - this.timeStart <
			this.duration +
				this.delayPerPath * (this.path.length - 1) +
				this.delayPointsMax
		) {
			requestAnimationFrame(() => {
				this.renderLoop();
			});
		} else {
			this.isAnimating = false;
		}
	}
	disableScrolling() {
		var x = window.scrollX;
		var y = window.scrollY;
		window.onscroll = function () {
			window.scrollTo(x, y);
		};
	}

	enableScrolling() {
		window.onscroll = function () {};
	}
}
(function () {
	const elmHamburger = document.querySelector('.hamburger');
	const body = document.querySelector('body');
	const gNavItems = document.querySelectorAll('.global-menu__item');
	const elmOverlay = document.querySelector('.shape-overlays');
	const main = document.querySelector('main');
	const elements = [elmOverlay, main];
	const overlay = new ShapeOverlays(elements);

	elmHamburger.addEventListener('click', () => {
		if (overlay.isAnimating) {
			return false;
		}
		overlay.toggle();
		if (overlay.isOpened === true) {
			elmHamburger.classList.add('is-opened-navi');
			overlay.disableScrolling();

			elmHamburger.setAttribute('aria-label', 'Back to the page');
			elmHamburger.setAttribute('title', 'Close');
			for (var i = 0; i < gNavItems.length; i++) {
				gNavItems[i].classList.add('is-opened');
			}
		} else {
			elmHamburger.classList.remove('is-opened-navi');
			overlay.enableScrolling();
			elmHamburger.setAttribute('aria-label', 'Open the hamburger menu');
			elmHamburger.setAttribute('title', 'menu');
			for (var i = 0; i < gNavItems.length; i++) {
				gNavItems[i].classList.remove('is-opened');
			}
		}
	});
})();
