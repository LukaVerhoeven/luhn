<?php get_header(); ?>
<main>
    
    <img id="logo" src="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif" alt="Animation of the luhn logo">

  <div class="row">
    <h1 class="post-title"> <?php the_title();?> </h1>
  </div>
  <?php 

/*
*  Loop through a Flexible Content field and display it's content with different views for different layouts
*/

while(the_flexible_field("flexible")): ?>

	<?php if(get_row_layout() == "title_with_text"): // layout: Content ?>

		<div>
			<?php the_sub_field("title"); ?>
            <!-- <?php the_sub_field("text"); ?> -->
		</div>

	<?php elseif(get_row_layout() == "file"): // layout: File ?>

		<div>
			<a href="<?php the_sub_field("file"); ?>" ><?php the_sub_field("name"); ?></a>
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

<?php endwhile; ?>




</main>
<?php get_footer(); ?>