<?php
/**
 * Template Name: Contact
 */
?>

<?php while (have_posts()) : the_post(); ?>
  <?php //get_template_part('templates/page', 'header'); ?>
  <div class="row">
	  <div class="col-sm-6">

			<?php 
			
			$location = get_field('map');
			
			if( !empty($location) ):
			?>
			<div class="acf-map">
				<div class="marker" data-lat="<?php echo $location['lat']; ?>" data-lng="<?php echo $location['lng']; ?>"></div>
			</div>
			<?php endif; ?>
		  
	  </div>
	  <div class="col-sm-6">
		  <?php echo do_shortcode('[gravityform id=1 title=true ajax=false]'); ?>
	  </div>
  </div>
<?php endwhile; ?>

<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB6KHGjF2QUSS1tp95ioOjJztty7BkOE-k"></script>

