<?php
/*
Template Name: News
*/
?>

<?php get_header(); ?>

	<div id="content" class="narrow">
	
	<h2>News / <span class="subpage">Latest Posts</span></h2>

<?php
$page = (get_query_var('paged')) ? get_query_var('paged') : 1;
query_posts("showposts=3&paged=$page");
?>

	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
			<?php include (TEMPLATEPATH . "/loop.php"); ?>
		<?php endwhile; ?>

	
		<?php if(function_exists('wp_pagenavi')) {
			wp_pagenavi();
		}
		else { ?>
			<div class="pagination">
				<div class="left"><?php next_posts_link('&laquo; Older Entries') ?></div>
				<div class="right"><?php previous_posts_link('Newer Entries &raquo;') ?></div>
			</div>
		<?php } ?>

		<?php else : ?>

		<h2 class="center">Not Found</h2>
		<p class="center">Sorry, but you are looking for something that isn't here.</p>
		<?php include (TEMPLATEPATH . "/searchform.php"); ?>

	<?php endif; ?>

	</div>

<?php get_sidebar(); ?>

<?php get_footer(); ?>
