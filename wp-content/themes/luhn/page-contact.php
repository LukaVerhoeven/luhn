<?php get_header(); ?>
<?php
    if (is_page('contact')) { 
        if ( function_exists( 'wpcf7_enqueue_scripts' ) ) {
                wpcf7_enqueue_scripts();
        }
        if ( function_exists( 'wpcf7_enqueue_styles' ) ) {
                wpcf7_enqueue_styles();
        }
    }
?>

<main class="contact-page">
<h1>Let's <br><span class="big-text">get in touch</span> And <br>Create something great togheter</h1>

<section class="personal-data">
    <div class="round-img">
        <?php $picture = get_field('profile_picture'); ?>
        <?php echo wp_get_attachment_image( $picture['id'], "fullpage" ) ?>
    </div>
    <h1><?php the_field('my_name'); ?></h1>
    <address>
        <a href="tel:<?php the_field('my_number'); ?>" title="Call to Luhn"><?php the_field('my_number'); ?></a>
        <a href="mailto:<?php the_field('my_email'); ?>" title="Mail to Luhn"><?php the_field('my_email'); ?></a>
    </address>
</section>

<div class="contact-form">
    <p class="motivation"><?php the_field('contact_motivation'); ?></p>
    <div class="form form-md" id="contactform">
        <?php
            // print contact form 7 (functions.php removes the span)
            if ( have_posts() ) : while ( have_posts() ) : the_post(); the_content(); endwhile; endif; ?>
    </div>
</div>
</main>
<?php get_footer(); ?>
