<?php
/*
Plugin Name: Gestion du type des serveurs
Version: 0.1
Author: Remy
*/

// ajouter une taxonomie "catégories de serveurs"
// (le code est vénèr, pas besoin de tout lire ^^)
function create_servers_hierarchical_taxonomy() {
  $labels = array(
    'name' => 'Catégories de serveurs',
    'singular_name' => 'Catégorie de serveurs',
    'menu_name' => 'Catégories de serveurs',
  );     
  register_taxonomy('server_category',array('post'), array(
    'hierarchical' => true,
    'labels' => $labels,
    'show_ui' => true,
    'show_admin_column' => true,
    'query_var' => true,
    'rewrite' => array( 'slug' => 'server_category' ),
  ));
 
}
add_action( 'init', 'create_servers_hierarchical_taxonomy', 0 );

// ajouter la gestion d'une nouveau type de contenu ("custom post") "Serveurs"
function create_server_post_type() {
  register_post_type( 'server',
    array(
      'labels' => array(
        'name' => 'Serveurs',
        'singular_name' => 'Serveur'
      ),
      'public' => true,
      'has_archive' => true,
      'taxonomies'  => array( 'server_category' )
    )
  );
}
add_action( 'init', 'create_server_post_type' );
