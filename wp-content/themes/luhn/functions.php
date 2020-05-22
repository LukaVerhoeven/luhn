
	<?php

    /* ==========================================
	 			Include scripts
	==========================================*/
    function awesome_script_enqueue() {
        // fonts
		wp_enqueue_style('Poppins', 'https://fonts.googleapis.com/css?family=Poppins:200&font-display=swap', array(), '1.0.0', 'all');
		
        //css
        // wp_enqueue_style('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css', array(), '4.1.1', 'all');
		wp_enqueue_style('main', get_template_directory_uri() . '/dist/css/main.css', array(), '1.0.0', 'all');
		wp_enqueue_style('libraries', get_template_directory_uri() . '/dist/css/libraries.min.css', array(), '1.0.0', 'all');
				// css is loaded injs
			

		// disable default wp crap
		remove_action( 'wp_head', 'print_emoji_detection_script', 7 );
		remove_action( 'wp_print_styles', 'print_emoji_styles' );
		// Disable REST API link tag
		remove_action('wp_head', 'rest_output_link_wp_head', 10);
		// Disable oEmbed Discovery Links
		remove_action('wp_head', 'wp_oembed_add_discovery_links', 10);
		// Disable REST API link in HTTP headers
		remove_action('template_redirect', 'rest_output_link_header', 11, 0);
		remove_action('wp_head', 'rsd_link');

		// CDNS
		// Jquery
		if(is_category() || is_single()){
			wp_register_script('jquery3', 'https://code.jquery.com/jquery-3.3.1.min.js', array(), '3.3.1', true); // jQuery v3
			wp_enqueue_script('jquery3');
			wp_script_add_data( 'jquery3', array( 'integrity', 'crossorigin' ) , array( 'sha256-FgpCb/KJQlLNfOu91ta32o/NMZxltwRo8QtmkMRdAu8=', 'anonymous' ) );
		}

		// tiltjs
		if (is_category() &&  ! wp_is_mobile()) { 
			wp_enqueue_script('tiltjs', 'https://cdnjs.cloudflare.com/ajax/libs/tilt.js/1.2.1/tilt.jquery.min.js', array(), '1.2.1', true);
		}

		// distort effect
		if( ! wp_is_mobile() && is_single()){
			// http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/plugins/CSSPlugin.min.js
			wp_enqueue_script('imagesloaded', 'https://unpkg.com/imagesloaded@4/imagesloaded.pkgd.min.js', array(), '4.0.0', true);
			wp_enqueue_script('three', 'https://cdnjs.cloudflare.com/ajax/libs/three.js/101/three.min.js', array(), '1.0.1', true);
			wp_enqueue_script('TweenMax', 'https://cdnjs.cloudflare.com/ajax/libs/gsap/2.0.2/TweenMax.min.js', array(), '2.0.2', true);
			// wp_enqueue_script('TweenMax', 'http://cdnjs.cloudflare.com/ajax/libs/gsap/latest/TweenLite.min.js', array(), '1.20.3', true);
		}
		
		// parallax
		if ( ! wp_is_mobile() && is_page('home')) { 
			wp_enqueue_script( 'parallax',get_template_directory_uri() . '/dist/js/parallax.min.js', array (), '1.0.0', true ); 
		} 

		// js
		wp_enqueue_script('customjs', get_template_directory_uri() . '/dist/js/libraries.js', array(), '1.0.0', true);

    }

	add_action( 'wp_enqueue_scripts', 'awesome_script_enqueue');

/* ==========================================
		Async script attribute (for cdn)
========================================== */
	add_filter( 'script_loader_tag', function ( $tag, $handle ) {
		$scripts = ["jquery-3", "tilt", "three", "TweenMax", "imagesloaded"];
		foreach($scripts as $script) {
			if (strpos($handle,$script) !== false) {

				return str_replace( ' src', ' async src', $tag );
			}else{
				return $tag;
			}
		}
	}, 10, 2 );

	// ENQUE ASYNC SCRIPT: wp_enqueue_script('dcsnt', '/js/jquery.social.media.tabs.1.7.1.min.js#asyncload' )
	function add_async_forscript($url)
	{
			if (strpos($url, '#asyncload')===false)
					return $url;
			else if (is_admin())
					return str_replace('#asyncload', '', $url);
			else
					return str_replace('#asyncload', '', $url)."' async='async"; 
	}
add_filter('clean_url', 'add_async_forscript', 11, 1);
/* =======================================================
    Remove unused deafault wp jquery1 + jquery-migrate
========================================================== */

function my_jquery_enqueue() {
	wp_deregister_script('jquery');
	wp_deregister_script('jquery-migrate');
}
if (!is_admin()) add_action("wp_enqueue_scripts", "my_jquery_enqueue", 11);

/* ==========================================
			 Theme support function
	========================================== */
	add_theme_support('post-thumbnails');

/* ==========================================
			 increase upload size
	========================================== */

	@ini_set( 'upload_max_size' , '64M' );

/* ==========================================
		 Youtube add enableAPI to url
	========================================== */	
	function my_plugin_enable_js_api( $html, $url, $args ) {
 
		/* Modify video parameters. */
		if ( strstr( $html,'youtube.com/embed/' ) ) {
			$html = str_replace( '?feature=oembed', '?feature=oembed&enablejsapi=1', $html );
		}
		
		return $html;
	}
	add_filter( 'oembed_result', 'my_plugin_enable_js_api', 10, 3 );
/* ==========================================
		Larger max-width srcset images
	========================================== */		
	add_theme_support( 'post-thumbnails' );
	// add large screen sizes ( for srcset )
	add_image_size( 'extra-large', 1200, 9999 );
	add_image_size( 'fullpage', 1600, 9999 );

	// add thumbnail sizes (for srcset )
	add_image_size( 'thumbnail-medium', 200, 200, true ); // Hard Crop Mode
	add_image_size( 'thumbnail-large', 500, 500, true ); 
	add_image_size( 'thumbnail-fullpage', 800, 800, true ); 

