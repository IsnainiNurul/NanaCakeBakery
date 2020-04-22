{%if message is defined %}
{{message}}
{% endif %}

<form action="/home/auth/login" method="post">
            
    Username <input type="text" name="username_pelanggan" required="required"> <br/>
    Password <input type="password" name="password_pelanggan" required="required"> <br/>

    <input type="submit" value="login">
    
</form>