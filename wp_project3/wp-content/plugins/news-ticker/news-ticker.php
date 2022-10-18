<?php 
/**
* Plugin Name: News Ticker
* Plugin URI: http://bdprogrammers.com
* Description: News Scrolling from Custom Post Type.
* Version: 1.0.0
* Author: Rabbany
* Author URI: http://rabbany.com
* License: GPL2
*/

function NewsTicker_init(){
    wp_enqueue_style( 'newsT',  plugins_url('/css/eocjs-newsticker.css', __FILE__) );
	wp_enqueue_script( 'newsT', plugins_url('/js/eocjs-newsticker.js', __FILE__), array(), '1.0.0', true );
    wp_enqueue_script( 'newsCustom', plugins_url('/js/custom.js', __FILE__), array(), '1.0.0', true );
        
    $sql = new WP_Query(array(
        'post_type'=> 'news',
        'posts_per_page'=>3
    ));

    $content = '<div id="ticker">';
    if($sql->have_posts()): 
        while($sql->have_posts()): $sql->the_post();
        $content .= get_the_title() . "*****";

    endwhile;    
    endif;    
    
    return $content .= '</div>';

}
   
    function news_post_type() {
        $args = array(
            'public'    => true,
            'label'     => __( 'Breaking News', 'newsticker' ),
            'menu_icon' => 'dashicons-media-text',
            'supports'  => array( 'title' ),
        );
        register_post_type( 'news', $args );
    }
    add_action( 'init', 'news_post_type');


    add_shortcode('mynews', 'NewsTicker_init');

 //add_action( 'wp_enqueue_scripts', 'NewsTicker_init');


?>