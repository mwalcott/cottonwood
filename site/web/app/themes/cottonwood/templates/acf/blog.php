<div class="blog-wrapper">
	<div class="container-fluid blog wow slideInRight box">
		<div class="row text-center">
			
			<h2>- <?php the_sub_field('blog_heading') ?> -</h2>
		<?php 
			$args = array(
				'post_type' => 'post',
				'posts_per_page' => 6
			);
			// The Query
			$the_query = new WP_Query( $args );
			
			// The Loop
			if ( $the_query->have_posts() ) {
				while ( $the_query->have_posts() ) {
				$the_query->the_post(); ?>
					
					<div class="col-sm-6 col-md-4 blog-post">
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
					</div>
						
				<?php }
				/* Restore original Post Data */
				wp_reset_postdata();
			} else {
				// no posts found
			}	
		?>				
			
		</div>
	</div>
</div>