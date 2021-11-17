<?php
/**
 * The template for displaying the footer
 *
 * Contains the closing of the #content div and all content after
 *
 * @package WordPress
 * @subpackage None Plate
 * @since None Plate 1.0
 */
?>
<section class="cta" id="cta">
	<div class="container">
		<div class="row">
			<h2 class="cta-title wow fadeInUp">Venha sentir a emoção de<br> pilotar um Kart!</h2>
			<p class="cta-text wow fadeInUp">Agende uma visita e conheça <br>nossos serviços</p>
			<a class="cta-link btn btn-secondary wow fadeInUp" href="/contato">Clique Aqui</a>
		</div>
	</div>
</section>

<section id="footer">
		<div class="container" style="padding: 60px 0;">
			<div class="row">
				<div class="col-md-6">
					<h5 class="widget-title">Mapa do Site</h5>
					<ul class="navbar-nav mr-auto">
						<li class="nav-item">
							<a class="nav-link" href="/">Início</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/quem-somos">Quem Somos</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/#horarios">Preços e Horários</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/corrida">Corrida</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/quem-pode-participar">Quem pode Participar</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/eventos">Eventos</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/galerias/galeria-de-fotos/">Galeria de Fotos</a>
						</li>

						<li class="nav-item">
							<a class="nav-link" href="/contato">Fale Conosco</a>
						</li>
					</ul>
				</div>

				<div class="col-md-6">
					<h5 class="widget-title">Fale conosco</h5>
					<div class="contato-footer">
						<h6><i class="fas fa-phone-square"></i> (79) 99686-6495</h6>
						<h6><i class="far fa-envelope"></i> contato@atalaiakart.com.br</h6>
						<h6><i class="fas fa-map-marker-alt"></i> SE-100, 957 - Atalaia | Aracaju - Sergipe</h6>
						<h6><a href="https://www.instagram.com/atalaiakart/" target="_blank"><i class="fab fa-instagram"></i> /atalaiakart</a></h6>
					</div>

					
				</div>
			</div>
		</div>			
</section> 

<section class="bottom-bar">
			<div class="container">
				<div class="row align-items-center justify-content-between">
					<div class="col-md-6">
						<h5>Copyright © <?php echo date('Y'); ?> - Todos os direitos reservados.</h5>
					</div>
					<div class="col-md-6 bottom-content">
						<div class="d-flex align-items-center">
								<h5>Feito com ♥ pela</h5>
								<a href="https://r2agenciadigital.com.br/" target="_blank">
									<img style=" width: 25px; margin-left: 10px;" src="<?php echo get_template_directory_uri(); ?>/assets/img/r2AgenciaDigital_branco.png">
								</a>	
						</div>	
					</div>
				</div>
			</div>
</section>

<div class="to-top">
	<a href="#topbar"><i class="fas fa-chevron-up"></i></a>
</div>




<!-- Footer Links Libraries -->
    <!-- jQuery -->
    <script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/assets/libs/jquery/jquery-1.11.1.min.js'></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

	<!-- Lightbox -->
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/assets/libs/lightbox/js/lightbox.min.js'></script>


	<!-- Bootstrap -->
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/assets/libs/bootstrap/bootstrap.min.js'></script>
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/assets/libs/bootstrap/bootstrap.bundle.min.js'></script>
	

	<!-- Owl -->
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/assets/libs/owl/owl.carousel.js'></script>



	<!--  if IE 8  -->
	<script type='text/javascript' src='http://r2server.com.br/plugins/oldbrowsers/ifIE.js'></script>

	<!-- Main JS -->
	<script type='text/javascript' src='<?php echo get_template_directory_uri(); ?>/assets/js/app.js'></script>

	<!--WOW-->
	 <script src='<?php echo get_template_directory_uri(); ?>/assets/libs/wow/wow.min.js'></script>
				  <script>
				  new WOW().init();
				  </script>

	<!-- Footer Tags -->
		<?php wp_footer(); ?>
    

	<script>
    //mobile-menu
    const btnMobile = document.querySelector("#hamburger");
    const mobileMenu = document.querySelector(".mobile-menu");

    function showMenu(){
        console.log("ok")
        mobileMenu.classList.toggle("showMenu");
    }

</script>
</body>
</html>
