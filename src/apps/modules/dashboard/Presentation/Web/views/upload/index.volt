<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    {{ session.get('user-name')}}
    <form action="/dashboard/upload/upload" method="post" enctype="multipart/form-data">        
        Nama Kue <input type="text" name="nama_kue" required="required"> <br/>
        Jenis Kue <select name="nama_jenis_kue" required="required">
            <option value="Kue Kering">Kue Kering</option>
            <option value="Kue Basah">Kue Basah</option>
          </select>
          <br>
        Harga Kue <input type="text" name="harga_kue" required="required"> <br/>
        Detail Kue <input type="text" name="detail_kue" required="required"> <br/>
        Jumlah Stok Kue <input type="text" name="jumlahstok_kue" required="required"> <br/>
        Gambar <input type="file" name="gambar_kue" required="required"> <br/>
        <input type="submit" value="Simpan Data">      i
    </form>
</body>
</html>