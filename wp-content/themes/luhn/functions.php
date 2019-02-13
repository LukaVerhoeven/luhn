
	<?php

    /* ==========================================
	 			Include scripts
	==========================================*/

    function awesome_script_enqueue() {
        //css
        // wp_enqueue_style('bootstrap', 'https://stackpath.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css', array(), '4.1.1', 'all');
		wp_enqueue_style('main', get_template_directory_uri() . '/dist/css/main.css', array(), '1.0.0', 'all');
		wp_enqueue_style('libraries', get_template_directory_uri() . '/dist/css/libraries.min.css', array(), '1.0.0', 'all');
        // css is loaded injs

        // fonts
        wp_enqueue_style('Poppins', 'https://fonts.googleapis.com/css?family=Poppins:200', array(), '1.0.0', 'all');

		// JS for Desktop
		if ( ! wp_is_mobile() && is_page('home')) { 
			wp_enqueue_script( 'script-name',get_template_directory_uri() . '/dist/js/parallax.js', array (), '3.1.0', true ); 
		} 

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
		
		wp_enqueue_script('customjs', get_template_directory_uri() . '/dist/js/libraries.js', array(), '1.0.0', true);

    }

    add_action( 'wp_enqueue_scripts', 'awesome_script_enqueue');
/* ==========================================
			 Theme support function
	========================================== */
	add_theme_support('post-thumbnails');

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
