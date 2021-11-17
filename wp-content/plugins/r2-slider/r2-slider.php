<?php
/**
 * Plugin Name: Slide R2
 * Plugin URI: https://r2agenciadigital.com.br
 * Description: Plugin de Slider Desenvolvido pela R2 Agência Digital
 * Version: 1.0.2
 * Author: R2 Agência Digital
 * Author URI: https://r2agenciadigital.com.br
 */

 //Custom Fields
 if( function_exists('acf_add_local_field_group') ):

acf_add_local_field_group(array(
	'key' => 'group_5f5133d058478',
	'title' => 'Slider',
	'fields' => array(
		array(
			'key' => 'field_5f5133dfad7fb',
			'label' => 'Banner Desktop',
			'name' => 'desktop',
			'type' => 'image',
			'instructions' => '',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'return_format' => 'url',
			'preview_size' => 'full',
			'library' => 'uploadedTo',
			'min_width' => '',
			'min_height' => '',
			'min_size' => '',
			'max_width' => '',
			'max_height' => '',
			'max_size' => '',
			'mime_types' => '',
		),
		array(
			'key' => 'field_5f51347551ecc',
			'label' => 'Banner Mobile',
			'name' => 'mobile',
			'type' => 'image',
			'instructions' => '',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'return_format' => 'url',
			'preview_size' => 'full',
			'library' => 'uploadedTo',
			'min_width' => '',
			'min_height' => '',
			'min_size' => '',
			'max_width' => '',
			'max_height' => '',
			'max_size' => '',
			'mime_types' => '',
		),
		array(
			'key' => 'field_5f52de7051d42',
			'label' => 'Link Banner',
			'name' => 'link',
			'type' => 'text',
			'instructions' => 'Digite o link usando caminho relativo. ex: http://www.link.com ou https://www.link.com',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'default_value' => '',
			'placeholder' => '',
			'prepend' => '',
			'append' => '',
			'maxlength' => '',
		),
		array(
			'key' => 'field_5f52e613a223b',
			'label' => 'Abrir link em uma nova janela?',
			'name' => 'abrir_link_em_uma_nova_janela',
			'type' => 'true_false',
			'instructions' => '',
			'required' => 0,
			'conditional_logic' => 0,
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'message' => '',
			'default_value' => 0,
			'ui' => 0,
			'ui_on_text' => '',
			'ui_off_text' => '',
		),
		array(
			'key' => 'field_5f52e5a0fbc90',
			'label' => 'Digite aqui o valor para abrir em uma nova janela',
			'name' => 'window',
			'type' => 'text',
			'instructions' => 'Digite _blank para que o link abra em uma nova janela',
			'required' => 0,
			'conditional_logic' => array(
				array(
					array(
						'field' => 'field_5f52e613a223b',
						'operator' => '==',
						'value' => '1',
					),
				),
			),
			'wrapper' => array(
				'width' => '',
				'class' => '',
				'id' => '',
			),
			'default_value' => '',
			'placeholder' => '',
			'prepend' => '',
			'append' => '',
			'maxlength' => '',
		),
	),
	'location' => array(
		array(
			array(
				'param' => 'post_type',
				'operator' => '==',
				'value' => 'slider',
			),
		),
	),
	'menu_order' => 0,
	'position' => 'normal',
	'style' => 'default',
	'label_placement' => 'top',
	'instruction_placement' => 'label',
	'hide_on_screen' => '',
	'active' => true,
	'description' => '',
));

endif;

