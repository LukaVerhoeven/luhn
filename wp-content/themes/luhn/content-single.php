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
                <?php echo the_field('intro_text'); ?>
        </div>
    </div>
</section>

<?php
    // check if the repeater field has rows of data
    if (have_rows('post_content')):
         // loop through the rows of data
        while (have_rows('post_content')): the_row();?>

            <section class="<?php echo get_row_layout() ?>">
                <?php if (get_row_layout()=="iframe"): 
                    $image = get_sub_field('cover_image'); ?>
                <!-- IFRAME  -->
                  
                    <!-- title-cube -->
                    <div class="title-cube-line">
                        <div class="title-cube <?php the_sub_field('block_size'); ?>">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front"><?php the_sub_field('block_title'); ?></h2>
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
                        
                        <div class="cover-overlay <?php if(get_sub_field('dark_overlay')){  echo "dark"; } ?>">
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

                <?php elseif (get_row_layout()=="video"): 
                    $image = get_sub_field('cover_image'); ?>
                <!-- VIDEO  -->
                
                    <!-- title-cube -->
                    <div class="title-cube-line">
                        <div class="title-cube <?php the_sub_field('block_size'); ?>">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front"><?php the_sub_field('block_title'); ?></h2>
                        </div>
                        <div class="long-line"></div>
                    </div>
                    <!-- video -->
                    <div class="video-container ">
                    <?php $videoID= get_row_index(); ?>
                    <video id="video<?php echo $videoID ?>" preload="none" poster="<?php echo $image['url'] ?>" controls>
                        <source src="<?php the_sub_field('mp4'); ?>" type="video/mp4">
                        <source src="<?php the_sub_field('webm'); ?>" type="video/webm">
                        <source src="<?php the_sub_field('ogg'); ?>" type="video/ogg">
                        <a href="video/EDC.mp4">Download deze video. (Je browser support geen videos)</a>
                    </video>
                      
                    </div>
                    <!-- cover image -->
                    <div class="img-container js-video" data-video-id="<?php echo $videoID ?>">
                        <div class="cover">
                            <?php echo wp_get_attachment_image( $image['id'], "fullpage" ) ?>
                        </div>
                        <!-- play button -->
                        <div class="cover-overlay <?php if(get_sub_field('dark_overlay')){  echo "dark"; } ?>">
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
                <?php elseif (get_row_layout()=="gallery"): 
                   $images = get_sub_field('images'); ?>
                <!-- GALLERY  -->
                   <div class="title-cube-line">
                        <div class="title-cube <?php the_sub_field('block_size'); ?>">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front"><?php the_sub_field('block_title'); ?></h2>
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
   
                <?php elseif (get_row_layout()=="image"): 
                   $image = get_sub_field('single_image');?>
                <!-- SINGLE IMAGE  -->
                   <div class="title-cube-line">
                        <div class="title-cube <?php the_sub_field('block_size'); ?>">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front"><?php the_sub_field('block_title'); ?></h2>
                        </div>
                        <div class="long-line"></div>
                    </div>
                    
                   <?php echo wp_get_attachment_image( $image['id'], "fullpage" ) ?>
   
                <?php elseif (get_row_layout()=="text_block"): ?>
                <!-- TEXT  -->
                    <div class="title-cube-line">
                        <div class="title-cube <?php the_sub_field('block_size'); ?>">
                            <div class="back"></div>
                            <div class="side-left"></div>
                            <div class="side-right"></div>
                            <div class="back-line-fix"></div>
                            <h2 class="front"><?php the_sub_field('block_title'); ?></h2>
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