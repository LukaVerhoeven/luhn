<?php get_header(); ?>
  <div class="row">
    <h1 class="post-title"> <?php single_term_title();?> </h1>
  </div>

  <div class="row post-container">

  		<?php

  		if( have_posts() ):

  			while( have_posts() ): the_post(); ?>

  				<?php get_template_part('content'); ?>

  			<?php endwhile;

  		endif;

  		?>


  </div>

<?php get_footer(); ?>
