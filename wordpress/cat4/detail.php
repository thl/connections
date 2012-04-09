<?php
/*
Template Name: Detail
*/
?><?php get_header(); ?>

		<div id="secondary-nav">
			<ul>
				<li class="current_page_item"><a href="/people/detail/">Profile</a></li>
				<li><a href="#">Activities</a></li>
				<li><a href="#">Relationships</a></li>
				<li><a href="#">Work</a></li>
				<li><a href="#">Background</a></li>
				<li><a href="/people/detail/contact/">Contact</a></li>
			</ul>
		</div>

	<div id="content" class="narrow">

			<h2>Amy Fredericks / <span class="page-type">Profile</span></h2>
			<h3 id="title">Director, Digital Research &amp; Scholarship, UVa Library | Technologist</h3>
			<h3 id="uri">Home Page: <a href="#">http://people.virginia.edu/~bpn2f/</a></h3>
			<div class="item">
				<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut velit mauris, dignissim at, facilisis vitae, fermentum vel, tortor. Sed tellus nisi, scelerisque eleifend, pellentesque vitae, tincidunt quis, odio. Fusce rhoncus, orci ut iaculis vulputate, magna sapien lacinia velit, at aliquam velit urna ac ipsum. Morbi aliquet leo quis nisl. Nullam dignissim sodales pede. Sed pede.</p>
				<p>Proin viverra ornare dolor. Suspendisse sed quam vitae libero iaculis dictum. Suspendisse pharetra eleifend velit. Mauris ac diam. Nam aliquam, ligula id consequat aliquam, neque odio sollicitudin enim, vitae laoreet est quam sed pede.</p>
				<div id="overflow">
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Ut velit mauris, dignissim at, facilisis vitae, fermentum vel, tortor. Sed tellus nisi, scelerisque eleifend, pellentesque vitae, tincidunt quis, odio. Fusce rhoncus, orci ut iaculis vulputate, magna sapien lacinia velit, at aliquam velit urna ac ipsum. Morbi aliquet leo quis nisl. Nullam dignissim sodales pede. Sed pede.</p>
				</div><!--END OVERFLOW-->
				<script type="text/javascript">
					// write extra content toggle
					document.writeln('<a href="#" id="overflow-toggle">Read more...</a>');
				</script>
			</div><!--END ITEM-->
			<div class="item">
				<h3>Seeking</h3>
				<p>Ut mattis, odio quis tincidunt scelerisque, nisl nunc faucibus orci, at elementum tellus felis non lectus. Donec placerat. Duis blandit massa vel nulla. Nullam quis dui. Ut arcu arcu, mattis id, gravida et, aliquam vel, ante. Sed posuere leo ac tellus. Maecenas blandit hendrerit pede. Morbi at est. Cras tempor orci nec urna. Praesent varius felis vel ante.</p>
			</div><!--END ITEM-->
	
	</div><!--END CONTENT-->
		
		<div id="sidebar">
			<img id="main-img" src="<?php bloginfo('template_directory'); ?>/images/sample_people.jpg" alt="Sample" />
			<div id="carousel">
				<ul id="detail_carousel">
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/sample_people.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/leonardo.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/sample_people.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/leonardo.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/sample_people.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/leonardo.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/sample_people.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
					<li><a class="thickbox" rel="gallery" href="<?php bloginfo('template_directory'); ?>/images/leonardo.jpg"><img src="<?php bloginfo('template_directory'); ?>/images/example1.jpg" alt="example1" width="25" height="25" /></a></li>
				</ul>
			</div><!--END CAROUSEL-->
			<div id="relationships">
				<h4>View Relationships</h4>
				<a href="#"><img src="<?php bloginfo('template_directory'); ?>/images/relationships-thm.jpg" /></a>
			</div><!--END RELATIONSHIPS-->
		</div><!--END MEDIA-->

<?php get_footer(); ?>