var isSinglePage = document.querySelector('.single') !== null;
// load this script on a project page
if (isSinglePage) {
	// parameters
	var carousel = '.js-carousel';
	var next = '.js-next';
	var prev = '.js-prev';
	var active_class = 'active';
	var active_item = $('.' + active_class);
	var item = $(carousel + ' li');
	var item_amount = item.length;
	var item_width = item.width();
	var item_height = item.height();

	// variables
	var animationTime = 300;
	var vertical_displacement = parseInt(item_height / 2, 10);
	var horizontal_displacement = 0;
	var movement_counter = 1;
	var isAnimating = 0;

	// mobile single carousel
	if (!isDesktop) {
		// Add active class to first elemnt
		var current_active_item = item.first().addClass(active_class);

		$(next).on('click', function (e) {
			e.preventDefault();
			var nextButton = $(this);
			if (movement_counter > -(item_amount - 2)) {
				// translate position
				movement_counter -= 1;
				horizontal_displacement -= item_width;
				item.css(
					'transform',
					'translate(' + horizontal_displacement + 'px, 0)'
				);

				// toggle opacity to next element
				current_active_item.removeClass(active_class);
				current_active_item = current_active_item.next().addClass(active_class);
			} else {
				noMoreSlides(nextButton, 'next');
			}
		});

		$(prev).click(function (e) {
			e.preventDefault();
			var prevButton = $(this);
			if (movement_counter < 1) {
				// translate position
				movement_counter += 1;
				horizontal_displacement += item_width;
				item.css(
					'transform',
					'translate(' + horizontal_displacement + 'px, 0)'
				);

				// toggle opacity to prev element
				current_active_item.removeClass(active_class);
				current_active_item = current_active_item.prev().addClass(active_class);
			} else {
				noMoreSlides(prevButton, 'prev');
			}
		});

		// desktop 3 item carousel
	} else {
		var tile_prev = 0;
		var tile1 = item
			.slice(0, 1)
			.addClass('js-active1')
			.css(
				'transform',
				'translate(0, ' + vertical_displacement * 2 + 'px) scale(1.2)'
			);
		var tile2 = item
			.slice(1, 2)
			.addClass('js-active2')
			.css(
				'transform',
				'translate(0, ' + vertical_displacement + 'px) scale(1.2)'
			);
		var tile3 = item.slice(2, 3).addClass('js-active3');
		var tile_next = item
			.slice(3, 4)
			.addClass('js-active-next')
			.css(
				'transform',
				'translate(0, -' + vertical_displacement + 'px) scale(1.2)'
			);
		var SlidingAnimation = 0;

		$(next).on('click', function (e) {
			fixedHeight();
			e.preventDefault();
			SlidingAnimation = 1;
			setTimeout(function () {
				SlidingAnimation = 0;
			}, animationTime);

			var nextButton = $(this);
			if (movement_counter > -(item_amount - 4)) {
				// translate position
				movement_counter -= 1;
				horizontal_displacement -= item_width;
				// item.css("transform", "translate("+ horizontal_displacement+"px, 0) scale(1.2)");

				// toggle opacity to next element
				tile_prev = tile1
					.removeClass('js-active1')
					.addClass('js-active-prev')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, ' +
							vertical_displacement * 3 +
							'px) scale(1.2)'
					);
				tile1 = tile2
					.removeClass('js-active2')
					.addClass('js-active1')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, ' +
							vertical_displacement * 2 +
							'px) scale(1.2)'
					);
				tile2 = tile3
					.removeClass('js-active3')
					.addClass('js-active2')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, ' +
							vertical_displacement +
							'px) scale(1.2)'
					);
				tile3 = tile_next
					.removeClass('js-active-next')
					.addClass('js-active3')
					.css(
						'transform',
						'translate(' + horizontal_displacement + 'px, 0) scale(1.2)'
					);
				tile_next = tile_next
					.next()
					.addClass('js-active-next')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, -' +
							vertical_displacement +
							'px) scale(1.2)'
					);
			} else {
				noMoreSlides(nextButton, 'next');
			}
		});

		$(prev).click(function (e) {
			e.preventDefault();
			SlidingAnimation = 1;
			setTimeout(function () {
				SlidingAnimation = 0;
			}, animationTime);
			var prevButton = $(this);
			if (movement_counter < 1) {
				// translate position
				movement_counter += 1;
				horizontal_displacement += item_width;
				// item.css("transform", "translate("+ horizontal_displacement+"px, 0) scale(1.2)");

				// toggle opacity to prev element
				tile_next.removeClass('js-active-next');
				tile_next = tile3
					.removeClass('js-active3')
					.addClass('js-active-next')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, -' +
							vertical_displacement +
							'px) scale(1.2)'
					);
				tile3 = tile2
					.removeClass('js-active2')
					.addClass('js-active3')
					.css(
						'transform',
						'translate(' + horizontal_displacement + 'px, 0) scale(1.2)'
					);
				tile2 = tile1
					.removeClass('js-active1')
					.addClass('js-active2')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, ' +
							vertical_displacement +
							'px) scale(1.2)'
					);
				tile1 = tile_prev
					.removeClass('js-active-prev')
					.addClass('js-active1')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, ' +
							vertical_displacement * 2 +
							'px) scale(1.2)'
					);
				tile_prev = tile1
					.prev()
					.addClass('js-active-prev')
					.css(
						'transform',
						'translate(' +
							horizontal_displacement +
							'px, ' +
							vertical_displacement * 3 +
							'px) scale(1.2)'
					);
			} else {
				noMoreSlides(prevButton, 'prev');
			}
		});

		// scale item on hover
		setTimeout(function () {
			var translate;
			item.mouseover(function () {
				if (!SlidingAnimation && !isAnimatingLastSlide) {
					translate = getTranslate($(this));

					$(this).css(
						'transform',
						'translate(' +
							translate[0] +
							'px, ' +
							translate[1] +
							'px) scale(1.3)'
					);
				}
			});
			item.mouseleave(function () {
				if (!SlidingAnimation && !isAnimatingLastSlide) {
					translate = getTranslate($(this));
					$(this).css(
						'transform',
						'translate(' +
							translate[0] +
							'px, ' +
							translate[1] +
							'px) scale(1.2)'
					);
				}
			});
		}, 600);
	}

	// animation when reaching the last slide

	var isAnimatingLastSlide = 0;
	function noMoreSlides(button, direction) {
		if (!isAnimating) {
			isAnimating = 1;
			button.addClass('no-more-slide');
			timeout_ID = setTimeout(function () {
				button.removeClass('no-more-slide');
				isAnimating = 0;
			}, 300);
		}
		if (isDesktop) {
			if (!isAnimatingLastSlide) {
				isAnimatingLastSlide = 1;
				// console.log(getTranslate(item)[0]);

				var currentTranslateX = parseInt(getTranslate(item)[0], 10);
				// console.log(currentTranslateX);

				setTimeout(function () {
					isAnimatingLastSlide = 0;
				}, animationTime * 2);
				if (direction == 'next') {
					var movementX = -parseInt(item_width / 2, 10);
					var movementY = parseInt(vertical_displacement / 2, 10);
				} else if (direction == 'prev') {
					// var movementX = (item_width/3) + currentTranslateX[0];
					var movementX = parseInt(item_width / 2, 10);
					var movementY = -parseInt(vertical_displacement / 2, 10);
				}

				// displace a bit
				var tile1_position = getTranslate(tile1);
				tile1.css(
					'transform',
					'translate(' +
						(tile1_position[0] + movementX) +
						'px, ' +
						(tile1_position[1] + movementY) +
						'px) scale(1.2)'
				);
				console.log(
					tile1_position[0] + movementX,
					tile1_position[1] + movementY
				);
				var tile2_position = getTranslate(tile2);
				tile2.css(
					'transform',
					'translate(' +
						(tile2_position[0] + movementX) +
						'px, ' +
						(tile2_position[1] + movementY) +
						'px) scale(1.2)'
				);
				var tile3_position = getTranslate(tile3);
				tile3.css(
					'transform',
					'translate(' +
						(tile3_position[0] + movementX) +
						'px, ' +
						(tile3_position[1] + movementY) +
						'px) scale(1.2)'
				);

				// remove displacement
				setTimeout(function () {
					console.log(tile1_position[0], tile1_position[1]);
					tile1.css(
						'transform',
						'translate(' +
							tile1_position[0] +
							'px, ' +
							tile1_position[1] +
							'px) scale(1.2)'
					);
					tile2.css(
						'transform',
						'translate(' +
							tile2_position[0] +
							'px, ' +
							tile2_position[1] +
							'px) scale(1.2)'
					);
					tile3.css(
						'transform',
						'translate(' +
							tile3_position[0] +
							'px, ' +
							tile3_position[1] +
							'px) scale(1.2)'
					);
				}, animationTime);
			}
		}
	}

	// the height of the ul changes => this makes it fixed
	var fixHeight = 0;
	function fixedHeight() {
		if (!fixHeight) {
			var heightFix = $(carousel).outerHeight();
			$(carousel).css('max-height', heightFix);
			fixHeight = 1;
		}
	}

	// Obtain the translateX of the transform property of an item
	function getTranslate(obj) {
		var transformMatrix =
			obj.css('-webkit-transform') ||
			obj.css('-moz-transform') ||
			obj.css('-ms-transform') ||
			obj.css('-o-transform') ||
			obj.css('transform');
		var matrix = transformMatrix.replace(/[^0-9\-.,]/g, '').split(',');
		var x = matrix[12] || matrix[4]; //translate x
		var y = matrix[13] || matrix[5]; //translate y

		return [parseInt(x, 10), parseInt(y, 10)];
	}
}
