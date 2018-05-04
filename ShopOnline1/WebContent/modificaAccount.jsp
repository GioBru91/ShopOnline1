<%@page import="it.accenture.model.Prodotto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modifica Account</title>

<link rel="stylesheet"  href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/stile.css">

<script type= "text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>

<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>
<%List<Prodotto> listaCarrello = (List<Prodotto>) session.getAttribute("listaCarrello"); %>

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
<h1 style="margin-left: 250px">Inserisci i tuoi dati</h1>
<br>
<br>

       
<form class="form-horizontal"  action="ModificaAccount" method ="post"  onsubmit="return validazioneForm()" id="formRegistrazione" >



<div class="form-group" >
<label> Inserisci Nuovo Nome</label>
<div>
<input type="text" style="width:53%" name ="nome" value="<%=utente.getNome() %>" class= "form-control " id="nome">
</div>
</div>



<div class="form-group" >
<label > Inserisci Nuovo Cognome</label>
<div>
<input type="text" style="width:53%"  name ="cognome" value="<%=utente.getCognome() %>" class= "form-control" id="cognome">
</div>
</div>



<div class="form-group" >
<label > Inserisci Nuovo Indirizzo</label>
<div>
<input type="text" style="width:53%"  name ="indirizzo" value="<%=utente.getIndirizzo() %>" class= "form-control" id="indirizzo">
</div>
</div>



<div class="form-group" >
<label> Inserisci Nuovo Username</label>
<div >
<input type="text" style="width:53%" name ="username" value="<%=utente.getUsername() %>" class= "form-control" id="username">
</div>
</div>


<div class="form-group" >
<label > Inserisci Nuova Password</label>
<div>
<input type="password" style="width:53%;height: 36px;height: 34px;padding: 6px 12px;font-size: 14px;line-height: 1.42857143;color: #555;background-color: #fff;
		background-image: none;border: 1px solid #ccc;border-radius: 4px;" value="<%=utente.getPassword() %>" id="pwd" class="masked" name="password">
        <button type="button" onclick="showHide()" id="eye" style="width: 3%; border: none; background-color: white;">
            <img src="img/icona_occhio.png" alt="eye" style="width: 100%; background-color: white;"/>
         </button>
  </div>
</div>



<div class="row" style="width: 55%; float: right; margin-right: -280px ; margin-left: ; margin-top: -480px"> 
  <div class="column">
    <img src="img/pantaloni1.jpg" style="width:15%">
    <img src="img/bambina_nero.jpg" style="width:15%">
    <img src="img/camicia1.jpg" style="width:15%">
    
  </div>
  <div class="column">
    <img src="img/cucina-isola-moderna-578634.jpg" style="width:15%">
    <img src="img/donna_rosso.jpg" style="width:15%">
    <img src="img/pantaloni1.jpg" style="width:15%">
    
  </div> 
  <div class="column">
   <img src="img/camicia1.jpg" style="width:15%">
    <img src="img/bambina_nero.jpg" style="width:15%">
   <img src="img/donna_rosso.jpg" style="width:15%">
    
  </div> 
  <div class="column">
    <img src="img/pantaloni1.jpg" style="width:15%">
    <img src="img/bambina_nero.jpg" style="width:15%">
    <img src="img/camicia1.jpg" style="width:15%">
    
  </div>
   <div class="column">
    <img src="img/cucina-isola-moderna-578634.jpg" style="width:15%">
    <img src="img/donna_rosso.jpg" style="width:15%">
    <img src="img/pantaloni1.jpg" style="width:15%">
    
  </div> 
</div>
 <br>
<br>




<!-- bottoni -->
<div class="form-group">


<input type="submit" value="Aggiorna" class="btn btn-warning">
<input type="reset" value="Esci" class="btn btn-warning">
</div>




</div>




</form>



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