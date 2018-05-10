<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
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
<link href="https://fonts.googleapis.com/css?family=Old+Standard+TT" rel="stylesheet">
</head>
<body style="font-family: 'Old Standard TT', serif;">

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
<button class="btn ui-li-count" id="carrello"><img src="img/icona_carrello.png" width="41%" style="margin:10px; margin-bottom: 5px;">
<%if (listaCarrello != null){ %>
<%= listaCarrello.size() %>
<%} else {%>
0
<%} %>
</button>
</a>

<div class="dropdown" style="margin-right:5px;">
<a data-toggle="dropdown">
 <button class="btnpc" id="profilo"> <img src="img/icona-profilo.png" width="40%" style="margin:10px; margin-top:-50%; margin-left: -100px; "></button>
</a>
<ul class="dropdown-menu" style="margin-left: 73%; margin-right:8%; margin-top: -1%; font-size: 20px;">
						<%if(utente == null) {%>
   						<li><a href="login.jsp">Login <img src="img/Flowers-Vectors-Clipart-PNG-Image-05.png" width="27%"></a></li>
						<li><a href="registrazione.jsp">Registrazione <img src="img/Free-Watercolor-Border-Flowers-PNG.png" width="27%"></a></li>
						<%}else { %>
						<li><a href="myAccount.jsp">My account <img src="img/Flowers-Vectors-Clipart-PNG-Image-05.png" width="27%"></a></li>
						<li><a href="ListaOrdini">I miei ordini <img src="img/icona_ordini.png" width="20%"></a></li>
						<li><a href="ListaAcquisti">I miei acquisti <img src="img/icona_acquistipng.png" width="15%"></a></li>
						<li><a href="Logout">Logout <img src="img/icona_logout.png" width="12%"></a></li>
						<%} %>
						
   <li class="divider"></li>
</ul>
</div>



</div>

 
   
<form id="cerca" align="right" action="CercaProdotto" method="get" width="2%" style="margin:0px">
<fieldset>
<legend></legend>

<button class="btnpc" id="cerca" style="margin-right: -28px;"><img src="img/icone_cerca.png" width="40%" style="margin:10px; margin-top: -1%;"></button>
<input type="text" width="3%" name="nomeProdotto" placeholder=" Cerca il prodotto" style="font-family: inherit;font-size: 18px;font-weight: normal;width: 210px;margin-top: 5px;"> 
</fieldset>
</form>
   
    </div>
  </div>
  

 
	<nav class="nav navbar-default">
       <div class=" collapse navbar-collapse" style="margin-left:4px; background-color: grey;">
            <ul class="nav navbar-nav">
               
<div class="dropdown">

<a data-toggle="dropdown" class="btn btn-primary" style=" color: #fff; background-color: grey; border-color: grey;">
<div class="container" style="background-color: grey; ">
  <div class="bar1" style="background-color: rgb(243, 217, 223);"></div>
  <div class="bar2" style="background-color: rgb(243, 217, 223)"></div>
  <div class="bar3" style="background-color: rgb(243, 217, 223);"></div>
</div></a>

<ul class="dropdown-menu" style="font-size: 20px; margin-top: -22px; margin-left: 30px;">
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

<h1 style="margin-left: 100px">Inserisci i tuoi dati</h1>
<br>
<br>

       
<form class="form-horizontal"  action="Registrazione" method ="post"  onsubmit="return validazioneForm()" id="formRegistrazione" style="margin-left: 50px">



<div class="form-group" >
<label style="font-size: 120%; font-weight: inherit"> Inserisci Nome</label>
<div>
<input type="text" style="width:30%" name ="nome" placeholder="Inserisci nome" class= "form-control " id="nome">
</div>
</div>



<div class="form-group" >
<label style="font-size: 120%; font-weight: inherit"> Inserisci Cognome</label>
<div>
<input type="text" style="width:30%"  name ="cognome" placeholder="Inserisci cognome" class= "form-control" id="cognome">
</div>
</div>





<div class="form-group" >
<label style="font-size: 120%; font-weight: inherit"> Inserisci Indirizzo</label>
<div>
<input type="text" style="width:30%"  name ="indirizzo" placeholder="Inserisci indirizzo" class= "form-control" id="indirizzo">
</div>
</div>



