<a href="<?php the_permalink() ?>" class="post-block js-tilt" data-tilt>
    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
        <!-- thumbnail -->
        <div class="thumbnail">
            <?php if( has_post_thumbnail() ): ?>
                 <?php the_post_thumbnail('thumnail'); ?>
            <?php endif; ?>
            <div class="overlay <?php the_field('card_color'); ?>"></div>
        </div>

        <!-- corner-top -->
        <div class="top-right-corner">
            <span class="line-horizontal"></span>
            <span class="line-vertical"></span>
        </div>

        <!-- text-block -->
        <div class="post-text">
            <h1><?php the_title()?></h1>
            <?php the_content()?>
        </div>
        
        <!-- corner bottom -->
        <div class="left-bottom-corner">
            <span class="line-vertical"></span>
            <span class="line-horizontal"></span>
        </div>
    </article>
</a>