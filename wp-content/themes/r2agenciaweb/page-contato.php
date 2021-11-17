<?php
/**
 * The template for displaying all single posts and attachments
 *
 * @package WordPress
 * @subpackage None Plate
 * @since None Plate 1.0
 */

 
 get_header(); ?>



<style>
.cta{
	display: none;
}
</style>



<div id="content" class="home-content">



<!--
==========================================================================
Contato
========================================================================== -->
	<section class="contato" id="contato">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-12 wow fadeInLeft">
					<h2 class="section-title text-center">Venha nos Conhecer</h2>
					<?php echo do_shortcode('[contact-form-7 id="9" title="Venha nos Visitar"]');?>
				</div>
				<div class="col-md-6">
				
				</div>
			</div>
		</div>
	</section>

<section class="mapa mt-1">
		<div class="col-md-12">
			<iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15667.052337176492!2d-37.0416958!3d-10.9812469!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x9277f526524f40d8!2sAtalaia%20Kart!5e0!3m2!1spt-BR!2sbr!4v1636136296159!5m2!1spt-BR!2sbr" width="100%" height="450" style="border:0;" allowfullscreen="" loading="lazy"></iframe>
		</div>
</section>






	

<?php get_footer(); ?>