<%@page import="java.util.List"%>
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
<link href="https://fonts.googleapis.com/css?family=Old+Standard+TT" rel="stylesheet">
</head>
<body style="font-family: 'Old Standard TT', serif;">

<%Utente utente = (Utente) session.getAttribute("utenteLoggato"); %>
<% Prodotto prodotto = (Prodotto) request.getAttribute("prodotto"); %>

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

<div class="conteiner" class="page-header align-left">
<div class="img-magnifier-container" style="margin-left: 35px;">
<img id ="myimage" src="<%= prodotto.getImmagine() %>" style="margin-left: 30px; width: 25%" >
</div>
<script>
/* Initiate Magnify Function
with the id of the image, and the strength of the magnifier glass:*/
magnify("myimage", 2);
</script>
</div>




<div style="line-height: 34px; width: 40%; float: right; margin-right: 20%;">
<center>
<ul style="margin-top: -300px;  font-size: 20px">
<p style="font-size: 300%"><b><%=prodotto.getNome() %></b></p>
<br>
<p style="font-weight: 600; font-size: 200%">Marca: <%=prodotto.getMarca() %> </p>
<p style="font-size: 150%">Prezzo: <%= prodotto.getPrezzo() %> &euro;</p>
<%if(prodotto.isOfferta()) { %> 
<p style="font-size: 150%">Offerta: <img src="img/vverde.png" width="20px"></p>
<p style="font-size: 150%">Sconto: <%= prodotto.getSconto() %> % </p>
<%} else {%>
<p>
<img src="img/xrossa.png" width="20px">
</p>
<p>--</p>
<%} %>
<p style="font-size: 150%">Quantità disponibile: <%= prodotto.getQuantitaDisponibile() %> </p>
</ul>
</center>
</div>
 <br>
  <br>
   <br>

<div>



<br>
<br>
<br>

<center>
<img src="img/separatore1.png" width="50%" style="margin-top: -140px;
    margin-left: 300px;">
</center>






<form action="EffettuaAcquisto" method="post">
<div id="spedizione" class="form-group"  style="margin-left: -1040px; margin-top: 170px;">
<div style="line-height: 34px; width: 40%; float: right; margin-right: 15%; margin-top: -220px;">
<label style="font-size: 120%; font-weight: inherit">Scegli la data di inizio spedizione</label>
<div  style="margin-top: 5px;">
<input type="date" name="dataInizio" class="form-control" min="<%=LocalDate.now()%>" value="<%=LocalDate.now()%>"
id="dataInizio" style="width: 50%">
</div>
</div>
<br>
<div style="line-height: 34px; width: 40%; float: right; margin-right: 15%;margin-top: -140px;">
<label style="font-size: 120%; font-weight: inherit">Scegli il tipo di spedizione</label>
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
<br>
<br>
<div style="line-height: 34px; width: 40%; float: right; margin-right: 15%;margin-top: -20px;">
<label style="font-size: 120%; font-weight: inherit">Scegli la quantità da acquistare</label>
<input type="number" name="quantitaAcquistata" step="1" min="0" max="<%=prodotto.getQuantitaDisponibile() %>" style="text-align: right;width: 60px;margin-left: 2%;"  id="quantitaAcquistata" >
</div>
<br>
<br>
</div>

</form>
<br>
<br>

<form action="EffettuaAcquisto" method="get">
<input type="hidden" name="idProdotto" value="<%= prodotto.getIdProdotto()%>">
<input type="hidden" name="prezzoProdotto" value="<%= prodotto.getPrezzo()%>">
<input type="hidden" name="offerta" value="<%= prodotto.isOfferta()%>">
<input type="hidden" name="sconto" value="<%= prodotto.getSconto()%>">
<input type="hidden" name="qProdotto" value="<%=prodotto.getQuantitaDisponibile()%>">
<center>
<button  style="    margin-left: -500px; margin-top: -140px;"  class= "btn" id="Acquisto" 
<%if (utente == null || prodotto.getQuantitaDisponibile() == 0){ %>
disabled
<%} %>
>

<img src="img/shop.png" style="width: 40%">
<h4 style="font-weight: 600"><u>Acquista</u></h4>

</button>
</center>
</form>
</div>




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