/* ==========================================
		Contact form remove <span>
	========================================== */
	add_filter( 'wpcf7_load_js', '__return_false' );
	add_filter( 'wpcf7_load_css', '__return_false' );

	add_filter('wpcf7_form_elements', function($content) {
		// removes span
		$content = preg_replace('/<(span).*?class="\s*(?:.*\s)?wpcf7-form-control-wrap(?:\s[^"]+)?\s*"[^\>]*>(.*)<\/\1>/i', '\2', $content);
		// make input required (fixes css style)
		$str_pos = strpos( $content, 'value' );
		$content = str_replace ( 'aria-required="true"', 'aria-required="true" required', $content);
		// remove "novalidate" from the form
		// $content = str_replace ( 'novalidate="novalidate"', '', $content);
		return $content;
	});
	
/* ==========================================
	  add favicon to admin & login panel 
	========================================== */
	// First, create a function that includes the path to your favicon
	function add_favicon() {
		$favicon_url = get_stylesheet_directory_uri() . '/dist/img/favicon/favicon.ico';
		echo '<link rel="shortcut icon" href="' . $favicon_url . '" />';
	}

	add_action('login_head', 'add_favicon');
	add_action('admin_head', 'add_favicon');
/* ==========================================
			Custom admin panel logo
	========================================== */



		// custom image
	function wpb_custom_logo() {
		echo '
		<style type="text/css">
		#wpadminbar #wp-admin-bar-wp-logo > .ab-item .ab-icon:before {
		background-image: url(' . get_bloginfo('stylesheet_directory') . '/src/img/admin-logo.png) !important;
		background-position: 0 0;
		color:rgba(0, 0, 0, 0);
		display:block;
		width: 60px;
		height: 30px;
		background-size:cover;
		}
		#wpadminbar #wp-admin-bar-wp-logo > .ab-item .ab-icon, #wpadminbar #wp-admin-bar-wp-logo.hover > .ab-item .ab-icon {
		background-position: 0 0;
		width: 70px;
		height: 30px;
		padding:0 !important;
		}
		</style>
		';
	}

	add_action('wp_before_admin_bar_render', 'wpb_custom_logo');

	// custom menu items
	function remove_admin_bar_links() {
	    global $wp_admin_bar;
	    // $wp_admin_bar->remove_menu('wp-logo');          // Remove the Wordpress logo
	    $wp_admin_bar->remove_menu('about');            // Remove the about Wordpress link
	    $wp_admin_bar->remove_menu('wporg');            // Remove the Wordpress.org link
	    $wp_admin_bar->remove_menu('documentation');    // Remove the Wordpress documentation link
	    $wp_admin_bar->remove_menu('support-forums');   // Remove the support forums link
	    $wp_admin_bar->remove_menu('feedback');         // Remove the feedback link
	    // $wp_admin_bar->remove_menu('site-name');        // Remove the site name menu
	    // $wp_admin_bar->remove_menu('view-site');        // Remove the view site link
	    // $wp_admin_bar->remove_menu('updates');          // Remove the updates link
	    // $wp_admin_bar->remove_menu('comments');         // Remove the comments link
	    // $wp_admin_bar->remove_menu('new-content');      // Remove the content link
	    // $wp_admin_bar->remove_menu('w3tc');             // If you use w3 total cache remove the performance link
	    // $wp_admin_bar->remove_menu('my-account');       // Remove the user details tab
		// $wp_admin_bar->remove_menu('wpseo-menu'); 

		// edit url of logo and meta title
		$wp_admin_bar->add_menu( array(
			'id'         => 'wp-logo',
			'title'         => '<span class="ab-icon"></span>',
			'href'         =>  __('https://luhn.be/'),//replace this url with the one of your choice
			'meta'         => array(
				'title' => __( 'created by Luka Verhoeven' ),
			),
		) );

		// add menu item
        $wp_admin_bar->add_menu( array(
            'parent' => 'wp-logo',
            'id'     => 'about',
            'title'  => __('About Luhn'),
            // 'href'  => self_admin_url( 'about.php' ),
			'href'  => __('https://luhn.be/'),
        ) );



	}

	add_action( 'wp_before_admin_bar_render', 'remove_admin_bar_links' );


/* ==========================================
	Customize admin footer text
	========================================== */

	//
	function custom_admin_footer() {
	echo 'website created by <a href="https://luhn.be">LUHN</a>';
	}

	add_filter('admin_footer_text', 'custom_admin_footer');

/* ==========================================
	Customize login logo
	========================================== */
	function custom_loginlogo() {
		echo '<style type="text/css">
		h1 a {background-image: url('.get_bloginfo('template_directory').'/src/img/login-logo.png) !important; background-size:contain !important; width:auto !important; }
		</style>';
	}
	add_action('login_head', 'custom_loginlogo');

/* ==========================================
	Remove/hide menu items
	========================================== */
	function my_remove_menu_pages() {
		/* remove for editor and below, but not administrator */
		if ( ! current_user_can('manage_options') ) {
			remove_menu_page( 'edit.php?post_type=acf-field-group' );
			remove_menu_page( 'wpcf7' );
			remove_menu_page( 'wpseo_dashboard' );
			remove_menu_page( 'ai1wm_export' );
			// remove_submenu_page( 'edit.php', 'edit-tags.php?taxonomy=post_tag' );
			// remove_submenu_page( 'edit.php', 'edit-tags.php?taxonomy=category' );
		}
	}
	add_action( 'admin_menu', 'my_remove_menu_pages' );
