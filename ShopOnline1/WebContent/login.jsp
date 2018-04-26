<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet"  href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet"  href="css/stile.css">

<script type= "text/javascript" src="js/gestioneForm.js"></script>
</head>
<body>

<%String username= (String) request.getAttribute("username"); %>

<div id="banner" align="right" style="margin-right: 30px">
    <div id="banner-content">
    
    <img src="img/icona-profilo.png" width="2%" style= margin:10px> 
    <img src="img/icone_cuore.png" width="2%" style=margin:10px> 
    <img src="img/icona_carrello.png" width="2%" style=margin:10px> 
   
   
    </div>
  </div>
  <div id="main-content">
  <center>
    <img src="img/icone_cerca.png" width="2%" style=margin:10px> 
   <img src="img/text_box.png" width="2%" style=margin:10px>
    </center>
  </div>



	<nav class="nav navbar-default">
       <div class=" collapse navbar-collapse" style="margin-left:406px;">
            <ul class="nav navbar-nav">
               
                <li><a href="about.html" style="font-family: inherit;font-size: large;font-weight: 500;">UOMO</a></li>
                <li><a href="contact.html" style="font-family: inherit;font-size: large;font-weight: 500;">DONNA</a></li>
                <li><a href="membership.html" style="font-family: inherit;font-size: large;font-weight: 500;">BAMBINO</a></li>
                <li><a href="borrow.html" style="font-family: inherit;font-size: large;font-weight: 500;">CASA</a></li>
                <li><a href="policies.html" style="font-family: inherit;font-size: large;font-weight: 500;">ELETTRONICA</a></li>
                <li><a href="sitemap.html" style="font-family: inherit;font-size: large;font-weight: 500;">LIBRI</a></li>
            </ul>
        </div>
       </nav> 

<form class="form-horizontal" action="Login" method ="post" onsubmit="return validazioneFormLogin()" id="formLogin">

<center>
<div class="form-group" >
<label > Inserisci Username</label>
<div >
<input type="text" style="width:53%" name ="username" placeholder="Inserisci username" class= "form-control" id="username"
<%if (username != null){ %>
value= "<%=username %>"
<% } %>
>
</div>
</div>
</center>
<center>
<div class="form-group" >
<label > Inserisci Password</label>
<div >
<input type="password" style="width:53%" name ="password" placeholder="Inserisci password" class= "form-control" id="password">
</div>
</div>
</center>


<center>
<div class="form-group">
<input type="submit" value="Login" class="btn btn-warning">
<input type="submit" value="Esci" class="btn btn-warning">
</div>
</form>
</center>


</div>

</form>

<div class="row">
<span class="col-md-5"></span>
<div class="col-md-4">
<p>Non sei registrato? </p>
<p><a href="registrazione.jsp">Clicca qui</a> per registrarti </p>

</div>
</span class="col-md-3"></span>

</div>
<div class="alert alert-danger" id="alert" style="display:none; margin-top: 20px">
<h4 class ="text-center" style = margin-top:14px">Devi inserire i valori per tutti i campi</h4>
</div>

<%if (request.getAttribute("errore")!= null){ %>
<div class="alert alert-danger"  style = margin-top:20px">
<h4>Utente e password sbagliati.</h4>
</div>
<% } %>

</body>
</html>