<div class="career-tab-wrap wow slideInLeft box">
	<div class="container-fluid career-tab">
		
		<ul class="nav nav-tabs text-center" role="tablist">
		<?php 
			global $post;
			$i = 1;
			$args = array(
				'post_type'       	=> 'page',                               				
				'post_parent'       => $post->ID,                               
				'order'             => 'ASC',
				'orderby'           => 'menu_order',
				'posts_per_page'    => -1

			);
			// The Query
			$tab_nav_query = new WP_Query( $args );
			
			// The Loop
			if ( $tab_nav_query->have_posts() ) {
				while ( $tab_nav_query->have_posts() ) {
				$tab_nav_query->the_post();
				$post_slug = $post->post_name; 
				$active = '';
				$icon = '';
				if($i == 1) {
					$active = 'active';
					$icon = 'users';	
				} elseif($i == 2) {
					$icon = 'benefits';
				} else {
					
				}
				
				
				
				?>
					<li role="presentation" class="<?php echo $active; ?>">
						<a href="#<?php echo $post_slug; ?>" aria-controls="<?php echo $post_slug; ?>" role="tab" data-toggle="tab">
							<i class="icon-<?php echo $icon; ?>"></i>
							<?php the_title();?>
						</a>
					</li>
										
				<?php $i++; } ?>
				
					<li role="presentation">
						<?php //echo $i; ?>
						<a target="_blank" href="https://basalt.peopleanswers.com/pa/testPortalEntry.do?pc=992507&src=185087">
							<i class="icon-apply"></i>
							Apply Online
						</a>
					</li>
				
				<?php /* Restore original Post Data */
				wp_reset_postdata();
			} else {
				// no posts found
			}	
		?>				
	  </ul>
		
		<div class="tab-content">
		<?php 
			global $post;
			$i = 1;
			$args = array(
				'post_type'       	=> 'page',                               				
				'post_parent'       => $post->ID,                               
				'order'             => 'ASC',
				'orderby'           => 'menu_order',
				'posts_per_page'    => -1

			);
			// The Query
			$tab_content_query = new WP_Query( $args );
			
			// The Loop
			if ( $tab_content_query->have_posts() ) {
				while ( $tab_content_query->have_posts() ) {
				$tab_content_query->the_post();
				$post_slug = $post->post_name; 
				$active = '';
				if($i == 1) {
					$active = 'in active';	
				}
				
				?>
					<div role="tabpanel" class="tab-pane fade <?php echo $active; ?>" id="<?php echo $post_slug; ?>">
						<div class="tab-intro text-center">
							<h2>- <?php the_field('sh_headline');?> -</h2>
							<?php the_field('intro');?>
						</div>
						<?php career(); ?>
						<?php
						$job =  1;
						if( have_rows('job_post') ):
						echo '<div class="career-tab-outer">';
						echo '<div class="container">';
						echo '<div class="row clearfix">';
							while ( have_rows('job_post') ) : the_row(); ?>
							
								<div class="col-sm-3">
									<div class="job-inner" style="background-image: url(<?php the_sub_field('job_background_image'); ?>);">
										<a class="btn btn-primary btn-lg" data-toggle="modal" data-target="#job<?php echo $job; ?>Modal">
											<span><?php the_sub_field('job_heading'); ?></span>
										</a>
									</div>
								</div>

								<div class="modal fade" id="job<?php echo $job; ?>Modal" tabindex="-1" role="dialog" aria-labelledby="<?php echo $job; ?>-label">
								  <div class="modal-dialog" role="document">
								    <div class="modal-content">
								      <div class="modal-header">
								        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
								        <h4 class="modal-title" id="<?php echo $job; ?>-label"><?php the_sub_field('job_heading'); ?></h4>
								      </div>
								      <div class="modal-body">
								        <?php the_sub_field('job_description'); ?>
								      </div>
								      <div class="modal-footer">
								        <button type="button" class="btn btn-primary">Apply Online</button>
								      </div>
								    </div>
								  </div>
								</div>
								
							
							<?php $job++; endwhile;
							echo '</div>';
						echo '</div>';
						echo '</div>';

						
						else :
												
						endif;
						
						?>

					</div>
										
				<?php $i++; } 
				/* Restore original Post Data */
				wp_reset_postdata();
			} else {
				// no posts found
			}	
		?>
		</div>				

	</div>
</div>