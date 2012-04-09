<?php get_header(); ?>

<div id="content" class="narrow">

	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<?php wp_link_pages('before=<p>&after=</p>&next_or_number=number&pagelink=page %'); ?>

		<?php include (TEMPLATEPATH . "/loop.php"); ?>

	<?php comments_template(); ?>

	<?php endwhile; else: ?>

		<p>Sorry, no posts matched your criteria.</p>

<?php endif; ?>

</div>

<?php get_sidebar(); ?>

<?php get_footer(); ?>
