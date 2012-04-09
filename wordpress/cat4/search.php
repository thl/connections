<?php get_header(); ?>


	<div id="content">

	<?php if (have_posts()) : ?>

		<h2>Search Results</h2>

		<?php while (have_posts()) : the_post(); ?>

		<?php include (TEMPLATEPATH . "/loop.php"); ?>
		
		<?php endwhile; ?>

		<div class="navigation">
			<div class="left"><?php next_posts_link('&laquo; Older Entries') ?></div>
			<div class="right"><?php previous_posts_link('Newer Entries &raquo;') ?></div>
		</div>

	<?php else : ?>

		<h2>No items found. Try a different search?</h2>

	<?php endif; ?>

	</div>

<?php //get_sidebar(); ?>

<?php get_footer(); ?>