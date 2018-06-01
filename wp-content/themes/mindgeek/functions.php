<?php
add_action( 'after_setup_theme', 'troiswa_theme_setup' );
function troiswa_theme_setup() {
    add_theme_support( 'post-thumbnails');
}



add_action( 'init', 'register_menus' );
function register_menus() {
  register_nav_menus( array( 
  		'header-menu' => 'Menu header',
  		'footer-menu' => 'Menu footer') );
}


