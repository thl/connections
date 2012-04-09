<?php get_header(); ?>

		<div id="content">
			<div id="flash">
			</div>
		</div><!--END CONTENT-->

		<div id="sidebar">
			<div id="about" class="module">
				<h3>About</h3>
				<p>Proin quis massa. Duis ut tellus quis quam ultrices tincidunt. Nulla et libero sed elit facilisis aliquam. Fusce quis odio eu enim egestas varius. Nam rhoncus ante a ligula. <a href="/about/">Read More&raquo;</a></p>
			</div>
			<div id="news" class="module">
				<h3>Latest News</h3>
				<ul class="bullets-small">
				<?php query_posts('showposts=3'); ?>
				 <?php while (have_posts()) : the_post(); ?>
				 <li><a href="<?php the_permalink() ?>" rel="bookmark"><?php the_title(); ?></a></li>
				 <?php endwhile; ?>
				</ul>
			</div>
			<div id="registrants" class="module last">
				<h3>Latest Registrants</h3>
				<ul>
					<li>
						<a href="#" class="registrant-thm"><img src="<?php bloginfo('template_directory'); ?>/images/sample_people_hp.jpg" alt="John Taylor" /></a>
						<h4><a href="#">John Taylor</a></h4>
						<h5>Department of Something</h5>
					</li>
					<li>
						<a href="#" class="registrant-thm"><img src="<?php bloginfo('template_directory'); ?>/images/sample_people_hp.jpg" alt="John Taylor" /></a>
						<h4><a href="#">John Taylor</a></h4>
						<h5>Department of Something</h5>
					</li>
					<li>
						<a href="#" class="registrant-thm"><img src="<?php bloginfo('template_directory'); ?>/images/sample_people_hp.jpg" alt="John Taylor" /></a>
						<h4><a href="#">John Taylor</a></h4>
						<h5>Department of Something</h5>
					</li>
				</ul>
			</div>
		</div><!--END SIDEBAR-->	

<?php get_footer(); ?>

