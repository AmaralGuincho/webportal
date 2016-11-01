// A js file to help us with animations inside the project

// Getting Cadastro Card
var cardCadastro = document.querySelectorAll('.cardCadastro');
// Getting all cards
var card = document.querySelectorAll('.card');
// Getting FAB buttons
var fabButton = document.querySelector('#fabButton');

// Preset Window animations
window.addEventListener('load', function(){
	// Animatting Every Default Card
	for (var i = 0; i < card.length; i++) {
		// Adding Animation Class
		card[i].classList.add('animated');
		// Intro effect
		card[i].classList.add('bounceInUp');
	}

	// Adding Animations to FAB
	fabButton.classList.add('animated');
	fabButton.classList.add('rotateIn');
});

// FAB action (hiding normal cards and showing cadastro only)
fabButton.addEventListener('click', function(){
	// Taking out normal cards animations
	for (var i = 0; i < card.length; i++) {
		card[i].classList.remove('bounceInUp');
		card[i].classList.add('bounceOutLeft');

		// Hide Cards after animation ends
		if(card[i].classList.contains('bounceOutLeft') == true){
			// Waiting for out animation to end
			card[i].addEventListener('animationend', function(e) {
				//Hiding default cards
				this.classList.add('hidden');

				// Hiding FAB
				fabButton.classList.remove('rotateIn');
				fabButton.classList.add('bounceOutRight');

				// Showing cardCadastro
				for (var j = 0; j < cardCadastro.length; j++) {
					cardCadastro[j].classList.remove('hidden');
					cardCadastro[j].classList.add('animated');
					cardCadastro[j].classList.add('bounceInUp');
				}

			});
		}
	}
});
