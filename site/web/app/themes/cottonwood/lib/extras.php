<?php

namespace Roots\Sage\Extras;

use Roots\Sage\Setup;

/**
 * Add <body> classes
 */
function body_class($classes) {
  // Add page slug if it doesn't exist
  if (is_single() || is_page() && !is_front_page()) {
    if (!in_array(basename(get_permalink()), $classes)) {
      $classes[] = basename(get_permalink());
    }
  }

  // Add class if sidebar is active
  if (Setup\display_sidebar()) {
    $classes[] = 'sidebar-primary';
  }

  return $classes;
}
add_filter('body_class', __NAMESPACE__ . '\\body_class');

/**
 * Clean up the_excerpt()
 */
function excerpt_more() {
  return ' &hellip; <a href="' . get_permalink() . '">' . __('Continued', 'sage') . '</a>';
}
add_filter('excerpt_more', __NAMESPACE__ . '\\excerpt_more');

if( function_exists('acf_add_options_page') ) {
	
	acf_add_options_page(array(
		'page_title' 	=> 'Theme General Settings',
		'menu_title'	=> 'Theme Settings',
		'menu_slug' 	=> 'theme-general-settings',
		'capability'	=> 'edit_posts',
		'redirect'		=> false
	));
	
	acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Header Settings',
		'menu_title'	=> 'Header',
		'parent_slug'	=> 'theme-general-settings',
	));
	
	acf_add_options_sub_page(array(
		'page_title' 	=> 'Theme Footer Settings',
		'menu_title'	=> 'Footer',
		'parent_slug'	=> 'theme-general-settings',
	));
	
}

namespace Cottonwood;


function slider() { ?>

	<div id="carousel-example-generic" class="carousel slide gallery wow slideInDown box" data-ride="carousel">
		<div class="overlay">
			<span class="wow fadeInUp box">
				home at last
			</span>	    
		</div>
				
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	
			<?php 
			
			$images = get_field('slider_images');
			
			if( $images ): 
			$i = 0;
			
			?>
				<?php foreach( $images as $image ): $i++; ?>
					<?php
						$active = '';
						if($i == 1) {
							$active = 'active';
						}
					?>
					<div class="item <?php echo $active; ?>">
						<img src="<?php echo $image['url']; ?>" class="img-responsive" alt="<?php echo $image['alt']; ?>" />
					</div>
				<?php endforeach;  ?>
			<?php endif; ?>
	
	  </div>
	  
		<!-- Start quick_search -->
    <div class="quick_search wow fadeInUp box">
	    <div class="container">
				<form id="quick_search">
					<div class="search_wrap row">
				    <div class="col-sm-3 cta">
					    find your home
				    </div>

					  <div class="search_block search_block_location col-xs-9 col-sm-6">
					    <label>
					      <input id="location" name="location" type="text" placeholder="enter city, state, or zip code">
					    </label>
						</div>
					  <div class="search_block submit_search col-xs-3 col-sm-3">
					    <button id="btnSearch" type="submit" class="btn btn-primary btn-block">Find <i class="fa fa-arrow-right" aria-hidden="true"></i></button>
					  </div>
					</div>
					<div id="search_error" class="search_error">Please enter city, state, or zip code.</div>
				</form>			    
    	</div>
    </div>
    <!-- End quick_search -->	  
	
	</div>
	
<?php }
	
function social_links() {
	// check if the repeater field has rows of data
	if( have_rows('social_account', 'option') ):
		echo '<ul class="social clearfix">';
			while ( have_rows('social_account', 'option') ) : the_row(); ?>
				
				<li>
					<a rel="nofollow" target="_blank" href="<?php the_sub_field('social_url'); ?>">
						<i class="fa fa-<?php the_sub_field('social_provider'); ?>" aria-hidden="true"></i>
					</a>
				</li>
			
			<?php endwhile;
		echo '</ul>';
	else :
	
		// no rows found
	
	endif;
}

// Content Builder ACF
function content_acf() { 

	// check if the flexible content field has rows of data
	if( have_rows('sections') ):
	
		// loop through the rows of data
		while ( have_rows('sections') ) : the_row();
		
			if( get_row_layout() == 'content_block' )
			
				get_template_part('templates/acf/content-block');

			if( get_row_layout() == 'columns' )
			
				get_template_part('templates/acf/columns');
									
		endwhile;
	
	else :
	
		// no layouts found
	
endif;

}
add_action('above_content', __NAMESPACE__ . '\\content_acf');
