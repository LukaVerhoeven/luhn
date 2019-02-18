<?php get_header(); ?>
<main>
    
  <?php   
  $counter = 0;

/*
*  Loop through a Flexible Content field and display it's content with different views for different layouts
*/

while(the_flexible_field("page-content")): ?>

	<?php if(get_row_layout() == "homepage_block"): // layout: Content ?>

		<section class="home-section <?php the_sub_field("style_type")?>">
			<div class="home-content">
				<!-- block title -->
				<h1>
					<?php the_sub_field("title_intro"); ?>
					<span class="title-big"><?php the_sub_field("title"); ?></span>
				</h1>

				<!-- rulers -->
				<div class="ruler"></div>
				<div class="ruler2"></div>

				<?php if(get_sub_field("style_type") != "contact"): ?>
					<!-- block text -->
					<p class="home-text"> <?php the_sub_field("text"); ?> </p>

				<?php elseif(get_sub_field("style_type") == "contact"): ?>
					<!-- contact button-->
					<a class="contact-btn" href="#"><?php the_sub_field("button_text"); ?></a>
				<?php endif; ?>

				<?php if(get_sub_field("style_type") == "skills"): ?>
					<!-- skill cubes -->
					<?php get_template_part('content','skills'); ?>
				<?php endif; ?>

			</div>
			<!-- 3d background -->
			<div class="home-bg box<?php echo $counter?> clearfix">
				<div class="shape"></div>
				<div class="shape"></div>
				<div class="shape"></div>
			</div>
			<!-- vertical text -->
			<p class=user-text> <?php the_sub_field("user_text"); ?> </p>

			<!-- skills project button -->
			<?php if(get_sub_field("style_type") == "skills"): ?>
				<div class="project-btn-container clearfix">
					<div class="circle-of-lines">
						<div class="line-container">
							<?php for ($x = 0; $x <= 50; $x++) : ?>
							<span class="line"></span>
							<?php endfor; ?>
						</div>
					</div>
					<div class="project-btn-bg"></div>
					<div class="project-btn-content">
						<?php $links= ["web", "motion"]; ?>
						<a class="project-btn" href="/category/<?php echo $links[array_rand($links)]; ?>">
							Check out 
							<span class="project-btn-span"> <i class="icon-arrow"></i> <span class="hide-mobile">some</span> projects</span> 
							<span class="underline"></span>
						</a>
					</div>
				</div>
			<?php endif; ?>
		</section>

		<div class="divider-block">
			<div class="graphic<?php echo $counter+1?>"></div>
			<div class="vertical-ruler"></div>
		</div>

	<?php endif; ?>
	<?php $counter++?>
<?php endwhile; ?>




</main>
<?php get_footer(); ?>