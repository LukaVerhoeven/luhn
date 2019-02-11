<a href="<?php the_permalink() ?>" class="post-block js-tilt" data-tilt>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<div class="thumbnail">
        <?php if( has_post_thumbnail() ):
		  $post_thumbnail_id = get_post_thumbnail_id();
            $post_thumbnail_url = wp_get_attachment_url( $post_thumbnail_id ); 
            $alt_text = get_post_meta($post_thumbnail_id, '_wp_attachment_image_alt', true); ?>

			<img src="<?php echo $post_thumbnail_url; ?>" alt="<?php echo $alt_text; ?>">
		<?php endif; ?>
		<div class="overlay <?php the_field('card_color'); ?>"></div>

	</div>
    <div class="top-right-corner">
        <span class="line-horizontal"></span>
        <span class="line-vertical"></span>
    </div>
    <div class="post-text">
        <h1><?php the_title()?></h1>
        <?php the_content()?>
    </div>
    <div class="left-bottom-corner">
        <span class="line-vertical"></span>
        <span class="line-horizontal"></span>
    </div>
<!-- 
	<div class="row post-description">
		<?php get_sub_field('post_slogan'); ?>
	</div> -->

</article>
</a>