<div class="form-group" >
<label style="font-size: 120%; font-weight: inherit"> Inserisci Username</label>
<div >
<input type="text" style="width:30%" name ="username" placeholder="Inserisci username" class= "form-control" id="username">
</div>
</div>


<div class="form-group" >
<label style="font-size: 120%; font-weight: inherit"> Inserisci Password</label>
<div>

<input type="password" style="width:30%;height: 36px;height: 34px;padding: 6px 12px;font-size: 14px;line-height: 1.42857143;color: #555;
		background-image: none;border: 1px solid #ccc;border-radius: 4px;" placeholder="Inserisci password" id="pwd" class="masked" name="password">
        <button type="button" onclick="showHide()" id="eye" style="width: 3%; border: none; background-color: white;">
            <img src="img/icona_occhio.png" alt="eye" style="width: 100%; background-color: white;"/>
         </button>
</div>
</div>



 <br>
<br>


<!-- bottoni -->
<div class="form-group">


<input type="submit" value="Registrati" class="btn" style=" font-weight: 600;">
<input type="reset" value="Resetta" class="btn" style=" font-weight: 600;">

<div class="alert alert-danger" id="alert" style="display:none">
<h2 align="center">Devi inserire i valori per tutti i campi</h2>
</div>
</div>

</div>

</form>

<div class="rowgrid"   style="width: 40%;margin-left: 800px;margin-top: -500px;"> 
  <div class="column" style="margin-left: 60px">
    <img src="img/donna_maglia.jpg" style="width:100%; margin: 15px; ">
    <img src="img/donna_maglia.jpg" style="width:80%; margin-left: 60px">
  </div>
  <div class="column">
    
    <img src="img/donna_maglia.jpg" style="width:60%; margin-left: px; margin-top: -15px;margin: 40px;">
  </div>  
  
</div>

<!-- link -->
<div class="row" style="margin-right: 42px; margin-left: 31px; margin-top: 200px;">
<p style="margin-left: 370px;font-size: 110%">Sei già registrato? </p>
<p style="margin-left: 360px; font-size: 110%"><a href="login.jsp" style="font-weight: 600;font-size: 120%">Clicca qui</a> per la login </p>

</div>

<!-- alert -->



<%if (request.getAttribute("errore1") != null){ %>
<div class="alert alert-danger"  style = margin-top:20px">
<h2 align="center">Username già utilizzato</h2>
</div>
<% } %>


</div> <!--container-->
       
<br>


<center>
<button onclick="topFunction()" id="myBtn" title="Go to top"><img src="img/Arrow_Up_icon.png" width="40%"></button>
</center>
<script>
// When the user scrolls down 20px from the top of the document, show the button
window.onscroll = function() {scrollFunction()};

function scrollFunction() {
    if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {
        document.getElementById("myBtn").style.display = "block";
    } else {
        document.getElementById("myBtn").style.display = "none";
    }
}

// When the user clicks on the button, scroll to the top of the document
function topFunction() {
    document.body.scrollTop = 0;
    document.documentElement.scrollTop = 0;
}
</script>

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
<HR width="1300" size="1" color="black" align="center" style="border-top: 1px solid;">
<center>
    <div class="container">
       <a id="home" href="index.jsp" >
<button class="btnpc" id="home" style="float:  center;width:  50%;margin-left:  100px; margin-top: 1%; margin-right: 270px;">
<img src="img/logo_lovely.jpg" width="40%" style="margin:10px"></button>
</a> 
        <div id='skills'>
            <div class="skill">
                <h4><a href="contatti.jsp" style="color: black; font-size: 20px;">CHI SIAMO</a></h4>
               
            </div>
            <div class="skill">
                <h4><a href="contatti.jsp" style="color: black; font-size: 20px;">CONTATTI</h4>
                
            </div>
            <div class="skill">
                <h4><a href="contatti.jsp" style="color: black; font-size: 20px;">INDICAZIONI STRADALI</h4>
               
            </div>
        </div>
    </div>
    </center>
</div>

 <HR width="1300" size="1" color="black" align="center" style="border-top: 1px solid;">
 
</body>
</html>