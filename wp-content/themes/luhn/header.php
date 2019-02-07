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
-->
<html <?php language_attributes(); ?>>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title><?php wp_title('|'); ?></title>
    <?php wp_head(); ?>
</head>
<body <?php body_class(); ?>>
	<header>
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
				<div id="logo">
					<img src="<?php bloginfo('template_directory'); ?>/dist/img/logo.gif" alt="Animation of the luhn logo">
					<p class="logo-text">- Choose your favorite element - <br>or <br> scroll down</p>
				</div>

				<nav class="global-menu">
					<ul class="global-menu__wrap">
						<li class="global-menu__item contact-link"><a href="#" aria-label="contact"><span class="big-menu">Con</span>tact</a></li>
						<li class="global-menu__item design-link"><a href="#">Design</a></li>
						<li class="global-menu__item web-link"><a href="#"> web</a></li>
						<li class="global-menu__item motion-link"><a href="#" aria-label="Motion graphics">Mo<br>tion</a></li>
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
		