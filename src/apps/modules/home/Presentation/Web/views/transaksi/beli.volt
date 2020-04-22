{% extends "template.volt" %}
{% block title %} Buat Judul {% endblock %}
{% block content %}

{% for formpembelian in formpembelians %}
Nama Pembeli : {{formpembelian['nama_pembeli_formpembelian']}}
No HP : {{formpembelian['no_hp_formpembelian']}}
Alamat Tujuan : {{formpembelian['alamat_tujuan_formpembelian']}}
Jenis Kue : 


Harga: {{kue['harga_kue']}}
Detail : {{kue['detail_kue']}}
Jumlah Stok : {{kue['jumlahstok_kue']}}
{% endfor %}


{% endblock %}