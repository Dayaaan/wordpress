<?php 
get_header();
?>

<main class="<?php echo get_queried_object()->slug; ?>  container">


<?php if (have_posts()) : ?>

	<h2><?php single_cat_title(); ?></h2>
	<?php the_archive_description( '<p>', '</p>'); ?>
	
	<section class="flex">

		<?php 
			while ( have_posts() ) : 
				the_post(); 
		?>

			<article>
				<h3 class="option"><?php the_title(); ?></h3>

				<?php the_content(); ?>
				<h3><?= get_field('prix'); ?></h3>
				<a href="<?php the_permalink(); ?>">Commander</a>
			</article>
			<?php endwhile; ?>

	</section>
<?php else : ?>
	<p>Pas de contenu</p>

<?php endif; ?>





</main>







<?php
get_footer();
