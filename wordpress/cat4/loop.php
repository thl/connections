<div class="post">

<?php if (is_single()) { ?>
<h2><?php the_title(); ?> / <span class="date"><?php the_time('F jS, Y') ?></span></h2>
<?php } else { ?>
<h3 id="post-<?php the_ID(); ?>"><a href="<?php the_permalink() ?>" rel="bookmark" title="Permanent Link to <?php the_title_attribute(); ?>"><?php the_title(); ?></a></h3>
<?php } ?>


<p class="postmetadata"><?php if (!is_single()) { ?>Posted on <?php the_time('F jS, Y') ?> | <?php } ?>Categorized as <?php the_category(', ') ?><?php if (!is_single()) { ?> | <?php comments_popup_link(__('Comments (0)'), __('Comments (1)'), __('Comments (%)')); ?> <?php } ?><?php the_tags(' | Tagged as '); ?><?php edit_post_link('Edit post', ' | ', ''); ?></p>

<div class="entry">
<?php if (is_archive() || is_search() ) { ?>
<?php the_excerpt(); ?>

<?php } else { ?>
<?php the_content('Read the rest of this entry &raquo;'); ?>


<?php } ?>
</div>

</div>
