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
<button class="btnpc" id="home" style="float:  left;width:  80%;margin-left:  100px; margin-top: 2%"
><img src="img/logo_lovely.jpg" width="40%" style="margin:10px"></button>
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
<ul class="dropdown-menu" style="margin-left: 76%; margin-top: -4%">
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

<span class="col-md-2"></span>
<div class="col-md-5">
<marquee onmouseover=this.stop() onmouseout=this.start() align="middle" direction="up" scrollamount="7" width="1000" height="600" >

<h3>Abbigliamento Donna</h3>
<a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_UOMO">
<img src="img/slide1.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0" >
</a>

<br>
<br>
<a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_DONNA">
<img src="img/slide2.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">
</a>
<br>
<br>
<a href="ListaPerCategoria?categoria=ABBIGLIAMENTO_BAMBINO">
<img src="img/slide3.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">

</a>
<br>
<br>
<a href="ListaPerCategoria?categoria=CASA">
<img src="img/slide4.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">

</a>
<br>
<br>
<a href="ListaPerCategoria?categoria=ELETTRONICA">
<img src="img/slide5.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">

</a>
<br>
<br>
<a a href="ListaPerCategoria?categoria=LIBRI">
<img src="img/slide6.jpg"  width="larghezza_pixel_foto" height="altezza_pixel_foto" border="0">

</a>
</marquee>
</span class="col-md-5"></span>
</div>



      
      
      
      
      
     

 

<br>
<br>
<br>

<div class="jumbotron" style="align:center; font:initial; color: black;">
<marquee scrolldelay="1">

<h1>SALDI</h1>

</marquee>
</div>


<div class="container">
    
  <div id="myCarousel" class="carousel slide" align="center" style="width: 100%">
    
    <div class="carousel-inner">
      <div class="item active">
        <img src="img/slide1.jpg" alt="Uomo" style="width:100%;">
      </div>

      <div class="item">
        <img src="img/slide2.jpg" alt="Donna" style="width:100%;">
      </div>
      <div class="item">
        <img src="img/slide3.jpg" alt="Bambino" style="width:100%;">
      </div>
      <div class="item">
        <img src="img/slide4.jpg" alt="Casa" style="width:100%;">
      </div>
      <div class="item">
        <img src="img/slide5.jpg" alt="Libri" style="width:100%;">
      </div>
      <div class="item">
        <img src="img/slide6.jpg" alt="CElettronica" style="width:100%;">
      </div>
 
      
    </div>

  </div>
</div>

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