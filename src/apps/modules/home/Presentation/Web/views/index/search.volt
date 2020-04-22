{% extends "template.volt" %}

{% block title %} Buat Judul {% endblock %}

{% block content %}
<head>
  <style>
  table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
  }
  </style>
  </head>
  <body>
  
  <h2>Result</h2>
  <h2>Choose your favorite cake</h2>
  <table style="width:100 %; margin-left: 50px;">
    <tr>
      <th>Nama Kue</th> 
      <th>Foto Kue</th>
      <th>Harga Kue</th>
    </tr>
  {% for kue in kues %}
    <tr>
      <td><a href="/home/kue/produkdetail/?produkdetail={{kue['nama_kue']}}">{{kue['nama_kue']}} </a></td>
      <td><img src="data:image/png;base64,{{kue['gambar_kue']}}" height="100" ></td>
      <td>{{kue['harga_kue']}}</td>
    </tr>
  {% endfor %}
  </table>
  
  </body>



{% endblock %}