<footer class="content-info">
  <div class="container">
	  <div class="row">
		  <div class="col-sm-4 footer-nav">
	      <?php
	      if (has_nav_menu('footer_navigation')) :
	        wp_nav_menu(['theme_location' => 'footer_navigation', 'menu_class' => '']);
	      endif;
	      ?>
			  <p>&copy; 2016 All Rights Reserved - Cottonwood Residential</p>
			  <i class="icon-eho-bug"></i>
		  </div>
		  <div class="col-sm-1"></div>
		  <div class="col-sm-3 address">
				Cottonwood Residential<br />
				6340 South 3000 East, Suite 500<br />
				Salt Lake City, UT 84121
				<?= Cottonwood\social_links(); ?>			  
		  </div>
		  <div class="col-sm-1"></div>
		  <div class="col-sm-3 contact-info">
				Phone 801.278.0700<br />
				Toll Free 1.877.584.1800<br />
				Fax 801.278.0756<br />
				<a href="mailto:info@cottonwoodres.com">info@cottonwoodres.com</a>
		  </div>
	  </div>
    <?php dynamic_sidebar('sidebar-footer'); ?>
  </div>
</footer>
