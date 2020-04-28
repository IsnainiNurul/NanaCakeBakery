{% extends "template.volt" %}
{% block title %} Buat Judul {% endblock %}
{% block content %}
<style>
    table, th, td {
  border: 1px solid black;
}
</style>
<table style="width:100%">
    <tr>
      <th>ID Pembayaran</th>
      <th>Pemesan</th>
      <th>Alamat Pemesanan</th>

      <th>Bukti Transfer</th>
      <th>Status Pembayaran</th>
      <th>Detail</th>
      <th>Tanggal Pembelian</th>
    </tr>
    {% for list in lists %}
    <tr>
      <td>#{{list['id']}}</td>
      <td>{{list['nama_pembeli_formpembelian']}}</td>
      <td>{{list['alamat_tujuan_formpembelian']}}</td>
      {% if list['buktitransfer'] == null %}
      <td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal">Upload Bukti Transfer</button>

        <!-- Modal -->
        <div class="modal fade" id="myModal" role="dialog">
          <div class="modal-dialog">
          
            <!-- Modal content-->
            <div class="modal-content">
              <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Upload Bukti Transfer</h4>
              </div>
              <div class="modal-body">
                  <form action="/home/transaksi/upload" method="post" enctype="multipart/form-data">
                
                    <input type="file" name="buktitransfer">
                    <input type="hidden" name="id" value="{{list['id']}}">
                <input type="submit" value="kirim bukti transfer">
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
              </div>
            </div>
            
          </div></td>
          {% else %}
          <td><button type="button" class="btn btn-primary btn-sm" data-toggle="modal" data-target="#myModal{{list['id']}}">Lihat Bukti Transfer</button>

            <!-- Modal -->
            <div class="modal fade" id="myModal{{list['id']}}" role="dialog">
              <div class="modal-dialog">
              
                <!-- Modal content-->
                <div class="modal-content">
                  <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Bukti Transfer</h4>
                  </div>
                  <div class="modal-body">
                   <img src="data:image/png;base64,{{list['buktitransfer']}}" alt="">
                  </div>
                  <div class="modal-footer">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                  </div>
                </div>
                
              </div></td>
      {% endif %}
      <td>{{list['status']}}</td>
      <td><a href="/home/transaksi/detailtransaksi/?id={{list['id']}}"><button class="btn btn-info btn-sm">Click</button></a></td>
      <td>{{list['date']}}</td>
    </tr><br>
  {% endfor %}

</table>
{% endblock %}