// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require jquery3
//= require jquery
//= require jquery_ujs
//= require popper
//= require bootstrap-sprockets
//= require cocoon
//= require_tree .

$(document).ready(function () {
  $("#theTarget").skippr({
    transition : 'slide',
    speed : 1000,
    easing : 'easeOutQuart',
    navType : 'block',
    childrenElementType : 'div',
    arrows : true,
    autoPlay : true,
    autoPlayDuration : 3000,
    keyboardOnAlways : true,
    hidePrevious : false
  });
});

$(document).on("turbolinks:load", function(){
	// /recipes#new,editでの画像プレビュー
	function readURL(input) {
		if(input.files && input.files[0]){
			var reader = new FileReader();
			reader.onload = function (e) {
				$(input).parent().prev().attr('src', e.target.result);
			}
			reader.readAsDataURL(input.files[0]);
		}
	}
	$(".image_input").on("change", function(){
		readURL(this);
	})

	// ステップナンバー追加
	var button = document.querySelector('.add_fields')
	 
		 button.addEventListener('click', function() {
			 setTimeout(
				 function() {
					const elements = document.querySelectorAll('.nested-fields');
					const targetElement = elements[elements.length - 1];
					const inputElement = targetElement.children[1].children[1].children[1];
					const imageElement = targetElement.children[1].children[0];
					imageElement.id = 'img_prev_step' + `${elements.length}`;
					inputElement.id = 'input_image_step' + `${elements.length}`;

					$(".image_input").on("change", function(){
						readURL(this);
					})
					console.log(inputElement)
					targetElement.firstElementChild.innerText = 'ステップ' + `${elements.length}`

				 },
				 '50'
			 );
		 });
	
		 
});


