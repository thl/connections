<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" <?php language_attributes(); ?>>
<head profile="http://gmpg.org/xfn/11">
<meta http-equiv="Content-Type" content="<?php bloginfo('html_type'); ?>; charset=<?php bloginfo('charset'); ?>" />

<title><?php if ( is_single() ) {
      wp_title('');
      echo (' | ');
      bloginfo('name');
 
} else if ( is_page() || is_paged() ) {
      bloginfo('name');
      wp_title('|');
 
} else if ( is_author() ) {
      bloginfo('name');
      wp_title(' | Archive for ');	  
	  
} else if ( is_archive() ) {
      bloginfo('name');
      echo (' | Archive for ');
      wp_title('');
 
} else if ( is_search() ) {
      bloginfo('name');
      echo (' | Search Results');
 
} else if ( is_404() ) {
      bloginfo('name');
      echo (' | 404 Error (Page Not Found)');
	  
} else if ( is_home() ) {
      bloginfo('name');
      echo (' | ');
      bloginfo('description');
 
} else {
      bloginfo('name');
      echo (' | ');
      echo (''.$blog_longd.'');
}
 ?></title>
	
<meta name="generator" content="WordPress <?php bloginfo('version'); ?>" /> 
<?php if ( is_single() ) { ?>
<meta name="description" content="<?php wp_title(''); ?>" />
<meta name="keywords" content="<?php wp_title(''); ?>" />
<?php } ?>
<?php if ( ! is_single() ) { ?>

<meta name="description" content="<?php bloginfo('description'); ?>" />
<meta name="keywords" content="<?php bloginfo('description'); ?>" />
<?php } ?>

<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/global.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/style.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/nav.css" type="text/css" media="screen" />
<?php if (is_home()) { ?><link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/home.css" type="text/css" media="screen" /><?php } ?>
<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/thickbox.css" type="text/css" media="screen" />
<link rel="stylesheet" href="<?php bloginfo('template_directory'); ?>/css/print.css" type="text/css" media="print" />

<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/jquery.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/togglesections.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/jquery.jcarousel.js"></script>
<script type="text/javascript" src="<?php bloginfo('template_directory'); ?>/js/thickbox-compressed.js"></script>

<script type="text/javascript">
	// hide login and extra content
	//document.writeln('<style type="text/css"><!-- #login-wrapper, #overflow {display: none;} --></style>');
	
	jQuery(document).ready(function() {
		// initialize carousels
    jQuery('#homepage_carousel').jcarousel();
		// fetch the login partial
		$("#form-wrapper").load( "/login", null, function(responseText) {
			// show the 'my profile' link if the user is logged in
			if ( $(responseText).filter("p").text().substring(0,9) == "Logged in" ) {
				$("#my-profile-link").show();		
			}	
		} );	
	});
	
</script>

<link rel="alternate" type="application/rss+xml" title="<?php bloginfo('name'); ?> RSS Feed" href="<?php bloginfo('rss2_url'); ?>" />
<link rel="alternate" type="application/atom+xml" title="Atom 0.3" href="<?php bloginfo('atom_url'); ?>" />
<link rel="pingback" href="<?php bloginfo('pingback_url'); ?>" />

<link rel="shortcut icon" href="/favicon.ico" />

<?php wp_head(); ?>

</head>

<body <?php if (is_home()) { ?> id="home"<?php } else { ?> class="page-<?php echo $post->post_name; ?>" id="interior"<?php } ?>>

<!-- <div id="login-wrapper">
	<div id="login">
		<div class="entry">
			<h1>Digital Humanities at the University of Virginia</h1>
			<ul class="bullets">
			<?php if (is_home()) { ?><li><a href="#featured">Skip to featured content&raquo;</a></li><?php } ?>
			<li><a href="#nav">Skip to main navigation&raquo;</a></li>
			<li><a href="#main">Skip to main content&raquo;</a></li>
			</ul>
		</div>
	    <div id="form-wrapper">
		</div>
  </div>
</div> -->

<div id="masthead-wrapper">
	<div id="masthead">
		                    <a href="/login_page" class="log-in" id="login-toggle">Log in</a>
                    <a href="https://shanti.virginia.edu/sessions/netbadge" class="uva-log-in" id="uva-login-toggle">Log in</a>
				<h1 id="logo"><a href="/">The SHANTI Portal <small>at</small> UVa</a></h1>

		<span></span>
		<!-- <h2><a href="http://www.virginia.edu/">University of Virginia</a></h2> -->
	</div><!--END MASTHEAD-->
</div><!--END MASTHEAD-WRAPPER-->


<?php
	if (is_home()) {
		include (TEMPLATEPATH . '/homepage_feature.php');
	}
?>

<div id="nav-wrapper">
	<div id="nav">
		<form method="get" id="search" action="/search" >
				<input id="s" type="text" value="" name="s" onclick="clearSearchBox()" />
				<input type="image" id="submit" src="/images/search.gif" />		
		</form>
		<ul>
			<li class="first<?php if(is_home()) { ?> current_page_item<?php } ?>"><a href="/">Home</a></li>
			<li class="page_item"><a href="/people">People</a></li>
			<li class="page_item"><a href="/projects">Projects</a></li>
			<li class="page_item"><a href="/organizations">Organizations</a></li>
			<li class="page_item"><a href="/tools">Tools</a></li>
			<li class="page_item"><a href="/relationbrowser">Relationships</a></li>
			<li class="page_item"><a href="/posts">Posts</a></li>
			<li class="page_item"><a href="/search">Search</a></li>
		</ul>	
	</div><!--END NAV-->
</div><!--END NAV-WRAPPER-->


    <style>
      .ancillary-nav {
        background-color: #e7e1d7;
      }

      .ancillary-nav .navigation-bar ul {
        float: right;
      }

      .ancillary-nav .navigation-bar ul li {
        display: inline-block;
      }
    </style>
    
    <div class="ancillary-nav" style="background-color: rgb(231, 225, 215);">
      <div class="navigation-bar">
        <ul>
			<?php wp_list_pages('title_li=&exclude=&include=&depth=1&sort_column=menu_order'); ?>
        </ul>
      </div>
    </div>



<div id="main-wrapper">
	<div id="main">


