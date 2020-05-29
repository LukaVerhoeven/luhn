var link = document.getElementsByClassName('js-animated_url');
if (!isDesktop) {
	for (var i = 0; i < link.length; i++) {
		link[i].addEventListener('click', function (e) {
			e.preventDefault();
			// delay hyperlink for animation
			var url = this.dataset.url;
			setTimeout(function () {
				window.location.href = url;
			}, 250);
		});
	}
}
