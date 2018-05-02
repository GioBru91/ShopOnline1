<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registrazione</title>

<link rel="stylesheet"  href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/stile.css">

<script type= "text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>

<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>
<div id="banner" align="right" style="margin-right: 20px">
     <div id="banner-content">  
     
      <a id="home" href="index.jsp" >
<button class="btnpc" id="carrello" style="float:  left;width:  29%;margin-left:  -60px;"
><img src="img/logo.jpg" width="40%" style="margin:10px"></button>
</a> 
   
   <div id="container">  
     <a id="carrello" >
<button class="btnpc" id="carrello"><img src="img/icona_carrello.png" width="40%" style="margin:10px"></button>
</a> 


<div class="dropdown" style="margin-right:5px;">
<a data-toggle="dropdown">
 <button class="btnpc" id="profilo"> <img src="img/icona-profilo.png" width="40%" style="margin:10px"></button>
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
</div>



</div>

     
 
   
<form id="cerca" align="right" action="" method="get" width="2%" style="margin:10px">
<br>
<br>
<br>
<fieldset>
<legend></legend>
<input type="text" width="3%" placeholder="Cerca il prodotto" style="font-family: inherit;font-size: inherit;font-weight: normal;width: 210px;margin-top: 5px;"> 
<button class="btnpc" id="cerca"><img src="img/icone_cerca.png" width="40%" style="margin:10px; margin-top: -1%;"></button>
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
   <li><a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_UOMO">UOMO</a></li>
   <li><a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_DONNA">DONNA</a></li>
   <li><a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_BAMBINO">BAMBINO</a></li>
   <li><a href="ListaPerCategoria?categoria=CASA">CASA</a></li>
   <li><a href="ListaPerCategoria?categoria=ELETTRONICA">ELETTRONICA</a></li>
   <li><a href="ListaPerCategoria?categoria=LIBRI">LIBRI</a></li>
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

       
<form class="form-horizontal"  action="Registrazione" method ="post"  onsubmit="return validazioneForm()" id="formRegistrazione" >



<div class="form-group" >
<label> Inserisci Nome</label>
<div>
<input type="text" style="width:53%" name ="nome" placeholder="Inserisci nome" class= "form-control " id="nome">
</div>
</div>



<div class="form-group" >
<label > Inserisci Cognome</label>
<div>
<input type="text" style="width:53%"  name ="cognome" placeholder="Inserisci cognome" class= "form-control" id="cognome">
</div>
</div>



<div class="form-group" >
<label > Inserisci Indirizzo</label>
<div>
<input type="text" style="width:53%"  name ="indirizzo" placeholder="Inserisci indirizzo" class= "form-control" id="indirizzo">
</div>
</div>



<div class="form-group" >
<label> Inserisci Username</label>
<div >
<input type="text" style="width:53%" name ="username" placeholder="Inserisci username" class= "form-control" id="username">
</div>
</div>


<div class="form-group" >
<label > Inserisci Password</label>
<div >
<input type="password" style="width:53%" name ="password" placeholder="Inserisci password" class= "form-control" id="password">
</div>
</div>


<!-- bottoni -->
<div class="form-group">


<input type="submit" value="Registrati" class="btn btn-warning">
<input type="submit" value="Esci" class="btn btn-warning">
</div>




</div>




</form>



<!-- link -->
<div class="row">
<p style="margin-left: 628px;">Sei già registrato? </p>
<p style="margin-left: 615px;"><a href="login.jsp">Clicca qui</a> per la login </p>

</div>

<!-- alert -->

<div class="alert alert-danger" id="alert" style="display:none">
<h1>Devi inserire i valori per tutti i campi</h1>
</div>

<%if (request.getAttribute("errore1") != null){ %>
<div class="alert alert-danger"  style = margin-top:20px">
<h4>Username già utilizzato</h4>
</div>
<% } %>


</div> <!--container-->
       

</body>
</html>