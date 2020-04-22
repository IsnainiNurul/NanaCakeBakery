{%if message is defined %}
{{message}}
{% endif %}

<form action="/home/auth/register" method="post">
            
    Username <input type="text" name="username_pelanggan" required="required"> <br/>
    Password <input type="password" name="password_pelanggan" required="required"> <br/>
    Email <input type="text" name="email_pelanggan" required="required"> <br/>
    Jenis Kelamin <input type="text" name="jenis_kelamin_pelanggan" required="required"> <br/>
    Alamat <input type="text" name="alamat_pelanggan" required="required"> <br/>
    Nomor HP <input type="text" name="nohp_pelanggan" required="required"> <br/>
    <input type="submit" value="Simpan Data">
    
</form>