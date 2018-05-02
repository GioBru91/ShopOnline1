<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"  href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/stile.css">

<script type= "text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>
<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>
<%String username= (String) request.getAttribute("username"); %>

<div id="banner" align="right" style="margin-right: 20px">
     <div id="banner-content">  
     
     
<div class="dropdown" style="margin-right:5px;">
<a data-toggle="dropdown" href="#">
 <button class="btn" id="profilo"> <img src="img/icona-profilo.png" width="40%" style=margin:10px></button>
</a>
<ul class="dropdown-menu" style="margin-left: 82%;">
   						<%if(utente == null) {%>
   						<li><a href="login.jsp">Login</a></li>
						<li><a href="registrazione.jsp">Registrazione</a></li>
						<%}else { %>
						<li><a href="ListaOrdini">I miei ordini</a></li>
						<li><a href="ListaAcquisti">I miei acquisti</a></li>
						<li><a href="Logout">Logout</a></li>
						<%} %>
   <li class="divider"></li>
</ul>


<a data-toggle="dropdown" href="#">
<button class="btn" id="carrello"><img src="img/icona_carrello.png" width="40%" style=margin:10px></button>
</a>
</div>


     
 
   
<form id="cerca" align="right"  action="" method="get"  width="2%" style= margin:10px>
<fieldset>
<legend></legend>
<input type="text" width="3%" placeholder="Cerca il prodotto" style="font-family: inherit;font-size: medium;font-weight: 200;"> 
<button class="btn" id="cerca"><img src="img/icone_cerca.png" width="40%" style=margin:10px></button>
</fieldset>
</form>
   
    </div>
  </div>
  

 
	<nav class="nav navbar-default">
       <div class=" collapse navbar-collapse" style="margin-left:4px;background-color: grey;">
            <ul class="nav navbar-nav">
               
<div class="dropdown">
<a data-toggle="dropdown" href="#" class="btn btn-primary">
<div class="container" onmouseover="myFunction(this)" onclick="myFunction(this)" style="background-color: grey">
  <div class="bar1"></div>
  <div class="bar2"></div>
  <div class="bar3"></div>
</div></a>
<ul class="dropdown-menu">
   <li><a href="Uomo">UOMO</a></li>
   <li><a href="Donna">DONNA</a></li>
   <li><a href="Bambino">BAMBINO</a></li>
   <li><a href="Casa">CASA</a></li>
   <li><a href="Elettronica">ELETTRONICA</a></li>
   <li><a href="Libri">LIBRI</a></li>
   <li><a>----------</a></li>
   <li><a href="ListaSaldi" style="background-color: red;"> SALDI </a></li>
   <li><a>----------</a></li>
   <li><a href="ListaProdotti">TUTTI I PRODOTTI</a></li>
   <li class="divider"></li>
</ul>
</div>
</ul>
        </div>
       </nav> 

<br>

<form class="form-horizontal" action="Login" method ="post" onsubmit="return validazioneFormLogin()" id="formLogin">


<div class="form-group" >
<label > Inserisci Username</label>
<div >
<input type="text" style="width:53%" name ="username" placeholder="Inserisci username" class= "form-control" id="username">
</div>
</div>


<div class="form-group" >
<label for="password"> Inserisci Password</label>
<input type="password" placeholder="Password" id="pwd" class="masked" name="password" />
<button type="button" id="eye">
    <img src="https://cdn0.iconfinder.com/data/icons/feather/96/eye-16.png" alt="eye" />
</button>
</div>




<div class="form-group">
<input type="submit" value="Login" class="btn btn-warning">
<input type="submit" value="Esci" class="btn btn-warning">
</div>
</form>



</div>

</form>

<div class="row">

<div class=>
<p style="margin-left: 628px;">Non sei registrato? </p>
<p style="margin-left: 615px;"><a href="registrazione.jsp">Clicca qui</a> per registrarti </p>

</div>


</div>
<div class="alert alert-danger" id="alert" style="display:none; margin-top: 20px">
<h4 class ="text-center" style = margin-top:14px">Devi inserire i valori per tutti i campi</h4>
</div>

<%if (request.getAttribute("errore")!= null){ %>
<div class="alert alert-danger"  style = margin-top:20px">
<h4>Utente e password sbagliati.</h4>
</div>
<% } %>




<br>
<br>
<br>




<div class="footer">
<center>
    <div class="container">
        <h3>TheOriginals</h3>
        <div id='skills'>
            <div class="skill">
                <h4><a href="contatti.jsp">CHI SIAMO</a></h4>
               
            </div>
            <div class="skill">
                <h4><a href="contatti.jsp">CONTATTI</h4>
                
            </div>
            <div class="skill">
                <h4><a href="contatti.jsp">INDICAZIONI STRADALI</h4>
                
            </div>
        </div>
    </div>
    </center>
</div>


</body>
</html>