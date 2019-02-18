<section class="single-header">
    <header class="<?php the_field('card_color'); ?>">
        <h1><?php the_title()?></h1>
        <h2><?php the_field('subtitle'); ?></h2>
    </header>
    <div class="intro-block">
        <div class="cover-image">
            <?php if( has_post_thumbnail() ): ?>
            <div class="grid__item grid__item--bg">
                <div class="grid__item-img" data-displacement="<?php echo get_template_directory_uri()?>/dist/img/displacement/<?php the_field('featured_glitch_effect'); ?>.jpg" data-intensity="-0.65" data-speedIn="1.2" data-speedOut="1.2">
                    <?php the_post_thumbnail('thumbnail-fullpage'); ?>
                    <?php the_post_thumbnail('thumbnail-fullpage'); ?>
                </div>
            </div>
            <?php endif; ?>
        </div>
        <div class="single-intro <?php the_field('card_color'); ?>">
                <p> <?php the_field('intro_text'); ?></p>
        </div>
    </div>
</section>

<?php
    // check if the repeater field has rows of data
    if (have_rows('post_content')):
         // loop through the rows of data
        while (have_rows('post_content')): the_row();?>

            <section class="<?php echo get_row_layout() ?>">
                <!-- VIDEO  -->
               <?php if (get_row_layout()=="iframe"): 
                    $image = get_sub_field('cover_image'); ?>
                  
                    <!-- title-cube -->
                    <div class="title-cube-line">
                        <div class="title-cube">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front">Video</h2>
                        </div>
                        <div class="long-line"></div>
                    </div>
                    <!-- video -->
                    <div class="video-container js-player">
                        <?php
                        $video = get_sub_field('video_url');
                        $videoID= get_row_index();
                        $video = preg_replace('/(<iframe\b[^><]*)>/i', '$1 id="player' . $videoID .'" >', $video);
                        echo $video ?>
                    </div>
                    <!-- cover image -->
                    <div class="img-container js-play js-play-youtube<?php echo $videoID ?> ">
                        <div class="cover">
                            <?php echo wp_get_attachment_image( $image['id'], "fullpage" ) ?>
                        </div>
                        <!-- play button -->
                        <div class="cover-overlay">
                            <i class="icon-play"></i>
                        </div>
                        <!-- video title -->
                        <h2><?php the_sub_field('video_title'); ?></h2>
                        <!-- corner top -->
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
   
               <!-- GALLERY  -->
               <?php elseif (get_row_layout()=="gallery"): 
                   $images = get_sub_field('images'); ?>
                   <div class="title-cube-line">
                        <div class="title-cube">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front">Gallery</h2>
                        </div>
                        <div class="long-line"></div>
                    </div>
                   <div class="carousel-container js-carousel">
                       <ul class="carousel">
                           <?php foreach( $images as $image ): ?>
                           <li>
                               <a href="<?php echo $image['url']; ?>">
                                    <?php echo wp_get_attachment_image( $image['id'], "thumbnail-fullpage" ) ?>
                                </a>
                                <p><?php echo $image['caption']; ?></p>
                            </li>                
                            <?php endforeach; ?>
                        </ul>
                        <a class="prev-button js-prev" href="#"> previous image <i class="icon-arrow"></i></a>
                        <a class="next-button js-next" href="#"> next image <i class="icon-arrow"></i></a>
                   </div>
   
               <!-- SINGLE IMAGE  -->
               <?php elseif (get_row_layout()=="image"): 
                   $image = get_sub_field('single_image');?>
                   <div class="title-cube-line">
                        <div class="title-cube">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front">Picture</h2>
                        </div>
                        <div class="long-line"></div>
                    </div>
                    
                   <?php echo wp_get_attachment_image( $image['id'], "fullpage" ) ?>
   
               <!-- TEXT  -->
               <?php elseif (get_row_layout()=="text_block"): ?>
                <div class="title-cube-line">
                    <div class="title-cube">
                        <div class="back"></div>
                        <div class="side-left"></div>
                        <div class="side-right"></div>
                        <div class="back-line-fix"></div>
                        <h2 class="front">Text</h2>
                    </div>
                    <div class="long-line"></div>
                </div>
                   <p><?php the_sub_field('text') ?></p>
               <?php endif; ?>
            </section>


        <?php 
        // End of loop
        endwhile;
    endif;
?>