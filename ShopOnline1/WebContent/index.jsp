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
<body >

<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>
<%List<Prodotto> listaPiuVenduti = (List<Prodotto>) session.getAttribute("listaPiuVenduti"); %>
<a id="home" href="index.jsp" >
<center>
<button class="btnpc" id="home" style="float:  left;width:  80%;margin-left:  100px; margin-top: 2%">
<img src="img/logo_lovely.jpg" width="40%" style="margin:10px"></button>
</center>
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
						<li><a href="myAccount.jsp">My account <img src="img/emoij_flower.png" style="width: 10%"></a></li>
						<li><a href="ListaOrdini">I miei ordini <img src="img/icona_ordini.png" style="width: 15%"></a></li>
						<li><a href="ListaAcquisti">I miei acquisti <img src="img/icona_acquisti.png" style="width: 13%"></a></li>
						<li><a href="Logout">Logout <img src="img/icona_logout.png" style="width: 11%"></a></li>
						<%} %>
						
   <li class="divider"></li>
</ul>
</div>



</div>

     <div class="rowgrid"> 
  <div class="column">
    <img src="img/bambina_nero.jpg" style="width:30%">
    <img src="img/bambina_nero.jpg" style="width:30%">
  </div>
  <div class="column">
    <img src="img/bambina_nero.jpg" style="width:30%">
    <img src="img/bambina_nero.jpg" style="width:30%">
  </div>  
  <div class="column">
    <img src="img/bambina_nero.jpg" style="width:30%">
    <img src="img/bambina_nero.jpg" style="width:30%">
  </div>
  <div class="column">
    <img src="img/bambina_nero.jpg" style="width:30%">
    <img src="img/bambina_nero.jpg" style="width:30%">
  </div>
</div>
 
   
<form id="cerca" align="right" action="CercaProdotto" method="get" width="2%" style="margin:0px">
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

<h3 align="center">Abbigliamento Uomo</h3>
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

<h3 align="center">Abbigliamento Bambino</h3>
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

<h3 align="center">Il mondo in un chip</h3>
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

<%if(listaPiuVenduti == null) {%>
<h2>Non ci sono prodotti nella lista</h2>
<%}else{ %>

<div id="myCarousel" class="carousel slide" data-ride="carousel" align="center">
<!-- data-ride="carousel" -->

<div class="carousel-inner" >
<%for (Prodotto prodotto : listaPiuVenduti){ %>

<div
<%if(listaPiuVenduti.indexOf(prodotto) == 0) { %>
class="item active"
<% } else { %>
 class="item"
<% } %>
>
<a style="display:table" data-toggle="popover" data-trigger="hover" title="Prodotti più venduti" data-content="<%= prodotto.getNome() %>, <%= prodotto.getCategoria().toString().replace("_", " ") %>,<%= prodotto.getMarca() %>, <%= prodotto.getPrezzo() %>&euro;, <%if(prodotto.isOfferta()) { %> Offerta : <%= prodotto.getSconto() %>%, <%} else {%> Non in offerta <%}%>, Quantità disponibile: <%= prodotto.getQuantitaDisponibile() %>">
<img  src="<%= prodotto.getImmagine()%>">
<!-- class="img-carousel" -->
</a>

</div>
<%} %>
</div>

<%} %>
<a class="left carousel-control" href="#myCarousel" data-slide ="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide ="next">
<span class="glyphicon glyphicon-chevron-right"></span>
</a>
</div>

<script>
$(document).ready(function() {
  $('[data-toggle="popover"]').popover();
}); 
</script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<br>
<br>


<div class="footer">
<div class="G2lBJZk">
<div class="social_bar" data-testid="social-links-bar" style="margin-top: 1%; margin-bottom: 1%;">
<a title="Facebook" class="social" href="https://www.facebook.com" target="_blank" data-testid="social-link"><img src="img/facebook-icon.png" alt="facebook" style="width: 2%"></a>
<a title="Instagram" class="social" href="http://www.instagram.com" target="_blank" data-testid="social-link"><img src="img/icon_instagram.png" alt="instagram" style="width: 2%; margin-right: 2%;"></a>



<span class="pagamento"><img src="https://images.asos-media.com/navigation/mastercard-png" alt="mastercard" style="width: 3%"></span>
<span class="pagamento"><img src="https://images.asos-media.com/navigation/pay-pal-png" alt="paypal" style="width: 3%"></span>
<span class="pagamento"><img src="https://images.asos-media.com/navigation/visa-png" alt="visa" style="width: 3%"></span>
<span class="pagamento"><img src="https://images.asos-media.com/navigation/visa-electron-png" alt="visaelectron" style="width:3%"></span>
<span class="pagamento"><img src="https://images.asos-media.com/navigation/postepay-png" alt="postepay" style="width: 3%"></span>
<span class="pagamento"><img src="https://images.asos-media.com/navigation/cartasi-png" alt="cartasi" style="width:3%"></span>
<span class="pagamento"><img src="https://images.asos-media.com/navigation/american-express-png" alt="americanexpress" style="width: 3%"></span>
</div>
</div>

<div class="G2lBJZk"></div>
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

 <HR width="1300" size="1" color="black" align="center">
 
 </body>
</html>