<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes">
    <link href="apple-touch-icon.png" rel="apple-touch-icon">
    <link href="favicon.png" rel="icon">
    <meta name="author" content="">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <title>Nana Cakes & Bakery </title>
    <link href="https://fonts.googleapis.com/css?family=Kaushan+Script%7CLora:400,700" rel="stylesheet">
    <link rel="stylesheet" href="/plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="/plugins/bakery-icon/style.css">
    <link rel="stylesheet" href="/plugins/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="/plugins/owl-carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="/plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="/plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="/plugins/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="/plugins/slick/slick/slick.css">
    <link rel="stylesheet" href="/plugins/lightGallery-master/dist/css/lightgallery.min.css">
    <link rel="stylesheet" href="/css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
    <style>
      .w3-button {width:150px;}
    </style>
  </head>
  <body>
    <!-- Header-->
    <header class="header header--1">
      <nav class="navigation">
        <div class="ps-container">
          <div class="navigation__left">
            <ul class="menu">
              <li class="menu-item-has-children current-menu-item"><a href="/home">Home</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
              </li> 
              <li><a href="/home#jeniskueku">Product</a>
              
              </li>
            </ul>
          </div>
          <div class="navigation__center"><a class="ps-logo"><img src="/images/logonana.png" alt=""></a></div>
          <div class="navigation__right">
            <ul class="menu">
              <!-- <li><a href="#">Gallery</a></li> -->
              <!-- <li><a href="blog-list.html">Blogs</a></li> -->
              {% if session.get('user-name') ==  null%}
              <li><a href="/dashboard/auth/login">Login</a></li>
              <li><a href="/dashboard/auth/register">Register</a></li>
              {% else %}
              <li><a href="/home/keranjang">Shopping Cart</a></li>
              <li><a href="/home/transaksi/list">Payment</a></li>
              <li><a href="/dashboard/auth/logout">Logout</a></li>
              {% endif %}
            </ul>
          <div>
          </div>
            <div class="header__actions"><a class="ps-search-btn" href="#"><i class="ba-magnifying-glass"></i></a><div class="ps-search">
              <div class="ps-search__content"><a class="ps-search__close" href="#"><span></span></a>
                <form class="ps-form--search-2"  method="get" action="/home/index/search/">
                  <h3>Search your cake</h3>
                  <div class="form-group">
                    <input class="form-control" type="text" name="nama_kue" placeholder="">
                    <button class="ps-btn active ps-btn--fullwidth">Search</button>
                  </div>
                </form>
              </div>
            </div>
            </div>
          </div>
        </div>
      </nav>
    </header>

<!-- tengah tengah isian database-->
<div class="ps-home-product bg--cover" data-background="images/bg/home-product.jpg"></div>
    <div class="ps-awards">
      <div class="ps-container">
        <div class="ps-section__header">
          <h3 class="ps-section__title">Nana Cakes & Bakery</h3>
         
          {% block content %} {% endblock %}
        </div>
      </div>

    </div>   
  </div>

<!-- contact us -->
    <footer class="ps-footer">
      <div class="ps-footer__content">
        <div class="ps-container">
          <div class="row">
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 ">
              <div class="ps-site-info"><a class="ps-logo"><img src="images/logonana.png" alt=""></a>
                <p>“Nana Cakes & Bakery provides hygienic services. This cake is prepared by expert chefs that gives a different taste from the others so that makes consumers addicted”</p>
                <ul class="ps-list--social">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-footer__contact">
                <h4>Contact with me</h4>
                <p>Nana Cakes & Bakery, <br> Gedung Teknik Informatika ITS </p>
                <P>085735632955, (0271) 057410</P>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
              <div class="ps-footer__open">
                <h4>Time to Open</h4>
                <p>
                  Monday - Friday: <br>08:00 am - 08:30 pm <br>
                  Saturday - Sunday:<br>
                  10:00 am - 16:30 pm
                </p>
              </div>
              <ul class="ps-list--payment">
                <li><a href="#"><img src="images/payment-method/visa.png" alt=""></a></li>
                <li><a href="#"><img src="images/payment-method/master-card.png" alt=""></a></li>
                <li><a href="#"><img src="images/payment-method/paypal.png" alt=""></a></li>
              </ul>
            </div>
          </div>
        </div>
      </div>
      <div class="ps-footer__copyright">
        <div class="container">
          <p>
          <strong>Nana Cakes & Bakery</strong>. Owner by<a href="#"> Isnaini Nurul K</a></p>
        </div>
      </div>
    </footer>
   
    <div id="back2top"><i class="fa fa-angle-up"></i></div>
    <div class="ps-loading">
      <div class="rectangle-bounce">
        <div class="rect1"></div>
        <div class="rect2"></div>
        <div class="rect3"></div>
        <div class="rect4"></div>
        <div class="rect5"></div>
      </div>
    </div>

    <!-- Plugins-->
    <script src="/plugins/jquery/dist/jquery.min.js"></script>
    <script src="/plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="/plugins/owl-carousel/owl.carousel.min.js"></script>
    <script src="/plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="/plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
    <script src="/plugins/jquery.waypoints.min.js"></script>
    <script src="/plugins/jquery.countTo.js"></script>
    <script src="/plugins/jquery.matchHeight-min.js"></script>
    <script src="/plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="/plugins/gmap3.min.js"></script>
    <script src="/plugins/lightGallery-master/dist/js/lightgallery-all.min.js"></script>
    <script src="/plugins/slick/slick/slick.min.js"></script>
    <script src="/plugins/slick-animation.min.js"></script>
    <script src="/plugins/jquery.slimscroll.min.js"></script>
    <!-- Custom scripts-->
    <script src="/js/main.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsUcTjt43mTheN9ruCsQVgBE-wgN6_AfY&amp;region=GB"></script>
  </body>
</html>