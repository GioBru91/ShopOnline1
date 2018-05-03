<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1" name="viewport" content="width=device-width">
<title>Home</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>

<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>
<a id="home" href="index.jsp" >
<button class="btnpc" id="home" style="float:  left;width:  80%;margin-left:  100px; margin-top: 2%">
<img src="img/logo_lovely.jpg" width="40%" style="margin:10px"></button>
</a> 



<div id="banner" align="right" style="margin-right: 30px">
     <div id="banner-content">  
     
   
   <div class="container">  
   <a href="listaCarrello.jsp">
<button class="btn ui-li-count" id="carrello"><img src="img/icona_carrello.png" width="40%" style="margin:10px">
<%if (listaCarrello != null){ %>
<%= listaCarrello.size() %>
<%} else {%>
0
<%} %>
</button>
</a>

<div class="dropdown" style="margin-right:5px;">
<a data-toggle="dropdown">
 <button class="btnpc" id="profilo"> <img src="img/icona-profilo.png" width="40%" style="margin:10px; margin-top:-56%; margin-left: -100px; "></button>
</a>
<ul class="dropdown-menu" style="margin-left: 78%; margin-top: -2%">
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

     
 
   
<form id="cerca" align="right" action="" method="get" width="2%" style="margin:0px">
<fieldset>
<legend></legend>

<button class="btnpc" id="cerca" style="margin-right: -28px;"><img src="img/icone_cerca.png" width="40%" style="margin:10px; margin-top: -1%;"></button>
<input type="text" width="3%" placeholder="Cerca il prodotto" style="font-family: inherit;font-size: inherit;font-weight: normal;width: 210px;margin-top: 5px;"> 
</fieldset>
</form>
   
    </div>
  </div>
  

 
	<nav class="nav navbar-default">
       <div class=" collapse navbar-collapse" style="margin-left:4px;background-color: grey;">
            <ul class="nav navbar-nav">
               
<div class="dropdown">

<a data-toggle="dropdown" class="btn btn-primary">
<div class="container" style="background-color: grey">
  <div class="bar1" style="background-color: rgb(243, 217, 223);"></div>
  <div class="bar2" style="background-color: rgb(243, 217, 223)"></div>
  <div class="bar3" style="background-color: rgb(243, 217, 223);"></div>
</div></a>

<ul class="dropdown-menu">
   <li><a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_UOMO">UOMO</a></li>
   <li><a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_DONNA">DONNA</a></li>
   <li><a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_BAMBINO">BAMBINO</a></li>
   <li><a href="ListaPerCategoria?categoria=CASA">CASA</a></li>
   <li><a href="ListaPerCategoria?categoria=ELETTRONICA">ELETTRONICA</a></li>
   <li><a href="ListaPerCategoria?categoria=LIBRI">LIBRI</a></li>
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

<div class="jumbotron" style="align:center; font:initial; color: black;">
<marquee scrollamount="10">

<h1><a href="ListaSaldi" style="color: black">SALDI</a></h1>

</marquee>
</div>


<div>
<center>
<marquee  align="middle" direction="up" scrollamount="8" width="1000" height="600" >

<h3 align="left">Abbigliamento Uomo</h3>
<br>
<a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_UOMO">
<img src="img/slide2.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0" >
</a>

<br>
<br>

<h3 align="center">Abbigliamento Donna</h3>
<br>
<a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_DONNA">
<img src="img/slide1.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">
</a>

<br>
<br>

<h3 align="right">Abbigliamento Bambino</h3>
<br>
<a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_BAMBINO">
<img src="img/slide3.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">
</a>

<br>
<br>

<h3 align="center">Tutto per la casa</h3>
<br>
<a href="ListaPerCategoria?categoria=CASA">
<img src="img/slide4.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">
</a>

<br>
<br>

<h3 align="left">Il mondo in un chip</h3>
<br>
<a href="ListaPerCategoria?categoria=ELETTRONICA">
<img src="img/slide6.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">
</a>

<br>
<br>

<h3 align="center">Angolo libri</h3>
<br>
<a a href="ListaPerCategoria?categoria=LIBRI">
<img src="img/slide5.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">
</a>

</marquee>
</center>
</div>

<br>

<HR width="1000" size="1" color="black" align="center">

<br>

<h1 align="center"><a href="ListaProdotti" style="color: black">Scopri i nostri prodotti</a></h1>

<br>

<HR width="1000" size="1" color="black" align="center">

<br>
<br>
<h3 align="center">Prodotti più venduti</h3>
<br>
<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
<div class="carousel-inner" >
<div class="item ">
<img class="img-carousel" src="img/scarpe1.jpg">
</div>
<div class="item active">
<img class="img-carousel" src="img/donna_rosso.jpg">
</div>
<div class="item">
<img class="img-carousel" src="img/donna_tuta.jpg">
</div>


<a class="left carousel-control" href="#myCarousel" data-slide ="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide ="next">
<span class="glyphicon glyphicon-chevron-right"></span>
</a>

</div>

<br>
<br>




<div class="footer">
<HR width="1300" size="1" color="black" align="center">
<center>
    <div class="container">
       <a id="home" href="index.jsp" >
<button class="btnpc" id="home" style="float:  center;width:  50%;margin-left:  100px; margin-top: 1%; margin-right: 270px;">
<img src="img/logo_lovely.jpg" width="40%" style="margin:10px"></button>
</a> 
        <div id='skills'>
            <div class="skill">
                <h4><a href="contatti.jsp" style="color: black">CHI SIAMO</a></h4>
               
            </div>
            <div class="skill">
                <h4><a href="contatti.jsp" style="color: black">CONTATTI</h4>
                
            </div>
            <div class="skill">
                <h4><a href="contatti.jsp" style="color: black">INDICAZIONI STRADALI</h4>
               
            </div>
        </div>
    </div>
    </center>
</div>

 
 
 </body>
</html>