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
    <form action="/dashboard/uploadjeniskue/editpost" method="post" enctype="multipart/form-data">
            
        Nama Jenis Kue         <br/> <input type="text" name="nama_jenis_kue" required="required" value="{{jeniskue.nama_jenis_kue}}">           <br/>
        Detail Jenis Kue       <br/>  <textarea cols="40" rows="5"  name="detail_jenis_kue"> {{jeniskue.detail_jenis_kue}}</textarea>    <br/>
        Gambar Jenis Kue       <br/>  <img src="data:image/png;base64,{{jeniskue.gambar_jenis_kue}}" alt="" height="250px" width="220px"><br>
        Upload<br>           <input type="file" name="gambar_jenis_kue"> <br/>
        <input type="hidden" name="id_kue" value="{{jeniskue.id_jenis_kue}}">

        
    
        <input type="submit" value="Simpan Data">
        
    </form>
</body>
</html>

{% endblock %}