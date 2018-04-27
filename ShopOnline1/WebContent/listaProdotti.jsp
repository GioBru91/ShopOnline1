<%@page import="java.util.List"%>
<%@page import="it.accenture.model.Prodotto"%>
<%@page import="it.accenture.model.Utente"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Lista Prodotti</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript" src="js/gestioneForm.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>
<%Utente utente = (Utente) session.getAttribute("utenteLoggato");   %>
<% List<Prodotto> listaProdotti = (List<Prodotto>) request.getAttribute("listaProdotti"); %>
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

<!-- CONTAINER -->
<center>
<div class = "container">
<div class = "table-responsive">
<table class="table">
<thead>
<tr>
<th>N° Prodotto</th>
<th>Nome</th>
<th>Categoria</th>
<th>Marca</th>
<th>Prezzo</th>
<th>Offerta</th>
<th>Sconto</th>
<th>Quantità Disponibile</th>
<th>Immagine</th>
</tr>
</thead>
<tbody>
<% for (Prodotto prodotto : listaProdotti) { %>
<tr>
<td><%= prodotto.getIdProdotto() %></td>
<td><%= prodotto.getNome() %> </td>
<td><%= prodotto.getCategoria().toString().replace("_", " ") %> </td>
<td><%= prodotto.getMarca() %> </td>
<td><%= prodotto.getPrezzo() %> &euro; </td>


<%if(prodotto.isOfferta()) { %> 
<td>
<img src="img/vverde.png" width="20px">
</td>
<td><%= prodotto.getSconto() %> % </td>
<%} else {%>
<td>
<img src="img/xrossa.png" width="20px">
</td>
<td>--</td>
<%} %>
<td><%= prodotto.getQuantitaDisponibile() %> </td>
<td><img src="<%= prodotto.getImmagine() %>" width="100px"></td>
<td>
<form action="EffettuaAcquisto" method="get" >
<input type="hidden" name="idProdotto" value="<%= prodotto.getIdProdotto()%>">
<input type="hidden" name="prezzoProdotto" value="<%= prodotto.getPrezzo()%>">
<input type="hidden" name="offerta" value="<%= prodotto.isOfferta()%>">
<input type="hidden" name="sconto" value="<%= prodotto.getSconto()%>">
<input type="submit" value ="Acquista" class = "btn btn-success" style="width: 70px"
<%if (utente == null){ %>
disabled
<%} %>
>
</form>
</td>
<td>
<form action="DettagliProdotto" method="post" >
<input type="hidden" name="idProdotto" value="<%=prodotto.getIdProdotto()%>">
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