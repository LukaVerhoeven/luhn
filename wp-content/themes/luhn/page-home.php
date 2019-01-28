<?php get_header(); ?>
<main>
    
    <img id="logo" src="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif" alt="Animation of the luhn logo">

  <?php   
  $counter = 0;

/*
*  Loop through a Flexible Content field and display it's content with different views for different layouts
*/

while(the_flexible_field("flexible")): ?>

	<?php if(get_row_layout() == "homepage_title_text"): // layout: Content ?>

		<section class="home-section <?php the_sub_field("style_type")?>">
			<div class="home-content">
				<h1>
					<?php the_sub_field("title_intro"); ?>
					<span class="title-big"><?php the_sub_field("title"); ?></span>
				</h1>
				<div class="ruler"></div>
				<div class="ruler2"></div>
				<?php if(get_sub_field("style_type") != "contact"): ?>
					<p class="home-text"> <?php the_sub_field("text"); ?> </p>
				<?php elseif(get_sub_field("style_type") == "contact"): ?>
					<a href=""><?php the_sub_field("button_text"); ?></a>
				<?php endif; ?>
				
			</div>
			<div class="home-bg box<?php echo $counter?> clearfix">
				<div class="shape1"></div>
				<div class="shape2"></div>
				<div class="shape3"></div>
			</div>
			<p class=user-text> <?php the_sub_field("user_text"); ?> </p>

			<?php if(get_sub_field("style_type") == "skills"): ?>
				<div class="project-btn-container">
					<a class="project-btn" href="#">
						Check out 
						<span class="project-btn-span"> <i class="icon-arrow"></i> <span class="hide-mobile">some</span> projects</span> 
					</a>
				</div>
			<?php endif; ?>
		</section>

		<div class="divider-block">
			<div class="graphic<?php echo $counter+1?>"></div>
			<div class="vertical-ruler"></div>
		</div>
	<?php elseif(get_row_layout() == "featured_posts"): // layout: Featured Posts ?>

		<div>
			<h2><?php the_sub_field("title"); ?></h2>
			<?php the_sub_field("content"); ?>

			<?php if(get_sub_field("posts")): ?>
				<ul>
				<?php foreach(get_sub_field("posts") as $p): ?>
					<li><a href="<?php echo get_permalink($p->ID); ?>"><?php echo get_the_title($p->ID); ?></a></li>
				<?php endforeach; ?>
				</ul>
			<?php endif; ?>

		</div>

	<?php endif; ?>
	<?php $counter++?>
<?php endwhile; ?>




</main>
<?php get_footer(); ?>