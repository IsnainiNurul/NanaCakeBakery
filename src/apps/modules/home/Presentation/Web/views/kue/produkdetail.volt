{% extends "template.volt" %}
{% block title %} Buat Judul {% endblock %}
{% block content %}

{% for kue in kues %}

<img src="data:image/png;base64,{{kue['gambar_kue']}}" alt="" height="300">
Nama : {{kue['nama_kue']}}
Harga: {{kue['harga_kue']}}
Detail : {{kue['detail_kue']}}
Jumlah Stok : {{kue['jumlahstok_kue']}}

<a href="/home/transaksi/?transaksi={{kue['id_kue']}}"> <button class="button">BUY CAKE</button></a>
{% endfor %}





<!-- <div class="col-lg-4 col-md-6 col-sm-6 col-xs-12 ">
  <div class="ps-product ps-product--horizontal">
    <div class="ps-product__thumbnail"><img src="data:image/png;base64,{{kue['gambar_kue']}}" alt=""><a class="ps-product__overlay" href="product-detail.html"></a>
      <ul class="ps-product__actions">
        <li><a href="#" data-tooltip="Quick View"><i class="ba-magnifying-glass"></i></a></li>
        <li><a href="#" data-tooltip="Favorite"><i class="ba-heart"></i></a></li>
        <li><a href="#" data-tooltip="Add to Cart"><i class="ba-shopping"></i></a></li>
      </ul>
    </div>
    <div class="ps-product__content"><a class="ps-product__title" href="product-detail.html">{{kue['nama_kue']}}</a>
      <h4><a href="product-list.html">Nana</a> - <a href="product-list.html">Bakery</a></h4>
      <select class="ps-rating">
        <option value="1">1</option>
        <option value="1">2</option>
        <option value="1">3</option>
        <option value="1">4</option>
        <option value="2">5</option>
      </select>
      <h4> Detail kue</h4>
      <h4> Rp. {{kue['harga_kue']}} </h4>
    </div>
  </div>
</div> -->
<!-- <img src="data:image/png;base64,{{kue['gambar_kue']}}" alt="" height="300">
Nama : {{kue['nama_kue']}}
Harga: {{kue['harga_kue']}}
Detail : {{kue['detail_kue']}}
Jumlah Stok : {{kue['jumlahstok_kue']}} -->


{% endblock %}