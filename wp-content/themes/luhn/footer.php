

<footer>
<?php if(is_single()):?>
<?php $test = get_the_permalink() ?>
<h2>Share me</h2>
<div class="share-container">
	<a class="shareButton main">
		Share project 
		<i class="share icon-share"></i>
		<svg class="check" style="width:24px;height:24px" viewBox="0 0 24 24">
		<path  d="M21,7L9,19L3.5,13.5L4.91,12.09L9,16.17L19.59,5.59L21,7Z"/></svg>
		<svg class="close" style="width:24px;height:24px" viewBox="0 0 24 24"> 
		<path d="M19,6.41L17.59,5L12,10.59L6.41,5L5,6.41L10.59,12L5,17.59L6.41,19L12,13.41L17.59,19L19,17.59L13.41,12L19,6.41Z" /></svg>
	</a>
	<!-- <a href="#" onclick="javascript:window.open(this.href,\'\', \'menubar=no,toolbar=no,resizable=yes,scrollbars=yes,height=600,width=600\'); return false;"></a> -->
	<a href="#" class="shareButton fb"  href="https://www.facebook.com/sharer?u=<?php $test = get_the_permalink() ?>&lt;??&gt;&amp;t=&lt;?<?php the_title(); ?>&gt;" target="_blank" rel="noopener">share on Facebook<i class="icon-instagram"></i></a>
	<a href="#" class="shareButton tw">Share on twitter <i class="icon-instagram"></i></a>
	<a href="#" class="shareButton ig">Share on instagram <i class="icon-instagram"></i></a>
</div>
<?php elseif(is_page("home")):?>
	<h2>Follow me</h2>
	<a href="https://www.instagram.com/luhn_official/" target="_blank">Share on twitter <i class="icon-instagram"></i></a>
<?php endif; ?>


</footer>

<?php wp_footer(); ?>
<?php if(! wp_is_mobile() && is_page("home")):?>
    <script>
        // init custom parallax
        var scene = document.getElementById('parallax');
        var parallax = new Parallax(scene);
    </script>
<?php endif; ?>
<?php if(! wp_is_mobile() && is_single()):?>
<script>
	imagesLoaded( document.querySelectorAll('img'), () => {
		document.body.classList.remove('loading');
	});

	Array.from(document.querySelectorAll('.grid__item-img')).forEach((el) => {
		const imgs = Array.from(el.querySelectorAll('img'));
		new hoverEffect({
			parent: el,
			intensity: el.dataset.intensity || undefined,
			speedIn: el.dataset.speedin || undefined,
			speedOut: el.dataset.speedout || undefined,
			easing: el.dataset.easing || undefined,
			hover: el.dataset.hover || undefined,
			image1: imgs[0].getAttribute('src'),
			image2: imgs[1].getAttribute('src'),
			displacementImage: el.dataset.displacement
		});
	});
	

</script>  
<?php endif; ?>
</body>
</html>