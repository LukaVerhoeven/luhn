<a href="<?php the_permalink() ?>" data-url="<?php the_permalink() ?>" class="js-animated_url post-block js-tilt" data-tilt>
        
    <article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
        <!-- thumbnail -->
        <?php $squareCover = (get_field('square_cover_foto') === true) ? "square" : ""; ?>
        <div class="thumbnail <?php echo $squareCover; ?>" >
            <?php if( has_post_thumbnail() ): ?>
                 <?php the_post_thumbnail('thumnail'); ?>
            <?php endif; ?>
            <div class="overlay <?php the_field('card_color'); ?>"></div>
        </div>
        
        <div class="corner-container">
            <!-- corner-top -->
            <div class="top-right-corner">
                <span class="line line-horizontal"></span>
                <span class="line line-vertical"></span>
            </div>
            <!-- corner bottom -->
            <div class="left-bottom-corner">
                <span class="line line-vertical"></span>
                <span class="line line-horizontal"></span>
            </div>
        </div>

        <!-- text-block -->
        <div class="post-text">
            <h1><?php the_title()?></h1>
            <?php the_content()?>
        </div>
   
    </article>
</a>