<%@page import="it.accenture.model.Acquisto"%>
<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>I MIEI ACQUISTI</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>
<% List<Acquisto> listaAcquisti = (List<Acquisto>) request.getAttribute("listaAcquisti"); %>
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
<button class="btn ui-li-count" id="carrello"><img src="img/icona_carrello.png" width="40%" style="margin:10px"></button>
</a>
</div>


     
 
   
<form id="cerca" align="right"  action="" method="get"  width="2%" style="margin:10px">
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

<!-- CONTAINER -->
<center>
<div class = "container">
<div class = "table-responsive">
<table class="table">
<thead>
<tr>
<th>N� Prodotto</th>
<th>Tipo Spedizione</th>
<th>Data Invio</th>
<th>Data Arrivo</th>
<th>Prezzo di spedizione</th>
<th>Q. Acquistata</th>
<th>Prezzo Torale</th>

</tr>
</thead>
<tbody>
<% for (Acquisto acquisto : listaAcquisti) { %>
<tr>
<td><%= acquisto.getIdProdotto() %></td>
<td><%= acquisto.getTipoSpedizione() %> </td>
<td><%= acquisto.getDataInizio() %> </td>
<td><%= acquisto.getDataFine() %> </td>
<td><%= acquisto.getPrezzoDiSpedizione() %> &euro; </td>
<td><%= acquisto.getQuantitaAcquistata() %> </td>
<td><%= acquisto.getPrezzoTotale() %> &euro; </td>


<td>
<form action="effettuaAcquisto.jsp" method="get" >
<input type="hidden" name="idProdotto" value="<%= acquisto.getIdProdotto()%>">
<input type="submit" value ="Acquista" class = "btn btn-success" style="width: 70px"
<%if (utente == null){ %>
disabled
<%} %>
>
</form>
</td>
<td>
<form action="inserisciRecensione.jsp" method="post" >
<input type="hidden" name="idProdotto" value="<%= acquisto.getIdProdotto()%>">
<input type="submit" value ="Recensisci" class = "btn btn-success" style="width: 100px"
<%if (utente == null){ %>
disabled
<%} %>
>
</form>
</td>

<td>
<form action="DettagliProdotto" method="post" >
<input type="hidden" name="idProdotto" value="<%=acquisto.getIdProdotto()%>">
<input type="submit" value ="Dettagli" class = "btn btn-success" style="width: 70px">
</form>
<%} %>
</td>
</tr>
</tbody>
</table>
</div>
</div>
</center>
</body>
</html>