if( function_exists('acf_add_local_field_group') ):

	acf_add_local_field_group(array(
		'key' => 'group_60de7d6f2126f',
		'title' => 'Ajustes Slide R2',
		'fields' => array(
			array(
				'key' => 'field_60de7dc8aa48e',
				'label' => 'Tipo de Transição',
				'name' => 'tipo_de_transicao_do_slider',
				'type' => 'select',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'choices' => array(
					'slide' => 'slide',
					'fadein' => 'fadein',
				),
				'default_value' => 'fadein',
				'allow_null' => 1,
				'multiple' => 0,
				'ui' => 0,
				'return_format' => 'value',
				'ajax' => 0,
				'placeholder' => '',
			),
			array(
				'key' => 'field_60e2a3e838cba',
				'label' => 'Usar Setas?',
				'name' => 'usar_setas',
				'type' => 'true_false',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'message' => '',
				'default_value' => 0,
				'ui' => 0,
				'ui_on_text' => '',
				'ui_off_text' => '',
			),
			array(
				'key' => 'field_60defe331c078',
				'label' => 'Seta Direita',
				'name' => 'seta_direita',
				'type' => 'image',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => array(
					array(
						array(
							'field' => 'field_60e2a3e838cba',
							'operator' => '==',
							'value' => '1',
						),
					),
				),
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'return_format' => 'url',
				'preview_size' => 'full',
				'library' => 'all',
				'min_width' => '',
				'min_height' => '',
				'min_size' => '',
				'max_width' => '',
				'max_height' => '',
				'max_size' => '',
				'mime_types' => '',
			),
			array(
				'key' => 'field_60defe0679830',
				'label' => 'Seta Esquerda',
				'name' => 'seta_esquerda',
				'type' => 'image',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => array(
					array(
						array(
							'field' => 'field_60e2a3e838cba',
							'operator' => '==',
							'value' => '1',
						),
					),
				),
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'return_format' => 'url',
				'preview_size' => 'full',
				'library' => 'all',
				'min_width' => '',
				'min_height' => '',
				'min_size' => '',
				'max_width' => '',
				'max_height' => '',
				'max_size' => '',
				'mime_types' => '',
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'options_page',
					'operator' => '==',
					'value' => 'slider2-general-settings',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => true,
		'description' => '',
	));
	
	endif;

add_action( 'admin_notices', 'my_plugin_admin_notices' );

function my_plugin_admin_notices() {  

if ( !is_plugin_active( 'advanced-custom-fields-pro/acf.php' ) ) {
  echo '<div class="error"><p><strong>R2Slider necessita do plugin Advanced Custom Fields PRO para poder funcionar!</strong></p></div>'; 
}
}

 //Register Post Type
function post_type_slider() { 
    $labels = array(
        'name' => _x('Sliders', 'post type general name'),
        'singular_name' => _x('Slider', 'post type singular name'),
        'add_new' => _x('Adicionar Novo', 'Novo Slider'),
        'add_new_item' => __('Novo Slider'),
        'edit_item' => __('Editar Slider'),
        'new_item' => __('Novo Slider'),
        'view_item' => __('Ver Slider'),
        'search_items' => __('Procurar Slider'),
        'not_found' =>  __('Nenhum registro encontrado'),
        'not_found_in_trash' => __('Nenhum registro encontrado na lixeira'),
        'parent_item_colon' => '',
        'menu_name' => 'Sliders'
    );

    $args = array(
        'labels' => $labels,
        'public' => true,
        'public_queryable' => true,
        'show_ui' => true,           
        'query_var' => true,
				'menu_icon' => 'dashicons-images-alt2',
        'rewrite' => true,
        'capability_type' => 'post',
        'has_archive' => true,
        'hierarchical' => false,
        'menu_position' => null,     
        'supports' => array('title')
      );
register_post_type( 'slider' , $args );
flush_rewrite_rules();
}

//Load Carrousel styles
function carrousel_styles(){
  wp_enqueue_style( 'slick-css',  'https://cdnjs.cloudflare.com/ajax/libs/slick-carousel/1.8.1/slick.min.css', array(), null, 'all' );
  wp_enqueue_style( 'styles', plugin_dir_url(__FILE__) . '/css/styles.css', array(), null, 'all' );
}
 //Load Carrousel scripts
function carrousel_scripts() { 

//Enqueue script slider
  wp_enqueue_script( 'slick-carousel', 'https://cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js', array(), false, true );
  }

//Create Shortcode
    function display_custom_post_type(){
        $args = array(
            'post_type' => 'slider',
            'post_status' => 'publish',
            'post_id' => null,
        );

        $string = '';
        $query = new WP_Query( $args );
        if( $query->have_posts() ){
          if (class_exists('ACF')) {
						$string .= '<div class="ct-slider '.get_field('tipo_de_transicao_do_slider', 'option').' '.get_field('usar_setas', 'option').'">';
            $string .= '<div id="slide">';
            while( $query->have_posts() ){
                $query->the_post();   
                $string .= '<div class="item">';
                $string .= '<a href="'.get_field('link').'"  target="'.get_field('window').'"><img class="nomobile" src="'.get_field('desktop').'"/><img class="mobile" src="'.get_field('mobile').'"/></a>';
                $string .= '</div>';
                $meta = get_post_meta(get_the_id(), '');
            }
					
            $string .= '</div>';
						$string .= '</div>';
        }else{
          $string .= '<p style="color:red">R2Slider necessita do Advanced Custom Fields para funcionar, ative-o.</p>';
        }     
        }else {
          // No posts found
          $string .= '<p>Nada foi encontrado</p>';      
      }
        wp_reset_postdata();
        return $string;
    }
//Inline Script
    function inline_script() {
      ?>
      <script>
(function($) {
function setSlickSettings(){
	let settings;
  settings = {
  dots: true,
	arrows: false,
  infinite: true,
  autoplay: true,
  speed: 500,
  autoplaySpeed:6000,
  cssEase: 'linear',

}	
if($(".ct-slider").hasClass("1")){
settings.arrows = true;

}
if($(".ct-slider").hasClass("fadein")){
settings.fade = true;
}
$('#slide').slick(settings);
}
setSlickSettings();
})(jQuery);
      </script>
      <?php
		}

		//Inline css
add_action('wp_head', 'my_custom_styles', 100);

function my_custom_styles()
{
 echo '<style>
 .slick-next,.slick-next:hover,.slick-next:active {
  background: url('.get_field('seta_direita', 'option').')!important;
	background-repeat:no-repeat!important;
}
.slick-prev,.slick-prev:hover,slick-prev:active {
  background: url('.get_field('seta_esquerda', 'option').')!important;
	background-repeat:no-repeat!important;
}
 </style>';
}

		
		function admin_style() {
			wp_enqueue_style('admin-styles', plugin_dir_url(__FILE__) .'/css/admin.css');
		}
		
//ACF Custom Options Page
		function basic_acf_add_options() {
			if( function_exists('acf_add_options_page') ) {
        $option_page = acf_add_options_page(array(
					'page_title'    => __('Configurações Slide R2'),
					'menu_title'    => __('Configurações'),
					'menu_slug'     => 'slider2-general-settings',
					'parent'     => 'edit.php?post_type=slider',
					'capability' => 'manage_options',
					'redrect' => false,
        ));
    }
		}
		

//Load actions and shortcode
add_action('init', 'post_type_slider');   
add_shortcode('r2slider', 'display_custom_post_type' );
add_action( 'wp_enqueue_scripts', 'carrousel_styles' );
add_action('wp_enqueue_scripts','carrousel_scripts');
add_action( 'wp_footer', 'inline_script', 99999999 );
add_action('admin_enqueue_scripts', 'admin_style');
add_action('acf/init', 'basic_acf_add_options');
