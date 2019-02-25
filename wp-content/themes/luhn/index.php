<?php get_header(); ?>

<main>
<?php if(is_category()): ?>
	<nav id="category-nav">
		<ul class="global-menu__wrap clearfix">
			<li class="background-3d motion-link <?php if (is_category('motion')) echo 'active'; ?>">
				<a class="js-animated_url" data-url="/category/motion/" href="#" aria-label="Motion graphics">Mo<br>tion</a>
			</li>
			<li class="background-3d design-link <?php if (is_category('design')) echo 'active'; ?>">
				<a class="js-animated_url" data-url="/category/design/" href="#" aria-label="Design">Design</a>
			</li>
			<li class="background-3d web-link <?php if (is_category('web')) echo 'active'; ?>">
				<a class="js-animated_url" data-url="/category/web/" href="#" aria-label="web"> web</a>
			</li>
		</ul>
	</nav>
	<?php endif; ?>	

	<?php

	if( have_posts() ):?>
		
		<div class="post-container clearfix ">
			<?php while( have_posts() ): the_post(); ?>

				<?php get_template_part('content','category'); ?>

			<?php endwhile; ?>
		</div>

	<?php else:?>
		<div class="no-post">
			<h2>There is nothing here YET!</h2>
			<p><a href="/contact">Contact me</a> and let fill up these page togheter!</p>
			<p>Or find out out what's behind the other cathegories.</p>
		</div>
	<?php endif;?>

</main>
<?php get_footer(); ?>
