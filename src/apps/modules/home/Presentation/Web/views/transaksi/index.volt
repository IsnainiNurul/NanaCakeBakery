{% extends "template.volt" %}
{% block title %} Buat Judul {% endblock %}
{% block content %}

<style>
input[type=text], select {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
</style>
<body>

<h3>Form Pembelian</h3>
<div>
  <form action="/home/transaksi/store" method="POST">
    <label for="fname">Nama Pembeli</label>
    <input type="text" id="fname" name="nama_pembeli_formpembelian" placeholder="Nama Lengkap">

    <label for="lname">No. Hp Pembeli</label>
    <input type="text" id="lname" name="no_hp_formpembelian" placeholder="No. HP Pembeli">

    <label for="lname">Email Pembeli</label>
    <input type="text" id="lname" name="email_formpembelian" placeholder="Email Pembeli">

    <label for="lname">Alamat Tujuan</label>
    <input type="text" id="lname" name="alamat_tujuan_formpembelian" placeholder="Alamat Tujuan">
  
    <input type="hidden" id="lname" name="id_kue" placeholder="id kue" value="{{id}}">
    <input type="submit" value="Submit">
  </form>
</div>

{% endblock %}