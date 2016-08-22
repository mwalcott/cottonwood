<div class="full-width-image-wrapper wow slideInLeft box" style="background-image: url(<?php the_sub_field('fw_img_background_image'); ?>);">
	<div class="container-fluid full-width-image">
		<div class="container">
			<div class="row text-center">
				<div class="fwi-content col-sm-8 col-sm-offset-2">
					<?php if( get_sub_field('fw_img_button_text') && get_sub_field('fw_img_button_link') ) { ?>
						<a class="btn btn-outline btn-lg btn-middle" href="<?php the_sub_field('fw_img_button_link'); ?>">
							<?php the_sub_field('fw_img_button_text'); ?>
						</a>
					<?php } ?>
				</div>
			</div>
		</div>
	</div>
</div>