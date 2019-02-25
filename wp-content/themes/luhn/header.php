<!DOCTYPE html>
<!--
									__          __  __      __  __      __  __
								   /\ \        /\ \/\ \    /\ \/\ \    /\ \/\ \
								   \ \ \       \ \ \ \ \   \ \ \_\ \   \ \ `\\ \
									\ \ \  __   \ \ \ \ \   \ \  _  \   \ \ , ` \
									 \ \ \L\ \   \ \ \_\ \   \ \ \ \ \   \ \ \`\ \
									  \ \____/    \ \_____\   \ \_\ \_\   \ \_\ \_\
									   \/___/      \/_____/    \/_/\/_/    \/_/\/_/

								 _______      _______      _______      _______      _______
								/\______\    /\______\    /\______\    /\______\    /\______\
								\/______/    \/______/    \/______/    \/______/    \/______/

	  __                                            __                                                                       __
	 /\ \                                         /\_ \                                                                     /\ \__
	 \_\ \         __       __  __         __     \//\ \         ___       _____         ___ ___          __         ___    \ \ ,_\
	 /'_` \      /'__`\    /\ \/\ \      /'__`\     \ \ \       / __`\    /\ '__`\     /' __` __`\      /'__`\     /' _ `\   \ \ \/
	/\ \L\ \    /\  __/    \ \ \_/ |    /\  __/      \_\ \_    /\ \L\ \   \ \ \L\ \    /\ \/\ \/\ \    /\  __/     /\ \/\ \   \ \ \_
	\ \___,_\   \ \____\    \ \___/     \ \____\     /\____\   \ \____/    \ \ ,__/    \ \_\ \_\ \_\   \ \____\    \ \_\ \_\   \ \__\
	 \/__,_ /    \/____/     \/__/       \/____/     \/____/    \/___/      \ \ \/      \/_/\/_/\/_/    \/____/     \/_/\/_/    \/__/
	                                                                         \ \_\
																			  \/_/
https://luhn.be/																			  
-->
<html <?php language_attributes(); ?>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title><?php wp_title('|'); ?></title>
	<!-- favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="<?php echo get_template_directory_uri()?>/dist/img/favicon/apple-touch-icon.png">
	<link rel="icon" type="image/png" sizes="32x32" href="<?php echo get_template_directory_uri()?>/dist/img/favicon/favicon-32x32.png">
	<link rel="icon" type="image/png" sizes="16x16" href="<?php echo get_template_directory_uri()?>/dist/img/favicon/favicon-16x16.png">
	<link rel="manifest" href="<?php echo get_template_directory_uri()?>/dist/img/favicon/site.webmanifest">
	<link rel="mask-icon" href="<?php echo get_template_directory_uri()?>/dist/img/favicon/safari-pinned-tab.svg" color="#5bbad5">
	<meta name="msapplication-TileColor" content="#2b5797">
	<meta name="theme-color" content="#ffffff">
    <?php wp_head(); ?>
	<!-- <script>    document.documentElement.className = "js-glitch";</script> -->
</head>
<body <?php body_class(); ?>>
	<header >
		<!-- Hamburger menu -->
		<div class="hamburger-menu">
			<div class="content">
				<div class="hamburger js-hover">
					<div class="hamburger__line hamburger__line--01">
						<div class="hamburger__line-in hamburger__line-in--01 hamburger__line-in--demo-5"></div>
					</div>
					<div class="hamburger__line hamburger__line--02">
						<div class="hamburger__line-in hamburger__line-in--02 hamburger__line-in--demo-5"></div>
					</div>
					<div class="hamburger__line hamburger__line--03">
						<div class="hamburger__line-in hamburger__line-in--03 hamburger__line-in--demo-5"></div>
					</div>
					<div class="hamburger__line hamburger__line--cross01">
						<div class="hamburger__line-in hamburger__line-in--cross01 hamburger__line-in--demo-5"></div>
					</div>
					<div class="hamburger__line hamburger__line--cross02">
						<div class="hamburger__line-in hamburger__line-in--cross02 hamburger__line-in--demo-5"></div>
					</div>
				</div>
				<?php if(is_category()):?>		
					<a class="back-button" href="/" ><i class="icon-arrow"></i></a>
				<?php elseif(get_the_category()): 
				$categoryID = get_the_category()[0]->cat_ID;?>
					<a class="back-button" href="<?php echo  get_category_link($categoryID);?>"><i class="icon-arrow"></i></a>
				<?php else: ?>
					<a class="back-button" onclick="window.history.back()"><i class="icon-arrow"></i></a>
				<?php endif; ?>
				<div id="logo">
					<?php if(is_page("home")):?>
						<img class="js-fade" src="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif" alt="Animation of the luhn logo" 
						data-gif1="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif" 
						data-gif2="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif"
						data-gif3="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif"
						data-gif4="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif">
					<?php else: ?>
						<a href="/">
							<img src="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif" alt="Animation of the luhn logo">
						</a>
					<?php endif; ?>
					<p class="logo-text">- Choose your favorite element - <br>or <br> scroll down <br> <i class="icon-arrow"></i></p>
				</div>

				<nav class="global-menu"  id="parallax" data-selector="li" data-hover-only="true">
					<ul class="global-menu__wrap">
						<li data-depth="-0.40" data-category="1" class="js-change_gif global-menu__item contact-link background-3d"><a href="/contact" aria-label="contact"><span class="big-menu">Con</span>tact</a></li>
						<li data-depth="-0.40" data-category="2" class="js-change_gif global-menu__item design-link background-3d"><a href="/category/design/">Design</a></li>
						<li data-depth="-0.40" data-category="3" class="js-change_gif global-menu__item web-link background-3d"><a href="/category/web/"> web</a></li>
						<li data-depth="-0.40" data-category="4" class="js-change_gif global-menu__item motion-link background-3d"><a href="/category/motion/" aria-label="Motion graphics">Mo<br>tion</a></li>
					</ul>
				</nav>
				<svg class="shape-overlays" viewBox="0 0 100 100" preserveAspectRatio="none">
					<defs>
						<linearGradient id="gradient1" x1="0%" y1="0%" x2="0%" y2="100%">
							<stop offset="0%"   stop-color="#4be6d3"/>
							<stop offset="100%" stop-color="#3139e1"/>
						</linearGradient>
						<linearGradient id="gradient2" x1="0%" y1="0%" x2="0%" y2="100%">
							<stop offset="0%"   stop-color="#ffd392"/>
							<stop offset="100%" stop-color="#ff3898"/>
						</linearGradient>
						<linearGradient id="gradient3" x1="0%" y1="0%" x2="0%" y2="100%">
							<stop offset="0%"   stop-color="#110046"/>
							<stop offset="100%" stop-color="#32004a"/>
						</linearGradient>
					</defs>
					<path class="shape-overlays__path"></path>
					<path class="shape-overlays__path"></path>
					<path class="shape-overlays__path"></path>
				</svg>
			</div>
		</div>
		<!-- Hamburger menu -->
	</header>
		