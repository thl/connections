<?php
/*
Template Name: Detail Contact
*/
?><?php get_header(); ?>

		<div id="secondary-nav">
			<ul>
				<li><a href="/people/detail/">Profile</a></li>
				<li><a href="#">Activities</a></li>
				<li><a href="#">Relationships</a></li>
				<li><a href="#">Work</a></li>
				<li><a href="#">Background</a></li>
				<li class="current_page_item"><a href="/people/detail/contact/">Contact</a></li>
			</ul>
		</div>

	<div id="content" class="narrow">

			<h2>Amy Fredericks / <span class="page-type">Contact</span></h2>
			<h3 id="title">Director, Digital Research &amp; Scholarship, UVa Library | Technologist</h3>
			<div class="item">
				<h3>Notes + Status</h3>
				<div class="message">
				<p>I am currently out of town until July 24, 2008.</p>
				</div>
			</div><!--END ITEM-->
			<div class="item">
				<h3>Details</h3>
				<p>1021 St. Charles Ave., Apt. B<br />
				Charlottesville, VA 22901</p>
				<table width="400" cellspacing="0" border="0">
				<tr>
					<th scope="row">Office</th>
					<td>0+1+434-442-0834</td>
				</tr>
				<tr>
					<th scope="row">Cell</th>
					<td>0+1+434-135-4623</td>
				</tr>
				<tr>
					<th scope="row">Email</th>
					<td><a href="mailto:amyf@virginia.edu">amyf@virginia.edu</a></td>
				</tr>
				<tr>
					<th scope="row">Skype</th>
					<td><a href="skype:afredericks?add">afredericks</a></td>
				</tr>
				<tr>
					<th scope="row">AIM</th>
					<td><a href="aim:goim?screenname=afredericks">afredericks</a></td>
				</tr>
				</table>
				<h3>vCard</h3>
				<a href="#" class="vcard">Download&raquo;</a>
			</div><!--END ITEM-->
			
			<div class="item">
				<h3>Related Links</h3>
				<ul class="bullets">
					<li><a href="#">Lorem ipsum</a></li>
					<li><a href="#">Lorem ipsum</a></li>
					<li><a href="#">Lorem ipsum</a></li>
				</ul>
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