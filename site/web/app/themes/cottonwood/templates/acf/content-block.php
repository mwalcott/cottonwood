<?php 
	$push = '';
	$pull = '';
	$animation = '';
	$animationReverse = '';
	if( get_sub_field('content_position') == 'right' ) {
		$push = 'col-sm-push-8 right';
		$pull = 'col-sm-pull-4';
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
	<div class="cb-background" style="background-image: url(<?php the_sub_field('cb_background'); ?>);">
		
	</div>
	<div class="row">
		<div class="col-sm-4 equalHeight text-center content-box wow bounceIn<?php echo $animation; ?> box <?php echo $push; ?>">
			<h2><?php the_sub_field('cb_heading'); ?></h2>
			<p><?php the_sub_field('cb_content') ?></p>
			<a class="btn btn-primary" href="<?php the_sub_field('cb_button_text'); ?>">
				<?php the_sub_field('cb_button_text'); ?>
			</a>
			
		</div>
		<div class="col-sm-8 equalHeight button-wrap wow bounceIn<?php echo $animationReverse; ?> box <?php echo $pull; ?>">
			<a href="<?php the_sub_field('cb_outlined_button_link'); ?>" class="btn btn-outline btn-lg btn-middle">
				<?php the_sub_field('cb_outlined_button_text'); ?>
			</a>
		</div>
	</div>
</div>