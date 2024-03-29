var sldrEl_index_slider = document.getElementById('index_slider');
var sldrEl_slider_elements = document.getElementById('slider_elements');
var sldrEl_slider_button = document.getElementById('slider_button');


sldrEl_index_slider.style.display = 'block';

var sldr_transition_fps = 60; // nombre de fps pour le changement de slider_element (1s)
var sldr_interval_changement = 8; // en secondes



var i = 0;
while (i<sldrContent_img.length)
{
	var newElement = document.createElement('div');
	newElement.id = 'slider_element_'+i;
	newElement.className = 'slider_element';
	newElement.style.display = 'none';
	newElement.style.opacity = '0';
	newElement.innerHTML = '<img src="'+sldrContent_img[i]+'" alt="" />';
	if (sldrContent_href[i] != false)
	{
		newElement.innerHTML += '<a class="slider_element_link" href="'+sldrContent_href[i]+'">&nbsp;</a>';
	}
	sldrEl_slider_elements.appendChild(newElement);
	i++;
}

var sldr_current_id = 0;
var sldr_max_id = sldrContent_img.length-1;
var sldr_isChanging = false;
var sldrSetInterval_transition;

function slider_defiler(next_val)
{
	// Ã©viter la supperposition d'animation
	if (sldr_isChanging)
		return null;
		
		
	var sldr_isChanging = true;
	
	
	if (next_val == null)
	{
		next_val = sldr_current_id+1;
		if (next_val > sldr_max_id)
			next_val = 0;
	}
	else
	{
		
	}
	
	var sldrEl_slider_ouvrant = document.getElementById('slider_element_'+next_val);
	var sldrEl_slider_fermant = document.getElementById('slider_element_'+sldr_current_id);
	
	
	// dÃ©but de transition
	sldrEl_slider_ouvrant.style.display = "block";
	
	var compteur_fps = 0;
	
	var time_debut = (new Date()).getTime();
	// 
	sldrSetInterval_transition = setInterval(function() {
		// boucle de transition
		var time = (new Date()).getTime();
		var diff_time = time-time_debut;
		compteur_fps++;
		
		if (diff_time <= 1000)
		{
			sldrEl_slider_ouvrant.style.opacity = (diff_time/1000)+"";
			sldrEl_slider_fermant.style.opacity = (1-diff_time/1000)+"";
		}
		// 
		
		// fin de transition
		if (diff_time >= 1000)
		{
			sldrEl_slider_ouvrant.style.opacity = "1";
			sldrEl_slider_fermant.style.opacity = "0";
			sldrEl_slider_fermant.style.display = "none";
			sldrEl_slider_fermant.style.zIndex = "0";
			sldrEl_slider_ouvrant.style.zIndex = "100";
			
			window.clearInterval(sldrSetInterval_transition);
			console.log('clearInterval_transition : '+(compteur_fps)+' fps');
			var sldr_isChanging = false;
			return null;
		}
		
		
	},1000/sldr_transition_fps);
	
	sldr_current_id = next_val;
	
}

var sldrEl_slider_depart = document.getElementById('slider_element_0');


setTimeout(function(){



	// affichage du premier slider_element
	var sldr_isChanging = true;
	sldrEl_slider_depart.style.display = "block";
	sldrEl_slider_depart.style.zIndex = "100";
	var time_debut = (new Date()).getTime();
	sldrSetInterval_transition = setInterval(function() {
		var time = (new Date()).getTime();
		var diff_time = time-time_debut;
		if (diff_time <= 1000)
		{
			sldrEl_slider_depart.style.opacity = (diff_time/1000)+"";
		}
		
		if (diff_time >= 1000)
		{
			sldrEl_slider_depart.style.opacity = "1";
			window.clearInterval(sldrSetInterval_transition);
			var sldr_isChanging = false;
			return null;
		}
	},1000/sldr_transition_fps);
	
	if (sldrContent_img.length>1)
		setInterval(slider_defiler,1000*sldr_interval_changement)
	
	
},1000);