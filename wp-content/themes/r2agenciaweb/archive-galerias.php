<?php get_header(); ?>



<section id="momentos" class="momentos" style="padding-bottom: 100px;">
<div class="container">
	<div class="row">
<?php
$galerias = new WP_Query(array(
'posts_per_page' => -1,
'post_type' => 'galerias',
));

while($galerias->have_posts()){
$galerias->the_post();

$descricao = get_field('descricao');
$resumo = preg_replace("/^(\s*(\S+\s+){0,24}\S+).*/s", '$1', $descricao);

?>

	<div class="col-md-4 wow fadeInUp">
		<div class="card">
			<img class="card-img-top" src="<?php the_field('imagem_principal');?>">		
			<div class="card-body text-center d-flex justify-content-between flex-column">
				<h5 class="card-title"><?php the_title();  ?></h5>
				<div class="text" style="height: 140px">
					<?php echo $resumo;?>
				</div>
				<a class="btn btn-orange" href="<?php the_permalink();?>">Ver Galeria</a>
			</div>

		</div>
	</div>
<?php
}
?>
</div>
</div>
</section>

<?php get_footer(); ?>
