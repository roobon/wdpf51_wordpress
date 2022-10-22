<?php

add_theme_support('title-tag');
add_theme_support( 'custom-logo', array(
    'height' => 26,
    'width'  => 200,
) );
add_theme_support( 'post-thumbnails' );
add_theme_support( 'custom-background' );

function mytheme_add_woocommerce_support() {
    add_theme_support( 'woocommerce' );
}

add_action( 'after_setup_theme', 'mytheme_add_woocommerce_support' );