var rechercheInput = document.getElementById('recherche');
var rechercheDiv = document.getElementById('more');
var recherche = document.getElementsByTagName('form');
var rechercheSubmit = document.getElementById('submit');
var trierButton = document.getElementById('trier');
rechercheInput.style.height = "100%";

rechercheInput.addEventListener('click', function(){
	recherche[0].style.marginTop = '0%';
	recherche[0].style.height = '40%';
	rechercheInput.style.height = "15%";
	rechercheDiv.style.height = '80%';
	setTimeout(function(){
		rechercheDiv.style.display = 'flex';
	},500);
});

rechercheSubmit.addEventListener('click', function(){
	rechercheDiv.style.height = '0%';
	recherche[0].style.height = '5%';
	rechercheInput.style.height = "100%";
	trierButton.style.display = 'block';
	setTimeout(function(){
		rechercheDiv.style.height = '0%';
		rechercheDiv.style.display = 'none';
	},500);
});

