<?php
/**
 * La configuration de base de votre installation WordPress.
 *
 * Ce fichier contient les réglages de configuration suivants : réglages MySQL,
 * préfixe de table, clés secrètes, langue utilisée, et ABSPATH.
 * Vous pouvez en savoir plus à leur sujet en allant sur
 * {@link http://codex.wordpress.org/fr:Modifier_wp-config.php Modifier
 * wp-config.php}. C’est votre hébergeur qui doit vous donner vos
 * codes MySQL.
 *
 * Ce fichier est utilisé par le script de création de wp-config.php pendant
 * le processus d’installation. Vous n’avez pas à utiliser le site web, vous
 * pouvez simplement renommer ce fichier en "wp-config.php" et remplir les
 * valeurs.
 *
 * @package WordPress
 */

// ** Réglages MySQL - Votre hébergeur doit vous fournir ces informations. ** //
/** Nom de la base de données de WordPress. */
define('DB_NAME', 'wordpress');

/** Utilisateur de la base de données MySQL. */
define('DB_USER', 'root');

/** Mot de passe de la base de données MySQL. */
define('DB_PASSWORD', 'troiswa');

/** Adresse de l’hébergement MySQL. */
define('DB_HOST', 'localhost');

/** Jeu de caractères à utiliser par la base de données lors de la création des tables. */
define('DB_CHARSET', 'utf8mb4');

/** Type de collation de la base de données.
  * N’y touchez que si vous savez ce que vous faites.
  */
define('DB_COLLATE', '');

/**#@+
 * Clés uniques d’authentification et salage.
 *
 * Remplacez les valeurs par défaut par des phrases uniques !
 * Vous pouvez générer des phrases aléatoires en utilisant
 * {@link https://api.wordpress.org/secret-key/1.1/salt/ le service de clefs secrètes de WordPress.org}.
 * Vous pouvez modifier ces phrases à n’importe quel moment, afin d’invalider tous les cookies existants.
 * Cela forcera également tous les utilisateurs à se reconnecter.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         'H8dvhLfaQ!- za:O!-1aK29<|p`~L[&<$W;9*VMpUd7L=).5>afRJ)^(kZh0X)4h');
define('SECURE_AUTH_KEY',  'im;?)oq_S.+RP$Cp{8OF{3mY~XIbDn;2d4~$2E9AS<n!psKD.*EUan)|+0S<maed');
define('LOGGED_IN_KEY',    '+|/uN_ 2;+Er%[5uz89()YXK/H`(iw|pq&ltR.]U/bb@B83G9p&p}29/UPmu4rE9');
define('NONCE_KEY',        '2IBs>g(cXCIb}nun:+XO*}{M#Jwyw]S1{kY7Z#^^T2k})q?Ix^@bRW9ePr?:tFCb');
define('AUTH_SALT',        'igq*2xQC(u(yLO$htzh[TH@o[U^Z&r@.!H_!tbAx##(Vz0ziF0z1S>C8eXOSM$L:');
define('SECURE_AUTH_SALT', '7J{S_!+x?6s$NwqG(2)kiB?/cRK[GAv~sd/TH>dscT!-t{[G#`kUg-o,Q2G.0B.&');
define('LOGGED_IN_SALT',   '(g~Ud?+B7{C~JsIPu9G])[dLeC%7x;C,Lr/X3.$!.fEA@}jn8XS*CpLGVUs1y/_l');
define('NONCE_SALT',       'q`|jhrJB;37Ps]{MFI9fIE7e)m7X]>)tP)Hx0i=/bK48k*KEO1H;(8A0+,`Z`XuX');
/**#@-*/

/**
 * Préfixe de base de données pour les tables de WordPress.
 *
 * Vous pouvez installer plusieurs WordPress sur une seule base de données
 * si vous leur donnez chacune un préfixe unique.
 * N’utilisez que des chiffres, des lettres non-accentuées, et des caractères soulignés !
 */
$table_prefix  = 'wp_';

/**
 * Pour les développeurs : le mode déboguage de WordPress.
 *
 * En passant la valeur suivante à "true", vous activez l’affichage des
 * notifications d’erreurs pendant vos essais.
 * Il est fortemment recommandé que les développeurs d’extensions et
 * de thèmes se servent de WP_DEBUG dans leur environnement de
 * développement.
 *
 * Pour plus d’information sur les autres constantes qui peuvent être utilisées
 * pour le déboguage, rendez-vous sur le Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define('WP_DEBUG', false);

/* C’est tout, ne touchez pas à ce qui suit ! */

/** Chemin absolu vers le dossier de WordPress. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Réglage des variables de WordPress et de ses fichiers inclus. */
require_once(ABSPATH . 'wp-settings.php');