// Animate.css JAVASCRIPT (NOT JQUERY) function

// create a one-time event
function onetime(node, type, callback) {

	// create event
	node.addEventListener(type, function(e) {
		// remove event
		e.target.removeEventListener(e.type, arguments.callee);
		// call handler
		return callback(e);
	});

}

function animate(animationName) {
  var animationEnd = 'webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend';
  this.classList.add('animated' + animationName).oneTime(animationEnd,function() {
    this.removeClass('animated' + animationName);
  });
}

function animateCSS(animationName) {
  this.classList.add('animated');
  this.classList.add(animationName);
}

function hideCard(cardID) {
	var card = document.getElementById(cardID);
	card.classList.add('hidden');
}

function showCard(cardID){
	var card = document.getElementById(cardID);
	card.classList.remove('hidden');
}
