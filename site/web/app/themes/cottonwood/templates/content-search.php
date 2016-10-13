<article <?php post_class( 'col-sm-4 blog-post text-center' ); ?>>
	<div class="post-background" style="background-image: url(<?php the_post_thumbnail_url(); ?>);">
		<div class="blog-hover">
			<h3><?php the_title(); ?></h3>
			<div class="blog-content">
				<?php the_excerpt(); ?>
				<a class="btn btn-blue-outline btn-lg" href="<?php the_permalink(); ?>">
					read more
				</a>
			</div>
		</div>
	</div>
</article>