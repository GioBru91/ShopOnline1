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

