<?php //get_template_part('templates/page', 'header'); ?>

<?php if (!have_posts()) : ?>
  <div class="alert alert-warning">
    <?php _e('Sorry, no results were found.', 'sage'); ?>
  </div>
  <?php get_search_form(); ?>
<?php endif; ?>
<?php dynamic_sidebar('sidebar-blog'); ?>
<div class="blog-wrapper">
	<div class="row">
		<?php while (have_posts()) : the_post(); ?>
		  <?php get_template_part('templates/content', 'search'); ?>
		<?php endwhile; ?>
	</div>
</div>

<?php the_posts_navigation(); ?>
