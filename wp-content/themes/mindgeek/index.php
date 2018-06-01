<?php 
get_header();
?>



<?php
if ( have_posts() ) :

	/* Start the Loop */
	while ( have_posts() ) : the_post();

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>
	<!-- <?php the_title('<h2><a href="' . esc_url( get_permalink() ) . '" rel="bookmark">', '</a></h2>'); ?> -->
	<?php the_post_thumbnail(); ?>
	<div>
		<?php the_content(); ?>
	</div>

</article>


<?php

	endwhile;

	the_posts_pagination();

else :

?>
	<h2>Pas de contenu</h2>
<?php

endif;
?>


<?php
get_footer();

		










