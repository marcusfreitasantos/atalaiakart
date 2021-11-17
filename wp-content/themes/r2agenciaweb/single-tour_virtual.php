<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage None Plate
 * @since None Plate 1.0
 */

get_header(); ?>


<meta property='og:image' content='<?php the_field("imagem_principal"); ?>'/>

<div id="content" class="reading reading-single reading-single-galerias">


	<!-- ARTICLE -->
	<article id="page" class="single-galerias-<?php echo $post->ID; ?>">
		<main class="page-container">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<div class="the-content galerias-content wow fadeInUp">
								<div class="row pt-5 pb-5">
				
								
									<?php 
										$gallery_slug = $post->post_name;
										$images = get_field('galeria_de_fotos');
										if( $images ):
									?>
									        <?php foreach( $images as $image ): ?>

							                	<div class="col-md-3">
							                		<div class="galerias-element">
												    	<div class="thumb">
												    		<a href="<?php echo $image['url']; ?>" data-lightbox="<?php echo $gallery_slug; ?>" data-title="<?php the_title(); ?>">													    		
													    		<img src="<?php echo $image['sizes']['large']; ?>" alt="<?php the_title(); ?>" class="hide galery-thumbs">
													    	</a>
												    	</div>

							                		</div>
							                	</div>

									        <?php endforeach; ?>
										<?php endif; ?>
								</div>
						</div>
					</div>
				</div>
			</div>
		</main>
	</article>
</div>
<?php get_footer(); ?>
