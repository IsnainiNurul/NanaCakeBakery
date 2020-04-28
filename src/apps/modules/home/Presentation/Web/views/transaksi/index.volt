{% extends "template.volt" %}
{% block title %} Buat Judul {% endblock %}
{% block content %}


<body>

<h3>Form Pembelian</h3>
<div style="border-style: dashed;color: black;">
  <form action="/home/transaksi/store" method="POST" >


  <div class="form-group">
    <label for="fname">Nama Pembeli</label>
    <input class="form-control" type="text" id="fname" name="nama_pembeli_formpembelian" placeholder="Nama Lengkap">
</div>

<div class="form-group">
    <label for="lname">No. Hp Pembeli</label>
    <input class="form-control" type="text" id="lname" name="no_hp_formpembelian" placeholder="No. HP Pembeli">
</div>

<div class="form-group">
    <label for="lname">Email Pembeli</label>
    <input class="form-control" type="text" id="lname" name="email_formpembelian" placeholder="Email Pembeli">
</div>

<div class="form-group">
    <label for="lname">Alamat Tujuan</label>
    <input class="form-control" type="text" id="lname" name="alamat_tujuan_formpembelian" placeholder="Alamat Tujuan">
</div>

<div class="form-group">
    <input class="btn btn-primary" type="submit" value="Submit">
    </form>
  </form>
</div>

{% endblock %}