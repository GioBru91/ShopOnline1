<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Informazioni</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>

<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>

<div id="banner" align="right" style="margin-right: 20px">
     <div id="banner-content">  
     
     
<div class="dropdown" style="margin-right:5px;">
<a data-toggle="dropdown" href="#">
 <button class="btn" id="profilo"> <img src="img/icona-profilo.png" width="40%" style="margin:10px"></button>
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


<a id="carrello" href="#">
<button class="btn" id="carrello"><img src="img/icona_carrello.png" width="40%" style="margin:10px"></button>
</a>
</div>


     
 
   
<form id="cerca" align="right" action="" method="get" width="2%" style="margin:10px">
<fieldset>
<legend></legend>
<input type="text" width="3%" placeholder="Cerca il prodotto" style="font-family: inherit;font-size: medium;font-weight: 200;"> 
<button class="btn" id="cerca"><img src="img/icone_cerca.png" width="40%" style="margin:10px"></button>
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
   <li><a href="ListaSaldi" style="background-color: red;">% SALDI %</a></li>
   <li><a>----------</a></li>
   <li><a href="ListaProdotti">TUTTI I PRODOTTI</a></li>
   <li class="divider"></li>
    </ul>
</div>
</ul>
</div>
</nav> 

<br>
<br>
<br>





<div class="chisiamo" >
<h1>TheOrignals</h1>
  <h3>nasce in una stanza buia in via Washington in Milano</h3>
  <h3>un progetto partorito da tre ragazzi</h3>
  <h3>Giovanni Rucoletta, Domenico Schifio, Albachiara Wewe</h3>


<br>
<br>
<br>
<h3>CONTATTI</h3>
  <h4>Indirizzo: Via vai e non torn mai</h4>
  <h4>Telefono: 3336363636363</h4>
  <h4>email: theoriginals@king.com</h4>

</div>


<div class="maps">



<iframe src="https://www.google.com/maps/embed?pb" width="400" height="400" frameborder="0" style="border:0" allowfullscreen></iframe>

</div>

<br>
<br>
<br>

<div class="footerchi">

    <div class="container">
        <h3>TheOriginals</h3>
        <div id='skills'>
            <div class="skill">
                <h4><a href="index.jsp">HOME</h4>
               
            </div>
            <div class="skill">
                <h4><a href="login.jsp">LOGIN</h4>
                
            </div>
            <div class="skill">
                <h4><a href="registrazione.jsp">Registrazione</h4>
                
            </div>
        </div>
    </div>
   
</div>

</body>
</html>