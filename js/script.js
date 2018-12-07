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

var years = document.getElementById('annee');
years.addEventListener("change", function(){
var httpRequest = new XMLHttpRequest();
httpRequest.onreadystatechange = function (argument) {
	if (httpRequest.readyState === 4)
		document.getElementById('annee').innerHTML = httpRequest.responseText;
}
httpRequest.open('GET', '../php/recherche.php?annee='+years.value+'', true);
httpRequest.send();
});