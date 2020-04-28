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
    {{ session.get('user-name')}}
    <form action="/dashboard/uploadjeniskue/upload" method="post" enctype="multipart/form-data">        
        Nama Jenis Kue <input type="text" name="nama_jenis_kue" required="required"> <br/>
        Detail Jenis Kue <input type="text" name="detail_jenis_kue" required="required"> <br/>
        Gambar Jenis Kue <input type="file" name="gambar_jenis_kue" required="required" height="250px" width="220px"> <br/>
        <input type="submit" value="Simpan Data">      
    </form>
</body>
</html>

{% endblock %}