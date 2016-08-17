<header class="banner animated fadeInDown">
  <div class="container">
    <a class="brand" href="<?= esc_url(home_url('/')); ?>">

			<?php 
			
			$image = get_field('logo_image', 'option');
			
			if( !empty($image) ): ?>
			
				<img src="<?php echo $image['url']; ?>" class="img-responsive" alt="<?php echo $image['alt']; ?>" />
			
			<?php endif; ?>


	    <?php //bloginfo('name'); ?>
	  </a>
	  <div class="header-right pull-right">
		  <?= Cottonwood\social_links(); ?>
	    <nav class="nav-primary nav hidden-xs">
	      <?php
	      if (has_nav_menu('primary_navigation')) :
	        wp_nav_menu(['theme_location' => 'primary_navigation', 'menu_class' => 'nav']);
	      endif;
	      ?>
	    </nav>
	  </div>
  </div>
</header>
