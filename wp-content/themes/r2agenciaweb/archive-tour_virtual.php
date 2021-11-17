<?php get_header(); ?>



<section id="momentos" class="momentos" style="padding-bottom: 100px;">
<div class="container">
	<div class="row">
<?php
$tour = new WP_Query(array(
'posts_per_page' => -1,
'post_type' => 'tour_virtual',
));

while($tour->have_posts()){
$tour->the_post();

?>

	<div class="col-md-3">
		<div class="card m-1 p-2">
			<img class="card-img-top" src="<?php the_field('imagem_principal');?>">		
			<div class="card-body text-center d-flex justify-content-between flex-column">
				<h5 class="card-title" style="height: 60px"><?php the_title();  ?></h5>
				<a class="btn btn-orange" href="<?php the_permalink();?>">Ver Espaço</a>
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
