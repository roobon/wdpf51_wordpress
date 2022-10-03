<?php 

add_theme_support('post-thumbnails');
add_theme_support( 'widgets' );


function  add_custom_sripts(){
    wp_enqueue_style( 'abc', get_stylesheet_uri() );
}

add_action( 'wp_enqueue_scripts', 'add_custom_sripts');

// Registering Menu Loaction
function register_my_menu() {
  register_nav_menu( 'main', __( 'Main Location', 'tokeytheme' ) );
}

add_action( 'after_setup_theme', 'register_my_menu' );

function sidebar_widgets_init() {
 
    register_sidebar( array(
        'name' => __( 'Right Sidebar', 'tokeytheme'),
        'id' => 'sidebar-1',
        'description' => __( 'The main sidebar appears on the right on each page except the front page template', 'wpb' ),
        'before_widget' => '<div id="sidebar">',
        'after_widget' => '</div>'
    
    ) );
    }
 
add_action( 'widgets_init', 'sidebar_widgets_init');