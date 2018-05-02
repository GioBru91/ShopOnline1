<%@page import="java.time.LocalDate"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Effettua Acquisto</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<%Utente utente = (Utente) session.getAttribute("utenteLoggato"); %>
<% Prodotto prodotto = (Prodotto) request.getAttribute("prodotto"); %>

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

<div class="conteiner" class="page-header align-left">
<img src="<%= prodotto.getImmagine() %>" style="margin-left: 20px">
</div>

<div style="line-height: 34px; width: 40%; float: right; margin-right: 15%;">
<center>
<ul style="margin-top: -500px;  font-size: 20px">
<p>Marca: <%=prodotto.getMarca() %> </p>
<p>Prezzo: <%= prodotto.getPrezzo() %> &euro;</p>
<%if(prodotto.isOfferta()) { %> 
<p>
Offerta: <img src="img/vverde.png" width="20px">
</p>
<p>Sconto: <%= prodotto.getSconto() %> % </p>
<%} else {%>
<p>
<img src="img/xrossa.png" width="20px">
</p>
<p>--</p>
<%} %>
<p>Quantità disponibile: <%= prodotto.getQuantitaDisponibile() %> </p>
</ul>
</center>
</div>


<form action="EffettuaAcquisto" method="post">

<div class="form-group" style="line-height: 34px; width: 40%; float: right; margin-right: 15%; margin-top: -220px;">
<label>Scegli la data di inizio spedizione</label>
<div  style="margin-top: 5px;">
<input type="date" name="dataInizio" class="form-control" min="<%=LocalDate.now()%>" value="<%=LocalDate.now()%>"
id="dataInizio" style="width: 50%">
</div>
</div>

<br>


<div class="form-group" style="line-height: 34px; width: 40%; float: right; margin-right: 15%;margin-top: -140px;">
<label>Scegli il tipo di spedizione</label>
<div style="margin-top: 5px;">
<input type="radio" name="tipoSpedizione" value="ORDINARIA" checked>
<span style="font-size: 20px;">Ordinaria</span>
<br>
<input type="radio" name="tipoSpedizione" value="PRIORITARIA">
<span style="font-size: 20px;">Prioritaria</span>
<br>
<input type="radio" name="tipoSpedizione" value="PRIME">
<span style="font-size: 20px;">Prime</span>
<br>
</div>
</div>

<div style="line-height: 34px; width: 40%; float: right; margin-right: 15%;margin-top: -20px;">
<label>Scegli la quantità da acquistare</label>
<input type="number" name="quantitaAcquistata" step="1" style="text-align: right;width: 60px;margin-left: 2%;"  id="quantitaAcquistata" >
</div>

<br>
<br>

<div class="form-group" style="line-height: 34px; width: 40%; float: right; margin-right: 6%; margin-top: 2%">
<center>
<div style="margin-top: 10px">
<input type="hidden" name="idProdotto" value="<%= prodotto.getIdProdotto()%>">
<input type="hidden" name="prezzoProdotto" value="<%= prodotto.getPrezzo()%>">
<input type="hidden" name="offerta" value="<%= prodotto.isOfferta()%>">
<input type="hidden" name="sconto" value="<%= prodotto.getSconto()%>">
<input type="submit" class="btn btn-primary" value="Acquista" style="width: 70px;">
<input type="reset" class="btn btn-warning" value="Resetta" style="width: 70px;">
</div>
</center>
</div>
</form>

</div>


</center>
</body>
</html>