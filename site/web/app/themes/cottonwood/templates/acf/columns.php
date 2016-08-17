<div class="col-wrapper">
	<div class="container-fluid columns wow slideInLeft box">
		<div class="container">
			<div class="row text-center">
				
				<h2>- <?php the_sub_field('columns_heading') ?> -</h2>
				
				
				<?php
					
					$rows = get_sub_field('column');
					
					if( $rows ) {
						$count = count($rows);
						$colClass = '';
						
						if( $count == 3 ) {
							$colClass = 'col-sm-4';
						}
						elseif( $count == 2 ) {
							$colClass = 'col-sm-6';
						}
						else {
							$colClass = 'col-sm-12';
						}
						
						foreach( $rows as $row ) {
							echo '<div class="'. $colClass .' '. $row['text_align'] .'">';
								echo '<h3>'. $row['col_heading'] .'<sup>'. $row['col_heading_superscript'] .'</sup></h3>';
								echo '<p>'. $row['col_text'] .'</p>';
							echo '</div>';
							
						}
								
						
					}
							
				?>
			</div>
		</div>
	</div>
</div>