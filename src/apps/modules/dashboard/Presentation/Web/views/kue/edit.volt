{% extends "template.volt" %}
{% block title %} Buat Judul {% endblock %}
{% block content %}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <form action="/dashboard/kue/editpost" method="post" enctype="multipart/form-data">           
        Nama Kue    <br/> <input type="text" name="nama_kue" required="required" value="{{kue['nama_kue']}}"><br/>
        Harga Kue   <br/> <input type="text" name="harga_kue"  value="{{kue['harga_kue']}}"><br>
        Jumlah Stok  <br/> <input type="text" name="jumlahstok_kue"  value="{{kue['jumlahstok_kue']}}"> <br>
        Detail Kue  <br/>  <textarea cols="40" rows="5"  name="detail_kue"> {{kue['detail_kue']}}</textarea>    <br/>
        Foto Kue     <br/>  <img src="data:image/png;base64,{{kue['gambar_kue']}}" alt="" height="300"><br>
        Gambar <br>           <input type="file" name="gambar_kue"> <br/>
        <input type="hidden" name="id_kue" value="{{kue['id_kue']}}">
        <input type="submit" value="Simpan Data">
    </form>
</body>
</html>

{% endblock %}