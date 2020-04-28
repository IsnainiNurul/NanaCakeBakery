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
    <link rel="stylesheet" href="plugins/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="plugins/bakery-icon/style.css">
    <link rel="stylesheet" href="plugins/bootstrap/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="plugins/owl-carousel/assets/owl.carousel.css">
    <link rel="stylesheet" href="plugins/jquery-bar-rating/dist/themes/fontawesome-stars.css">
    <link rel="stylesheet" href="plugins/bootstrap-select/dist/css/bootstrap-select.min.css">
    <link rel="stylesheet" href="plugins/jquery-ui/jquery-ui.min.css">
    <link rel="stylesheet" href="plugins/slick/slick/slick.css">
    <link rel="stylesheet" href="plugins/lightGallery-master/dist/css/lightgallery.min.css">
    <link rel="stylesheet" href="css/style.css">
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
              <li><a href="#jeniskueku">Product</a></li>
              
              </li>

            </ul>
          </div>
          <div class="navigation__center"><a class="ps-logo" href="/home"><img src="images/logonana.png" alt=""></a></div>
          <div class="navigation__right">
            <ul class="menu">
              {% if session.get('user-name') ==  null%}
              <li><a href="/dashboard/auth/login">Login</a></li>
              <li><a href="/dashboard/auth/register">Register</a></li>
              {% else %}
              <li><a href="/home/keranjang">Shopping Cart</a></li>
              <li><a href="/home/transaksi/list">Payment</a></li>
              <li><a href="/dashboard/auth/logout">Logout</a></li>
              {% endif %}
            </ul>
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

      <nav class="navigation--mobile">
        <div class="ps-container"><a class="ps-logo" href="#"><img src="images/logonana.png" alt=""></a>
          <ul class="menu menu--mobile">
            <li class="/home"><a href="#">Homepage</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
            </li>
            <li class="menu-item-has-children"><a href="/home#jeniskueku">product</a><span class="sub-toggle"><i class="fa fa-angle-down"></i></span>
            </li>
          </ul>
        </div>
      </nav>
    </header>

    <!-- Home banner-->
    <div class="pb-80" id="slider">
      <div class="ps-carousel--animate ps-carousel--1st">
        <div class="item">
          <div class="ps-product--banner"><span class="ps-badge ps-badge--sale"><img src="images/icons/badge-brown.png" alt=""><i>50%</i></span><img src="images/banner/slider-7.png" alt="">
            <div class="ps-product__footer"><a class="ps-btn" href="/home#jeniskueku">Choose Cake</a></div>
          </div>
        </div>
        <div class="item">
          <div class="ps-product--banner"><span class="ps-badge ps-badge--sale"><img src="images/icons/badge-brown.png" alt=""><i>50%</i></span><img src="images/banner/slider-4.png" alt="">
            <div class="ps-product__footer"><a class="ps-btn" href="/home#jeniskueku">Choose Cake</a></div>
          </div>
        </div>
        <div class="item">
          <div class="ps-product--banner"><span class="ps-badge ps-badge--sale"><img src="images/icons/badge-brown.png" alt=""><i>50%</i></span><img src="images/banner/slider-5.png" alt="">
            <div class="ps-product__footer"><a class="ps-btn" href="/home#jeniskueku">Choose Cake</a></div>
          </div>
        </div>
        <div class="item">
          <div class="ps-product--banner"><span class="ps-badge ps-badge--sale"><img src="images/icons/badge-brown.png" alt=""><i>0.5</i></span><img src="images/banner/slider-6.png" alt="">
            <div class="ps-product__footer"><a class="ps-btn" href="/home#jeniskueku">Choose Cake</a></div>
          </div>
        </div>
      </div>
    </div>
    <!-- award-->
    <div class="ps-awards">
      <div class="ps-container">
        <div class="ps-section__header">
          <h3 class="ps-section__title">Nana Cakes & Bakery</h3>
          <p>WELCOME TO THE STORE</p><span><img src="images/icons/floral.png" alt=""></span>
        </div>
        <div class="ps-section__content">
          <div class="row">
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
              <div class="ps-block--award"><img src="images/icons/award-1.png" alt="">
                <h4> DELICIOUS TASTES <span>Since 1999</span></h4>
                <p>Give the taste of a delicious, soft cake and melting in the mouth is addictive</p>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
              <div class="ps-block--award"><img src="images/icons/award-2.png" alt="">
                <h4> EXPERT CHEF <span>Since 1999</span></h4>
                <p>This cake is cooked by an expert chef with a hygienic serving and serves delicious cakes</p>
              </div>
            </div>
            <div class="col-lg-4 col-md-4 col-sm-12 col-xs-12 ">
              <div class="ps-block--award"><img src="images/icons/award-2.png" alt="">
                <h4>VARIOUS CAKE FLAVOR <span>Since 1999</span></h4>
                <p>Provide various kinds of cake flavor so consumers do not get bored and enjoy the cake</p>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="ps-block--signature">
        <div class="ps-block__thumbnail"><img src="images/signature.png" alt=""></div>
        <div class="ps-block__content">
          <p>“There are people in the world so hungry that God cannot appear to them except in the form of cake”</p><small>Nana -  CEO and Founder Nana Cake & Bakery</small><img src="images/signature-2.png" alt="">
        </div>
      </div>
    </div>
    
    
    <!-- Home 1 products-->
    <div class="ps-home-product bg--cover" data-background="images/bg/home-product.jpg">
      <div class="ps-container" id="jeniskueku">
        <div class="ps-section__header">
          <h3 class="ps-section__title">Various Cakes Flavors</h3>
          <p>Cakes Every Day</p><span><img src="images/icons/floral.png" alt=""></span>
        </div>
        <div class="ps-section__content">
          
          {% for jeniskue in jeniskues %}
          <div class="row" style="display: inline-block;text-align: center;">
            <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
              <div class="ps-product ps-product--horizontal">
                <div class="ps-product__thumbnail"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
                </div>
                <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html"></a>
                  <p><a href="/home/kue/?jenis={{jeniskue['nama_jenis_kue']}}">{{jeniskue['nama_jenis_kue']}}</a> </p>
                  <select class="ps-rating">
                    <option value="1">1</option>
                    <option value="1">2</option>
                    <option value="1">3</option>
                    <option value="1">4</option>
                    <option value="2">5</option>
                  </select>
                
                </div>
              </div>
            </div>
         </div>
         {% endfor %}
        </div>
      </div>
    </div>



    <!-- Testimonials-->
    <div class="ps-testimonials bg--parallax" data-background="images/bg/testimonials.jpg">
      <div class="ps-container">
        <div class="ps-carousel--testimonial owl-slider" data-owl-auto="true" data-owl-loop="true" data-owl-speed="5000" data-owl-gap="0" data-owl-nav="false" data-owl-dots="true" data-owl-item="1" data-owl-item-xs="1" data-owl-item-sm="1" data-owl-item-md="1" data-owl-item-lg="1" data-owl-duration="1000" data-owl-mousedrag="off" data-owl-animate-in="fadeIn" data-owl-animate-out="fadeOut">
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="images/user/1.jpg" alt=""></div>
            <div class="ps-block__content">
              <select class="ps-rating">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
                <option value="1">4</option>
                <option value="2">5</option>
              </select>
              <p>“Nana Cakes & Bakery provides hygienic services. This cake is prepared by expert chefs. Nana cake & bakery gives a different taste from the others so that makes consumers addicted”</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Nana</strong>  - CEO & Founder Nana Cakes & Bakery</p>
            </div>
          </div>
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="images/user/2.jpg" alt=""></div>
            <div class="ps-block__content">
              <select class="ps-rating">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
                <option value="1">4</option>
                <option value="2">5</option>
              </select>
              <p>“Nana Cakes & Bakery provides hygienic services. This cake is prepared by expert chefs. Nana cake & bakery gives a different taste from the others so that makes consumers addicted”</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Nana</strong>  - CEO & Founder Nana Cakes & Bakery</p>
            </div>
          </div>
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="images/user/3.jpg" alt=""></div>
            <div class="ps-block__content">
              <select class="ps-rating">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
                <option value="1">4</option>
                <option value="2">5</option>
              </select>
              <p>“Nana Cakes & Bakery provides hygienic services. This cake is prepared by expert chefs. Nana cake & bakery gives a different taste from the others so that makes consumers addicted”</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Nana</strong>  - CEO & Founder Nana Cake & Bakery</p>
            </div>
          </div>
          <div class="ps-block--tesimonial">
            <div class="ps-block__user"><img src="images/user/4.jpg" alt=""></div>
            <div class="ps-block__content">
              <select class="ps-rating">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
                <option value="1">4</option>
                <option value="2">5</option>
              </select>
              <p>“Nana Cakes & Bakery provides hygienic services. This cake is prepared by expert chefs. Nana cake & bakery gives a different taste from the others so that makes consumers addicted”<</p>
            </div>
            <div class="ps-block__footer">
              <p><strong>Nana</strong>  - CEO & Founder Nana Cake & Bakery</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- home-blog-->

    <footer class="ps-footer">
      <div class="ps-footer__content">
        <div class="ps-container">
          <div class="row">
            <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 ">
              <div class="ps-site-info"><a class="ps-logo" ><img src="images/logonana.png" alt=""></a>
                <p>“Nana Cakes & Bakery provides hygienic services. This cake is prepared by expert chefs that gives a different taste from the others so that makes consumers addicted”</p>
                <ul class="ps-list--social">
                  <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                  <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                  <li><a href="#"><i class="fa fa-dribbble"></i></a></li>
                </ul>
              </div>
            </div>
            <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 ">
              <form class="ps-form--subscribe-offer" action="do_action" method="post">
                <h4>Get news & offer</h4>
                <div class="form-group">
                  <input class="form-control" type="text" placeholder="Your Email...">
                  <button>Subscribe</button>
                </div>
                <p>* Don't worry, we never spam</p>
              </form>
              <div class="ps-footer__contact">
                <h4>Contact with me</h4>
                <p>Nana Cakes & Bakery, Jl. Kemerdekaan Abadi No. 10 </p>
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
    <script src="plugins/jquery/dist/jquery.min.js"></script>
    <script src="plugins/bootstrap/dist/js/bootstrap.min.js"></script>
    <script src="plugins/owl-carousel/owl.carousel.min.js"></script>
    <script src="plugins/bootstrap-select/dist/js/bootstrap-select.min.js"></script>
    <script src="plugins/jquery-bar-rating/dist/jquery.barrating.min.js"></script>
    <script src="plugins/jquery.waypoints.min.js"></script>
    <script src="plugins/jquery.countTo.js"></script>
    <script src="plugins/jquery.matchHeight-min.js"></script>
    <script src="plugins/jquery-ui/jquery-ui.min.js"></script>
    <script src="plugins/gmap3.min.js"></script>
    <script src="plugins/lightGallery-master/dist/js/lightgallery-all.min.js"></script>
    <script src="plugins/slick/slick/slick.min.js"></script>
    <script src="plugins/slick-animation.min.js"></script>
    <script src="plugins/jquery.slimscroll.min.js"></script>
    <!-- Custom scripts-->
    <script src="js/main.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDsUcTjt43mTheN9ruCsQVgBE-wgN6_AfY&amp;region=GB"></script>
  </body>
</html>