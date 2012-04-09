<?php get_header(); ?>

<?php include_once (TEMPLATEPATH . "/child_navigation.php"); ?>

	<?php
		if ($children) { ?>
	<div id="secondary-nav">
		<ul>
			<?php echo $section_overview; ?>
			<?php echo $children; ?>
		</ul>
	</div>
	<?php } ?>

	<div id="content"<?php if ($sidenav) {?> class="narrow"<?php } ?>>

	<?php if (have_posts()) : while (have_posts()) : the_post(); ?>
	<?php wp_link_pages('before=<p>&after=</p>&next_or_number=number&pagelink=page %'); ?>

		<h2>
		<?php
			if ($children) {
				if($post->post_parent) {
					echo $section_title; ?> / <span class="subpage"><?php the_title(); ?></span>
				<?php
				}
				else {
					the_title(); ?> / <span class="subpage"><?php echo $section_overview_title; ?></span>
				<?php
				}
			}
			else { 
				the_title(); ?> / <span class="subpage"><?php echo $section_overview_title; ?></span>
			<?php
			} ?>
		</h2>
			<div class="entry">
			<?php the_content(); ?>
			</div>
	<?php endwhile; endif; ?>
	</div><!--END COLUMN-->
	
	<?php if ($sidenav) { ?>
		<div id="sidebar">
			<h4>More In This Section</h4>
			<ul class="bullets">
			<?php echo $sidenav; ?>
			</ul>
		</div>
	<?php } ?>

<?php get_footer(); ?>