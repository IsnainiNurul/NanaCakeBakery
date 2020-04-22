<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <h1>Selamat Datang {{ session.get('user-name')}}</h1>
    {% if session.get('user-name') == null %} {# variable is not set #}
    <a href="/dashboard/auth/login"><button>Login</button></a> 
    <a href="/dashboard/auth/register"><button>Register</button></a> 
{% else %} {# variable is set #}
<a href="/dashboard/auth/logout"><button>Logout</button></a> 

{% endif %}
<br>
{% for kue in kues %}
<br>
Nama Kue :{{ kue['nama_kue']}}
<br>
Jenis Kue : {{ kue['nama_jenis_kue']}}
<br>
Harga Kue : {{ kue['harga_kue']}}
<br>
Detail Kue : {{ kue['detail_kue']}}
<br>
<br>
Jumlah Stok Kue : {{ kue['jumlahstok_kue']}}
<br>
<br>
<img src="data:image/png;base64,{{kue['gambar_kue']}}" alt="" height="300">
<br>
<a href="/dashboard/kue/edit/{{kue['id_kue']}}"><button>Edit</button></a>
<a href="/dashboard/kue/delete/{{kue['id_kue']}}"><button>Hapus</button></a>
{% endfor %}

</body>
</html>