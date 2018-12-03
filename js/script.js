var rechercheInput = document.getElementById('recherche');
var rechercheDiv = document.getElementById('more');
var recherche = document.getElementsByTagName('form');

rechercheInput.addEventListener('click', function(){
	recherche[0].style.margin = '0%';
	rechercheDiv.style.display = 'flex';
	setTimeout(function(){
		rechercheDiv.style.height = '20%';
		rechercheDiv.style.backgroundColor = 'blue';
	},1000);
});