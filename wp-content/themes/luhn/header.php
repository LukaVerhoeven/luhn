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
																			  
https://luhn.be/																			  
-->
<html <?php language_attributes(); ?>>
<head>
	<link rel="preconnect" href="https://www.google-analytics.com" >
	<link rel="preconnect" href="https://fonts.gstatic.com/" >
	<link rel="preconnect" href="https://cdnjs.com/">
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta name="google-site-verification" content="GwlLOTPoI5Xzvs0yi4gDGIucreRvMW2UwXjHR9CVSN8" />
	<meta name="keywords" content="luka, verhoeven, luhn, develoment, visuals, design, web, motion">
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

	<!-- predload images/ videos -->
	<link rel="preload" href="<?php echo get_template_directory_uri()?>/dist/img/logo-min.webm" as="fetch">
	<!-- Async CSS or font -->
	<link rel="preload" href="https://fonts.googleapis.com/css?family=Poppins:200&display=swap" as="style" onload="this.rel='stylesheet'">
	<noscript><link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Poppins:200&font-display=swap"></noscript>

	<!-- Animate on scroll -->

	
	

	


	<script src="https://cdnjs.cloudflare.com/ajax/libs/modernizr/2.8.3/modernizr.min.js" async></script>
		<?php wp_head(); ?>
		
	<!-- <link rel="preload" href="https://unpkg.com/aos@3.0.0-beta.6/dist/aos.css" as="style" onload="this.rel='stylesheet'"/>
	<script src="https://unpkg.com/aos@3.0.0-beta.6/dist/aos.js" defer></script> -->
	<!-- <link rel="stylesheet" href="<?php echo get_template_directory_uri()?>/dist/css/testaos.css"> -->
	<!-- preload script in footer -->
	<!-- <link rel="preload" href='<?php echo get_template_directory_uri()?>/dist/js/libraries.js"' as="script"> -->
	<!-- <link rel="preload" href="https://unpkg.com/aos@3.0.0-beta.6/dist/aos.js" as="script"> -->
	<!-- <script>    document.documentElement.className = "js-glitch";</script> -->
	<style>
		/* PreLoad only works with JavaScript, 
		   if it's not present, don't show loader */
		.no-js #preloader { visibility: hidden; }
		.js #preloader { visibility: visible; }
	</style>
	<script >
			document.onreadystatechange = function() { 
				var loader = document.getElementById("preloader");
				if (document.readyState !== "complete") { 
					loader.classList.remove("hide");
					} else { 
						loader.classList.add("hide");
					} 
			}; 
    </script> 

</head>
<body <?php body_class(); ?> >
	<header >
		<div id="preloader">
			<p>Preparing the visual experience of Luhn</p>
			<div class="lds-ellipsis"><div></div><div></div><div></div><div></div></div>
		</div>
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
						<h1>&#x4c;&#x55;&#x48;&#x4e;</h1>
						<?php if(! wp_is_mobile()):?>
							<div class="animation-container">
								<div class="logo-overlay">
									<picture>
										<source srcset="<?php  bloginfo('template_directory'); ?>/dist/img/logo-min.webm" type="image/webm">	
										<source srcset="<?php  bloginfo('template_directory'); ?>/dist/img/logo.webp" type="image/webp">	
										<source srcset="<?php  bloginfo('template_directory'); ?>/dist/img/logo.gif" type="image/gif">
										<img srcset="<?php  bloginfo('template_directory'); ?>/dist/img/logo.gif" alt="Animation of the luhn logo">
									</picture>
										<!-- <video preload>
											<source src="<?php bloginfo('template_directory'); ?>/dist/img/logo-min.webm" type="video/webm">
										</video> -->
								</div>
							</div>
						<?php endif; ?>
					<?php else: ?>
						<a href="/">
							<h1>Luhn</h1>
						</a>
					<?php endif; ?>
					<p class="logo-text">- Choose your favorite element - <br>or <br> scroll down <br> <i class="icon-arrow"></i></p>
				</div>

				<nav class="global-menu"  id="parallax" data-selector=".global-menu__item " data-hover-only="true">
					<ul class="global-menu__wrap">
						<li class="menu-col">
							<div data-depth="-0.40" data-category="0" class="js-change_gif global-menu__item design-link background-3d"><div class="hovering"><a href="/category/design/">Design</a></div></div>
							<div data-depth="-0.40" data-category="1" class="js-change_gif global-menu__item motion-link background-3d"><div class="hovering"><a href="/category/motion/" aria-label="Motion graphics">Mo<br>tion</a></div></div>
						</li>
						<li class="menu-col">
							<div data-depth="-0.40" data-category="3" class="js-change_gif global-menu__item contact-link background-3d"><div class="hovering"><a href="/contact" aria-label="contact"><span class="big-menu">Con</span>tact</a></div></div>
							<div data-depth="-0.40" data-category="2" class="js-change_gif global-menu__item web-link background-3d"><div class="hovering"><a href="/category/web/"> web</a></div></div>
						</li>
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
		