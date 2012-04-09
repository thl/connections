<?php get_header(); ?>

	<div id="content" class="narrow">
	<?php is_tag(); ?>
		<?php if (have_posts()) : ?>

 	  <?php $post = $posts[0]; ?>
 	  <?php /* If this is a category archive */ if (is_category()) { ?>
		<h2>News  / <span class="subpage"><?php single_cat_title(); ?></span></h2>
 	  <?php /* If this is a tag archive */ } elseif( is_tag() ) { ?>
		<h2>News  / <span class="subpage">Tagged as <?php single_tag_title(); ?></span></h2>
 	  <?php /* If this is a daily archive */ } elseif (is_day()) { ?>
		<h2>News / <span class="subpage"><?php the_time('F jS, Y'); ?></span></h2>
 	  <?php /* If this is a monthly archive */ } elseif (is_month()) { ?>
		<h2>News / <span class="subpage"><?php the_time('F Y'); ?></span></h2>
 	  <?php /* If this is a yearly archive */ } elseif (is_year()) { ?>
		<h2>News / <span class="subpage"><?php the_time('Y'); ?></span></h2>
	  <?php /* If this is an author archive */ } elseif (is_author()) { ?>
		<h2>News / <span class="subpage">By Author</span></h2>
 	  <?php /* If this is a paged archive */ } elseif (isset($_GET['paged']) && !empty($_GET['paged'])) { ?>
		<h2>News</h2>
 	  <?php } ?>

		<?php while (have_posts()) : the_post(); ?>
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

		<h3 class="center">Not Found</h3>
		<?php include (TEMPLATEPATH . '/searchform.php'); ?>

	<?php endif; ?>

	</div>

<?php get_sidebar(); ?>

<?php get_footer(); ?>
