<?php
	$hasBackground = ''; 
	if( get_sub_field('fw_background_image') ) {
		$hasBackground = 'hasBackground'; 	
	}
?>
<div class="full-width-wrapper">
	<div class="container-fluid full-width wow slideInLeft box" style="background-image: url(<?php the_sub_field('fw_background_image'); ?>);">
		<div class="container">
			<div class="row text-center">
				<?php 
					if( get_sub_field('fw_heading') ) {
						echo '<h2>'. get_sub_field('fw_heading') .'</h2>';
					} 
				?>
				<div class="fw-content <?php echo $hasBackground; ?> col-sm-8 col-sm-offset-2">
					<?php the_sub_field('fw_content'); ?>
					
					<?php if( get_sub_field('fw_button_text') && get_sub_field('fw_button_link') ) { ?>
						<a href="<?php the_sub_field('fw_button_link'); ?>" class="btn btn-primary btn-lg btn-absolute">
							<?php the_sub_field('fw_button_text'); ?>	
						</a>
					<?php } ?>
					
				</div>
			</div>
		</div>
	</div>
</div>