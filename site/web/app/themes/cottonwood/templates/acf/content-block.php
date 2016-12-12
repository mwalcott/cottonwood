<?php 	
	$colContentWidth = '';
	$colImageWidth = '';
	$backgroundSize = '';
	$contentBox = '';
	if( get_sub_field('cb_column_width') == 'half' ) {
		$colContentWidth = 'col-sm-6';
		$colImageWidth = 'col-sm-6';
		$contentBox = 'solid';
		if( get_sub_field('content_position') == 'right' ) {
			$backgroundSize = 'cb-background-half left';
		} else {
			$backgroundSize = 'cb-background-half right';	
		}
	} else {
		$colContentWidth = 'col-sm-4';
		$colImageWidth = 'col-sm-8';
		$backgroundSize = 'cb-background';
	}

	$push = '';
	$pull = '';
	$animation = '';
	$animationReverse = '';
	if( get_sub_field('content_position') == 'right' ) {
		
		if( $colContentWidth == 'col-sm-6' && $colImageWidth == 'col-sm-6' ) {
			$push = 'col-sm-push-6 right';
			$pull = 'col-sm-pull-6';			
		} else {
			$push = 'col-sm-push-8 right';
			$pull = 'col-sm-pull-4';			
		}
		
		$animation = 'Right';
		$animationReverse = 'Left';
	} else {
		$push = 'left';
		$pull = '';
		$animation = 'Left';
		$animationReverse = 'Right';
	}


?>

<div class="container-fluid cb-wrapper wow slideIn<?php echo $animationReverse; ?> box">
	<div class="<?php echo $backgroundSize ?>" style="background-image: url(<?php the_sub_field('cb_background'); ?>);">
		
	</div>
	<div class="row">
		<div class="<?php echo $colContentWidth; ?> same-height text-center content-box <?php echo $contentBox; ?> wow bounceIn<?php echo $animation; ?> box <?php echo $push; ?>">
			<?php 
				
				
				// Heading
				if( get_sub_field('cb_heading') ) {
					echo '<h2>'. get_sub_field('cb_heading') .'</h2>';
				}
				
				// Content
				if( get_sub_field('cb_content') ) {
					echo '<p>'. get_sub_field('cb_content') .'</p>';
				}

				// Content Button Link Start
				if( get_sub_field('cb_button_link') ) {
					echo '<a class="btn btn-primary" href="'. get_sub_field('cb_button_link') .'">';
				}

				// Content Button Text
				if( get_sub_field('cb_button_text') ) {
					echo get_sub_field('cb_button_text');
				}

				// Content Button Link End
				if( get_sub_field('cb_button_link') ) {
					echo '</a>';
				}
			?>
			
		</div>
		<div class="<?php echo $colImageWidth; ?> same-height button-wrap wow bounceIn<?php echo $animationReverse; ?> box <?php echo $pull; ?>">

			<?php 
				// Button Outline Link Start
				if( get_sub_field('cb_outlined_button_link') ) {
					echo '<a class="btn btn-outline btn-lg btn-middle" href="'. get_sub_field('cb_outlined_button_link') .'">';
				} else {
					echo '<span class="btn btn-outline btn-lg btn-middle">';
				}

				// Button Outline Text
				if( get_sub_field('cb_outlined_button_text') ) {
					echo get_sub_field('cb_outlined_button_text');
				}

				// Button Outline Link End
				if( get_sub_field('cb_outlined_button_link') ) {
					echo '</a>';
				} else {
					echo '<span>';
				}

			?>

		</div>
	</div>
</div>