<?php get_header(); ?>

<main>
<?php if(is_category()): ?>
	<nav id="category-nav">
		<ul class="global-menu__wrap clearfix">
			<li class="background-3d motion-link <?php if (is_category('motion')) echo 'active'; ?>">
				<a href="category/motion/" aria-label="Motion graphics">Mo<br>tion</a>
			</li>
			<li class="background-3d design-link <?php if (is_category('design')) echo 'active'; ?>">
				<a href="/category/design/">Design</a>
			</li>
			<li class="background-3d web-link <?php if (is_category('web')) echo 'active'; ?>">
				<a href="category/web/"> web</a>
			</li>
		</ul>
	</nav>
	<?php endif; ?>	

	<div class="post-container clearfix ">
		<?php

			if( have_posts() ):

				while( have_posts() ): the_post(); ?>

					<?php get_template_part('content','category'); ?>

				<?php endwhile;

			endif;

		?>
	</div>
</main>
<?php get_footer(); ?>
