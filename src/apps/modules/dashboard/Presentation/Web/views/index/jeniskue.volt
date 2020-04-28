


{% extends "template.volt" %}

{% block title %} Buat Judul {% endblock %}

{% block content %}

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Jenis Kue</title>
</head>
<body>
  
<a href="/dashboard/uploadjeniskue/"><button class="btn btn-primary">Tambah Jenis Kue</button></a>
<br>
<br>
<br>

<div class="row">
       
{% for jeniskue in jeniskues %}
  <div class="col-md-3" style="text-align: center;" > 
      <div class="card card-primary">
        <div class="card-header">
          <h3 class="card-title">
              {{ jeniskue['nama_jenis_kue']}}</h3>

          <div class="card-tools">
            <button type="button" class="btn btn-tool" data-card-widget="collapse"><i class="fas fa-minus"></i>
            </button>
          </div>
          <!-- /.card-tools -->
        </div>
        <!-- /.card-header -->
        <div class="card-body">

<img src="data:image/png;base64,{{jeniskue['gambar_jenis_kue']}}" alt="" height="180" width="200">
<br>
Detail :<br> <strong>{{ jeniskue ['detail_jenis_kue']}}</strong>
<br>
<a href="/dashboard/uploadjeniskue/edit/{{jeniskue['id_jenis_kue']}}"><button class="btn btn-outline-primary">Edit</button></a>
<a href="/dashboard/uploadjeniskue/delete/{{jeniskue['id_jenis_kue']}}"><button class="btn btn-outline-primary">Hapus</button></a>
        </div>
        <!-- /.card-body -->
      </div>
      <!-- /.card -->
    </div>
  <!-- /.col -->
  {% endfor %}
</div>
<br>
</body>
</html>

{% endblock %}


