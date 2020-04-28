{%if message is defined %}
{{message}}
{% endif %}

<head>
<meta charset="utf-8">
    <title>Halaman Login</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>

<div class="login-background">
     <div class="login-header">
     <img src="/images/logonana.png" class="img-logo">
     <p>Nana Cake & Bakery</p>
    </div>
    <div class="login-body">
        <form action="/dashboard/auth/login" method="post">
        <input type="text" name="username_pelanggan" placeholder="Username" required= "required"><br>
        <input type="password" name="password_pelanggan" placeholder="Password" required><br>
        <input type="submit" name="login" value="LOG IN"><br>
        </form>
        <p>Don't Have an account?<a href="/dashboard/auth/register">Register</a></p>
    </div>
</div>

<style>
    body{
 background: #d69f3a ;
 margin-right: 20%;
 margin-left: 20%;

}
.login-background{
 font-family: arial;
 background: #262622;
 padding: 10px;
 box-shadow: 0px 0px 15px #222;
 border-radius: 3px;
 width: 300px;
 color: #e3e3ca;
 height: auto;
 margin: 50px auto;
 text-align: center;

}
input[type="text"],input[type="password"]{
  border: none;
 border-bottom: 1px solid #999;
 margin-bottom: 15px;
 color: #f7f7f5 ;
 width: 100%;
 padding: 15px 0px;
 background: none;
}


input[type="submit"]{
 background: #e3e3ca;
 color: ;
 border-radius: 3px;
 padding: 15px;
 width: 100%;
 border: none;
}
.img-logo{
 height: 100px;
 width: 100px;
}
a,a:hover,a:visited,a:active{
 text-decoration: none;
 color: #e3e3ca;
}
</style>
</body>


 
