<div class="text-center row">

	<?php 
		$i = 1;
		$terms = get_terms( 'team_category' );
		$count = count( $terms );
		echo '<div class="filter-wrap clearfix">';
		if ( $count > 0 ) {
			foreach ( $terms as $term ) {
				$active = '';
				if( $i == 1 ) {
					$active = 'active';
				}
			  echo '<a class="filter '. $active .'" data-filter=".'. $term->slug .'">' . $term->name . '</a>';
			  
			  $i++;
			}
		}
		echo '</div>';			
	?>
</div>	


<div id="leadership" class="container clearfix">
	<?php 
	$args = array(
		'post_type' => 'leadership',
		'posts_per_page' => -1
	);
	// The Query
	$the_query = new WP_Query( $args );
	$i = 1;
	// The Loop
	if ( $the_query->have_posts() ) {
		echo '<div class="row">';
		while ( $the_query->have_posts() ) {
			$the_query->the_post(); 
			global $post;
			$post_slug = $post->post_name;
		?>
			<?php 
				$terms = get_the_terms( $post->ID, 'team_category' );
				if ( $terms && ! is_wp_error( $terms ) ) { 
					$filters = array();
					foreach ( $terms as $term ) {
						$filters[] = $term->slug;
					}
					$filter = join( " ", $filters );
				} 

			?>


			<div class="mix <?php echo $filter; ?> col-sm-4" data-target=".<?php echo $post_slug; ?>">
				<a class="open-member-info" href="#FIXME">
					<?php the_post_thumbnail( 'full', array( 'class' => 'img-responsive wow zoomIn') ); ?>
				</a>
			</div>
			<div class="member-info hidden <?php echo $post_slug; ?>">
				<div class="row">
					<div class="col-sm-4">
						<?php the_post_thumbnail( 'full', array( 'class' => 'img-responsive') ); ?>
					</div>
					<div class="col-sm-8">
						<a class="close-info" data-target=".<?php echo $post_slug; ?>">Close</a>
						<h3><?php the_title(); ?></h3>
						<cite><?php the_field('position'); ?></cite>
						<?php the_content(); ?>
					</div>
				</div>
			</div>

		<?php $i++; }
		echo '</div>';
		/* Restore original Post Data */
		wp_reset_postdata();
	} else {
		// no posts found
	}
		
	?>
</div>
