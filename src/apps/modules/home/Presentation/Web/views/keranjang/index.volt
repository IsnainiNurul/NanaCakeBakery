{% extends "template.volt" %}
{% block title %} Buat Judul {% endblock %}
{% block content %}
<style>
    table {
  font-family: Arial, Helvetica, sans-serif;
  color: black;
  background: #eaebec;
  border:#e8b756 1px solid;
}
 
table th {
  padding: 15px 35px;
  border-left:1px solid #e8b756;
  border-bottom: 1px solid #e8b756;
  background: #e8b756;
}
 
table th:first-child{  
  border-left:none;  
}
 
table tr {
  text-align: center;
  padding-left: 20px;
}
 
table td:first-child {
  text-align: left;
  padding-left: 20px;
  border-left: 0;
}
 
table td {
  padding: 15px 35px;
  border-bottom: 1px solid #e8b756;
  border-left: 1px solid #e8b756;
  background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
  background: -moz-linear-gradient(top, #fbfbfb, #fafafa);
}
 
table tr:last-child td {
  border-bottom: 0;
}
 
table tr:last-child td:first-child {
  -moz-border-radius-bottomleft: 3px;
  -webkit-border-bottom-left-radius: 3px;
  border-bottom-left-radius: 3px;
}
 
table tr:last-child td:last-child {
  -moz-border-radius-bottomright: 3px;
  -webkit-border-bottom-right-radius: 3px;
  border-bottom-right-radius: 3px;
}
 
table tr:hover td {
}

</style>
Ini adalah Keranjang Anda :

<br>
<br>
<table style="margin-left: 350px;">
    <thead class="thead-dark" style="color: white;">
<tr>
    <th class="row">No</th>
    <th class="row">Nama kue</th>
    <th class="row">Harga kue</th>
    <th class="row">Jumlah Pesanan</th>
    <th class="row">Total</th>
</tr>
    </thead>
<?php  $i=0;$totalbayar = 0 ?>
<tbody>
{% for keranjang in keranjangs %}
 <?php $i++; ?>
<tr>
<td>{{ i }}</td>
<td>{{keranjang['nama_kue']}} </td>
<td> {{keranjang['harga_kue']}}</td>
<td>
{{keranjang['jumlah']}}
</td>
<?php $total = $keranjang['jumlah'] * $keranjang['harga_kue'];$totalbayar=$totalbayar + $total  ?>
<td>{{total}}
</td>
<td> <a href="/home/keranjang/hapus/{{keranjang['id']}}"><button class="btn btn-primary btn-sm">Hapus</button></a>
</td>
</tr>


{% endfor %}
</tbody>
</table>
<br>
Total Pembayaran anda adalah : {{totalbayar}}
<br>
<br> 
Terimakasih telah memilih Nana Bakery sebagai sahabat anda
<br> 
Silahkan melakukan pembayaran melalui Rek.Mandiri 5111740000010 A.N Nana 
<br><br>

<a href="/home">  <button class="btn btn-primary">Kembali Belanja</button></a>
<a href="/home/transaksi/?username={{session.get('user-name')}}">  <button class="btn btn-primary">Bayar Sekarang</button></a>
{% endblock %}