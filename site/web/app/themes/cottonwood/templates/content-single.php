<div class="row">
	<div class="col-sm-8 col-sm-offset-2">
		<a class="back-blog" href="/blog"><i class="icon-arrow-left"></i> Blog Home</a>
	</div>
</div>
<div class="row">
<?php while (have_posts()) : the_post(); ?>
  <article <?php post_class('col-sm-6 col-sm-offset-3'); ?>>
    <header>
	    <?php get_template_part('templates/entry-meta'); ?>
      <h1 class="entry-title"><?php the_title(); ?></h1>
    </header>
    <div class="entry-content">
      <?php the_content(); ?>
      <?php the_tags( '<h4>Tags</h4><ul id="tags"><li>', '</li><li>', '</li></ul>' ); ?>
    </div>
    <footer>
      <?php wp_link_pages(['before' => '<nav class="page-nav"><p>' . __('Pages:', 'sage'), 'after' => '</p></nav>']); ?>
    </footer>
    <?php comments_template('/templates/comments.php'); ?>
  </article>
<?php endwhile; ?>
</div>