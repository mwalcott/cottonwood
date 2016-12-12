<div class="container-fluid quote-wrapper wow slideIn box">
	<div class="container text-center">
		<div class="row">
			<div class="col-sm-8 col-sm-offset-2">
				<img src="<?= get_template_directory_uri(); ?>/dist/images/quote.png"/>
				<?php the_sub_field('quote_text') ?>
				
				<div class="row author">
					<div class="col-sm-8 col-sm-offset-2">
					<?php the_sub_field('quote_name') ?><br />
					<?php the_sub_field('quote_title') ?>	
					</div>				
				</div>
			</div>
		</div>
	</div>
</div>