<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home</title>
<script type="text/javascript" src="jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
<link rel="stylesheet" href="css/stile.css">
</head>
<body>

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

<div id="slideshow" class="carousel slide">
 <div class="carousel-inner">
 
  <div class="item active">
   <img src="img/slide2.jpg" alt="...">
   <div class="carousel-caption">
   <h3>DONNA</h3>
   </div>
  </div>
  <div class="item active">
   <img src="img/slide3.jpg" alt="...">
   <div class="carousel-caption">
    ...
   </div>
  </div>
  <div class="item active">
   <img src="img/slide4.jpg" alt="...">
   <div class="carousel-caption">
    ...
   </div>
  </div>
  <div class="item active">
   <img src="img/slide5.jpg" alt="...">
   <div class="carousel-caption">
    ...
   </div>
  </div>
  <div class="item active">
   <img src="img/slide6.jpg" alt="...">
   <div class="carousel-caption">
    ...
   </div>
  </div>
  <div class="item active">
   <img src="img/slide7.jpg" alt="...">
   <div class="carousel-caption">
    ...
   </div>
  </div>
  <div class="item active">
   <img src="img/slide8.jpg" alt="...">
   <div class="carousel-caption">
    ...
   </div>
   
   <a class="left carousel-control" href="#myCarousel" data-slide ="prev">
<span class="glyphicon glyphicon-chevron-left"></span>
</a>
<a class="right carousel-control" href="#myCarousel" data-slide ="next">
<span class="glyphicon glyphicon-chevron-right"></span>
</a>

  </div>
  
 </div>
 
<!-- Indicatori di posizione -->
 <ol class="carousel-indicators">
  <li data-target="#slideshow" data-slide-to="0" class="active"></li>
  <li data-target="#slideshow" data-slide-to="1"></li>
  <li data-target="#slideshow" data-slide-to="2"></li>
 </ol>
 
<!-- Controlli -->
 <a class="left carousel-control" href="#slideshow" data-slide="prev">
 <span class="icon-prev"></span>
 </a>
 <a class="right carousel-control" href="#slideshow" data-slide="next">
 <span class="icon-next"></span>
 </a>
</div>

</body>
</html>