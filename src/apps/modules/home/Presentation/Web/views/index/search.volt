{% extends "template.volt" %}

{% block title %} Buat Judul {% endblock %}

{% block content %}
<head> 
  <style>
    table {
  font-family: Arial, Helvetica, sans-serif;
  color: black;
  background: #eaebec;
  border:#e8b756 1px solid;
}
 
table th {
  padding: 15px 35px;
  border-left:1px solid #e8b756;
  border-bottom: 1px solid #e8b756;
  background: #e8b756;
}
 
table th:first-child{  
  border-left:none;  
}
 
table tr {
  text-align: center;
  padding-left: 20px;
}
 
table td:first-child {
  text-align: left;
  padding-left: 20px;
  border-left: 0;
}
 
table td {
  padding: 15px 35px;
  border-top: 1px solid #ffffff;
  border-bottom: 1px solid #e8b756;
  border-left: 1px solid #e8b756;
  background: #fafafa;
  background: -webkit-gradient(linear, left top, left bottom, from(#fbfbfb), to(#fafafa));
  background: -moz-linear-gradient(top, #fbfbfb, #fafafa);
}
 
table tr:last-child td {
  border-bottom: 0;
}
 
table tr:last-child td:first-child {
  -moz-border-radius-bottomleft: 3px;
  -webkit-border-bottom-left-radius: 3px;
  border-bottom-left-radius: 3px;
}
 
table tr:last-child td:last-child {
  -moz-border-radius-bottomright: 3px;
  -webkit-border-bottom-right-radius: 3px;
  border-bottom-right-radius: 3px;
}
 
table tr:hover td {
  background: #f2f2f2;
  background: -webkit-gradient(linear, left top, left bottom, from(#f2f2f2), to(#f0f0f0));
  background: -moz-linear-gradient(top, #f2f2f2, #f0f0f0);
}

  /* table, th, td {
    border: 1px solid black;
    border-collapse: collapse;
  } */
  </style>
  </head>
  <body>
  
  <h2>Result</h2>
  <table cellspacing='0' style="width:100 %; margin-left: 50px;margin-left: 450px;">
    <thead style="color: white;">
    <tr>
      <th>Nama Kue</th> 
      <th>Foto Kue</th>
      <th>Harga Kue</th>
    </tr>
    </thead>
    
  {% for kue in kues %}
    <tbody>
    <tr>
      <td><a href="/home/kue/produkdetail/?produkdetail={{kue['nama_kue']}}">{{kue['nama_kue']}} </a></td>
      <td><img src="data:image/png;base64,{{kue['gambar_kue']}}" height="100" ></td>
      <td>{{kue['harga_kue']}}</td>
    </tr>
  </tbody>
  {% endfor %}
  </table>
  
  </body>



{% endblock %}