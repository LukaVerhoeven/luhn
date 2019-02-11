<section class="single-header">
    <header>
        <h1><?php the_title()?></h1>
        <?php the_content()?>
    </header>
    <div class="cover-image">
        <?php if( has_post_thumbnail() ): ?>
            <?php the_post_thumbnail('thumnail'); ?>
        <?php endif; ?>
    </div>
    <p class="single-intro <?php the_field('card_color'); ?>"> <?php the_field('intro_text'); ?></p>
</section>

<?php
    // check if the repeater field has rows of data
    if (have_rows('post_content')):
         // loop through the rows of data
        while (have_rows('post_content')): the_row();?>

            <section class="<?php echo get_row_layout() ?>">
                <!-- VIDEO  -->
               <?php if (get_row_layout()=="video"): 
                    $image = get_sub_field('cover_image'); ?>
                    <!-- video -->
                    <div class="video-container">
                        <?php the_sub_field('video_url') ?>
                    </div>
                    <!-- cover image -->
                    <div class="img-container" id="playvideo">
                        <div class="cover">
                            <?php echo wp_get_attachment_image( $image['id'], "medium" ) ?>
                        </div>
                        <div class="cover-overlay">
                            <i class="icon-play"></i>
                        </div>
                    </div>
   
               <!-- GALLERY  -->
               <?php elseif (get_row_layout()=="gallery"): 
                   $images = get_sub_field('images'); ?>
                   <?php foreach( $images as $image ): ?>
                   <li>
                       <a href="<?php echo $image['url']; ?>">
                           <img src="<?php echo $image['sizes']['thumbnail']; ?>" alt="<?php echo $image['alt']; ?>" />
                       </a>
                       <p><?php echo $image['caption']; ?></p>
                   </li>                
                   <?php endforeach; ?>
   
               <!-- SINGLE IMAGE  -->
               <?php elseif (get_row_layout()=="image"): 
                   $image = get_sub_field('single_image');?>
                   
                   <?php echo wp_get_attachment_image( $image['id'], "medium" ) ?>
   
               <!-- TEXT  -->
               <?php elseif (get_row_layout()=="text_block"): ?>
                   <?php the_sub_field('text') ?>
               <?php endif; ?>
            </section>


        <?php 
        // End of loop
        endwhile;
    endif;
?>