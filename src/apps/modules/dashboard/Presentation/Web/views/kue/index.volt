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
  
  <a href="/dashboard/upload/"><button class="btn btn-primary">Tambah Kue</button></a>
  <br>
  <br>
<div class="row">

  {% for kue in kues %}

  <div class="col-md-3" style="text-align: center;" > 
      <div class="card card-primary">
        <div class="card-header">
          <h3 class="card-title">
              {{ kue['nama_kue']}}</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
            </button>
          </div>
          <!-- /.card-tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body">

<img src="data:image/png;base64,{{kue['gambar_kue']}}" alt="" height=200px" width="200px">
 
<br>
Harga : <br> <strong>{{kue['harga_kue']}}</strong>
<br>
Jenis Kue :<br> <strong>{{kue['nama_jenis_kue']}}</strong>
<br>
Jumlah Stok : <br> <strong>{{kue['jumlahstok_kue']}}</strong>
<br>
<a href="/dashboard/kue/edit/{{kue['id_kue']}}"><button class="btn btn-outline-primary">Edit</button></a>
<a href="/dashboard/kue/delete/{{kue['id_kue']}}"><button class="btn btn-outline-primary">Hapus</button></a>
        </div>
      </div>
    </div>
  {% endfor %}
</div>
<br>
</body>
</html>

{% endblock %}


