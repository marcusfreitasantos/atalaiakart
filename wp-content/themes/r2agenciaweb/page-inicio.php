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
	.breadcrumb{
		display: none;
	}
</style>



<div id="content" class="home-content">

<!--
==========================================================================
Slide
========================================================================== -->
	<section class="slider" id="slider">
		<?php echo do_shortcode('[r2slider]'); ?>
	</section>


<div class="divisor"></div>

<!--
==========================================================================
Quem somos
========================================================================== -->
	<section class="quem-somos" id="quem-somos">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-md-6 wow fadeInRight">
					<img class="img-fluid" src="<?php echo get_template_directory_uri(); ?>/assets/img/quem-somos-img.png">
				</div>

				<div class="col-md-6 wow fadeInLeft">
					<h2 class="section-title"> Quem Somos</h2>
					<p class="text">O Atalaia Kart foi fundado em maio de 2019 com o objetivo de ser um novo ponto de entretenimento para os sergipanos. Uma estrutura montada no Kartódromo Emerson Fittipaldi, na Orla da Atalaia, onde os clientes podem participar de corridas indoor cronometradas com a família, amigos do trabalho ou membros de qualquer grupo e descobrir quem é o mais rápido da turma. </p>
					<a class="btn btn-primary" href="/quem-somos">Saiba Mais</a>
				</div>


			</div>
		</div>

</section>


<!--
==========================================================================
Horários e Preços
========================================================================== -->
<section class="horarios" id="horarios">
		<div class="container">
			<div class="row align-items-center">

				<div class="col-md-6 wow fadeInLeft">
					<h2 class="section-title">Horário de Funcionamento</h2>
					<h3 class="d-flex justify-content-between">Terça a Sábado <span>18h às 22h</span></h3>
					<h3 class="d-flex justify-content-between">Domingo <span>15h às 22h</span></h3>
					<h3 class="d-flex justify-content-between">Feriados <span>17h às 22h</span></h3>
				</div>

				<div class="col-md-6 wow fadeInRight">
					<h2 class="section-title">Valor das Corridas</h2>
						<h3 class="d-flex justify-content-between">10 minutos <span>R$ 40 por pessoa</span></h3>
						<h3 class="d-flex justify-content-between">15 minutos <span>R$ 50 por pessoa</span></h3>
						<h3>Cada bateria pode ter até 06 (seis) pilotos.</h3>	
				</div>


			</div>
		</div>

	</section>




<!--
==========================================================================
Galeria de Fotos
========================================================================== -->
<section class="galeria text-center wow fadeInUp" id="galeria">
	<div class="container">
		<div class="row justify-content-center">
			<h2 class="section-title pb-4">Galeria de Fotos</h2>
		</div>

		<div class="row">
			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (1).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (1).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (2).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (2).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (3).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (3).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (4).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (4).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (5).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (5).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (6).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (6).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (7).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (7).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>

			<div class="col-md-3">
				<div class="galerias-element">
					<div class="thumb">
						<a href="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (8).jpg" data-lightbox="galeria" data-title="galeria">													    		
							<img src="<?php echo get_template_directory_uri(); ?>/assets/img/atalaia-kart-galeria (8).jpg" alt="Alataia Kart - Imagens" class="hide galery-thumbs">
						</a>
					</div>
				</div>
			</div>
		</div>

		<a href="/galerias/galeria-de-fotos/" class="btn btn-primary">Ver Galeria</a>
	</div>
</section>




	

<?php get_footer(); ?>