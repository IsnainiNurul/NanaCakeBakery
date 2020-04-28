{% extends "template.volt" %}

{% block title %} Buat Judul {% endblock %}

{% block content %}
  
{% for jeniskue in jeniskues %}

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
  <title>Bready</title>
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
  <!--HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
  <!--WARNING: Respond.js doesn't work if you view the page via file://-->
  <!--[if lt IE 9]><script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script><script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script><![endif]-->
  <!--[if IE 7]><body class="ie7 lt-ie8 lt-ie9 lt-ie10"><![endif]-->
  <!--[if IE 8]><body class="ie8 lt-ie9 lt-ie10"><![endif]-->
  <!--[if IE 9]><body class="ie9 lt-ie10"><![endif]-->
</head>

<main class="ps-main">
  <div class="ps-container">
    <div class="ps-product--detail">
      <div class="row">
        <div class="col-lg-5 col-md-6 col-sm-12 col-xs-12 ">
          <div class="ps-product__thumbnail"><span class="ps-badge"><img src="images/icons/badge-red.png" alt=""><i>New</i></span><span class="ps-badge ps-badge--sale"><img src="images/icons/badge-brown.png" alt=""><i>50%</i></span>
            <div class="ps-product__image">
              <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}"" alt=""></a></div>
              <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""></a></div>
              <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""></a></div>
              <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}"" alt=""></a></div>
              <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""></a></div>
            </div>
            <div class="ps-product__preview">
              <div class="ps-product__variants">
                <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""></div>
                <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""></div>
                <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""></div>
                <div class="item"><img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt=""></div>
              </div>
            </div>
          </div>
        </div>
    
        <div class="col-lg-7 col-md-6 col-sm-12 col-xs-12 ">
          <div class="ps-product__info">
            <h1 class="text-uppercase">{{jeniskue['nama_jenis_kue']}}</h1>
            <div class="ps-product__rating">
              <select class="ps-rating">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
                <option value="1">4</option>
                <option value="2">5</option>
              </select>
            </div>

            <div class="ps-product__desc">
              <h3> {{jeniskue['detail_jenis_kue']}} </h3>
            </div>
            <div class="ps-product__status">
              <h5>Availability: <span> In stock</span></h5>
              <h5>CATEGORIES:<a href="product-listing.html"> {{jeniskue['nama_jenis_kue']}} </a></h5>
            </div>
            <div class="ps-product__shopping">
              <form class="ps-form--shopping" action="do_action" method="post">
              </form>
            </div>
            <div class="ps-product__sharing">
              <p class="text-right">Share this:<a href="#"><i class="fa fa-facebook"></i></a><a href="#"><i class="fa fa-twitter"></i></a><a href="#"><i class="fa fa-dribbble"></i></a></p>
            </div>
          </div> 
        </div> 
      </div>
    </div>
  </div>
</main>
  
{% endfor %}
  

<main class="ps-shop">
    <div class="ps-shop__wrapper">
      <div class="ps-row">
        
      {% for kue in kues %}  
        <div class="ps-column">
          <div class="ps-product">
            <div class="ps-product__thumbnail"><img src="data:image/png;base64,{{kue['gambar_kue']}}" height="200px" alt=""><a class="ps-product__overlay" href="/home/kue/produkdetail/?produkdetail={{kue['nama_kue']}}"></a>
            </div>
            <div class="ps-product__content"><a class="ps-product__title" href="/home/kue/produkdetail/?produkdetail={{kue['nama_kue']}}">{{kue['nama_kue']}}</a>
              <p><a href="/home/kue/produkdetail/?produkdetail={{kue['nama_kue']}}">Nana</a> - <a href="/home/kue/produkdetail/?produkdetail={{kue['nama_kue']}}">Bakery</a></p>
              <select class="ps-rating">
                <option value="1">1</option>
                <option value="1">2</option>
                <option value="1">3</option>
                <option value="1">4</option>
                <option value="2">5</option>
              </select>
              <p class="ps-product__price">Rp. {{kue['harga_kue']}}</p>
            </div>
          </div>
        </div>
      {% endfor %}
      
      </div>
    </div>
    <aside class="ps-sidebar">
      <aside class="widget widget_sidebar widget_category">
        <h3 class="widget-title">Categories</h3>
        <ul class="ps-list--checked">
          <li><i class="glyphicon glyphicon-thumbs-up">  Eid Mubarak Cake</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Sweet Cake</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Birthday Cake</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Pudding Cake</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Wedding Cake</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Christmas Cake</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  CupCake</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Pastry</i></li>
        </ul>
      </aside>
      <aside class="widget widget_filter widget_sidebar">
        <h3 class="widget-title">Choose Your Cake</h3>
        <div class="ps-slider" data-default-min="0" data-default-max="500" data-max="1000" data-step="100" data-unit="$"></div>
      </aside>
      <aside class="widget widget_sidebar widget_category">
        <h3 class="widget-title">Variant of topping</h3>
        <ul class="ps-list--checked">
          <li><i class="glyphicon glyphicon-thumbs-up">  ButterCream</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Chocholates</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Vanilla</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Blueberry</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Fruits</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Milk</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Almond</i></li>
          <li><i class="glyphicon glyphicon-thumbs-up">  Cheese</i></li>
        </ul>
      </aside>
    </aside>
  </main>

{% endblock %}