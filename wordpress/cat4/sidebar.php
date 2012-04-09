	<div id="sidebar">
			<?php if ( !function_exists('dynamic_sidebar') || !dynamic_sidebar() ) : ?>

			<h4>Monthly Archives</h4>
				<ul class="bullets">
				<?php wp_get_archives('type=monthly'); ?>
				</ul>

			<h4>Categories</h4>
				<ul class="bullets">
				<?php wp_list_categories('title_li='); ?>
				</ul>

			<?php endif; ?>
	</div>

