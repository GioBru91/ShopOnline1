function validazioneForm() {
	var nome=  document.getElementById('nome').value;
	var cognome=  document.getElementById('cognome').value;
	var indirizzo=  document.getElementById('indirizzo').value;
	var username=  document.getElementById('username').value;
	var password=  document.getElementById('password').value;
	var controllo= true;
	
	if (nome==""){
		document.getElementById('nome').placeholder='Campo Obbligatorio';
		document.getElementById('nome').classList.add('alert-danger');
		controllo=false;
	}	
	
	if (cognome==""){
		document.getElementById('cognome').placeholder='Campo Obbligatorio';
		document.getElementById('cognome').classList.add('alert-danger');
		controllo=false;
	}
	if (indirizzo==""){
		document.getElementById('indirizzo').placeholder='Campo Obbligatorio';
		document.getElementById('indirizzo').classList.add('alert-danger');
		controllo=false;
	}
	if (username==""){
		document.getElementById('username').placeholder='Campo Obbligatorio';
		document.getElementById('username').classList.add('alert-danger');
		controllo=false;
	}
	if (password==""){
		document.getElementById('password').placeholder='Campo Obbligatorio';
		document.getElementById('password').classList.add('alert-danger');
		controllo=false;
	}
	if(controllo==false){
		document.getElementById('alert').style.display='block';
	}

	return controllo;
}

function validazioneFormAcquisto() {
	var quantita = document.getElementById('quantitaAcquistata').value;
	var controllo = true;
	if (quantita == ""){
		document.getElementById('quantitaAcquistata').placeholder='Campo Obbligatorio';
		document.getElementById('quantitaAcquistata').classList.add('alert-danger');
		controllo=false;
	}
	return controllo;
}

function validazioneFormLogin() {
	var username=  document.getElementById('username').value;
	var password=  document.getElementById('password').value;
	var controllo= true;
	
	if (username=="" & password ==""){
		document.getElementById('username').placeholder='Campo Obbligatorio';
		document.getElementById('username').classList.add('alert-danger');
		document.getElementById('password').placeholder='Campo Obbligatorio';
		document.getElementById('password').classList.add('alert-danger');
		controllo=false;
	}else if(username=="" & password !=""){
		document.getElementById('username').placeholder='Campo Obbligatorio';
		document.getElementById('username').classList.add('alert-danger');
		document.getElementById('password').classList.remove('alert-danger');
		document.getElementById('password').classList.add('alert-success');
		controllo=false;
	}
	else if (username !="" & password==""){
		document.getElementById('username').classList.remove('alert-danger');
		document.getElementById('username').classList.add('alert-success');
		document.getElementById('password').placeholder='Campo Obbligatorio';
		document.getElementById('password').classList.add('alert-danger');
		controllo=false;
	
	}
		return controllo;
}

function myFunction(x) {
    x.classList.toggle("change");
}

function show()
{
var p = document.getElementById('pwd');
p.setAttribute('type','text');  
}

function hide()
{
   var p = document.getElementById('pwd');
p.setAttribute('type','password');   
}

function showHide()
{
    var pwShown = 0;

document.getElementById("eye").addEventListener("click", function() {
    if (pwShown == 0) 
    {
        pwShown = 1; 
        show();
    } 
    else {
        pwShow = 0;
        hide();
    }
            }, false);

}

function magnify(imgID, zoom) {
	  var img, glass, w, h, bw;
	  img = document.getElementById(imgID);

	  /*create magnifier glass:*/
	  glass = document.createElement("DIV");
	  glass.setAttribute("class", "img-magnifier-glass");

	  /*insert magnifier glass:*/
	  img.parentElement.insertBefore(glass, img);

	  /*set background properties for the magnifier glass:*/
	  glass.style.backgroundImage = "url('" + img.src + "')";
	  glass.style.backgroundRepeat = "no-repeat";
	  glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
	  bw = 3;
	  w = glass.offsetWidth / 2;
	  h = glass.offsetHeight / 2;

	  /*execute a function when someone moves the magnifier glass over the image:*/
	  glass.addEventListener("mousemove", moveMagnifier);
	  img.addEventListener("mousemove", moveMagnifier);

	  /*and also for touch screens:*/
	  glass.addEventListener("touchmove", moveMagnifier);
	  img.addEventListener("touchmove", moveMagnifier);
	  function moveMagnifier(e) {
	    var pos, x, y;
	    /*prevent any other actions that may occur when moving over the image*/
	    e.preventDefault();
	    /*get the cursor's x and y positions:*/
	    pos = getCursorPos(e);
	    x = pos.x;
	    y = pos.y;
	    /*prevent the magnifier glass from being positioned outside the image:*/
	    if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
	    if (x < w / zoom) {x = w / zoom;}
	    if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
	    if (y < h / zoom) {y = h / zoom;}
	    /*set the position of the magnifier glass:*/
	    glass.style.left = (x - w) + "px";
	    glass.style.top = (y - h) + "px";
	    /*display what the magnifier glass "sees":*/
	    glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
	  }

	  function getCursorPos(e) {
	    var a, x = 0, y = 0;
	    e = e || window.event;
	    /*get the x and y positions of the image:*/
	    a = img.getBoundingClientRect();
	    /*calculate the cursor's x and y coordinates, relative to the image:*/
	    x = e.pageX - a.left;
	    y = e.pageY - a.top;
	    /*consider any page scrolling:*/
	    x = x - window.pageXOffset;
	    y = y - window.pageYOffset;
	    return {x : x, y : y};
	  }
	}




