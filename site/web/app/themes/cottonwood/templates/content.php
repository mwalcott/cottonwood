<article <?php post_class( 'col-sm-12 blog-post' ); ?>>
	<div class="post-background">
		<div class="">
			<h3><?php the_title(); ?></h3>
			<?php the_post_thumbnail('large', array( 'class' => 'img-responsive' ) ); ?>
			<div class="blog-content">
				<?php the_excerpt(); ?>
			</div>
		</div>
	</div>
</article>
