<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Sign Up | GlamConnect</title>

    <style>
        body {
            margin: 0;
            padding: 32px;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            background: #fdf2f7;
        }

        .box {
            max-width: 420px;
            margin: 40px auto;
            background: white;
            padding: 28px;
            border-radius: 18px;
            border: 1px solid #efd3df;
            box-shadow: 0 6px 16px rgba(0,0,0,0.08);
        }

        h2 {
            text-align: center;
            margin-bottom: 10px;
            font-size: 26px;
            color: #aa6f8f;
        }

        .error {
            color: #d24e7a;
            font-size: 14px;
            margin-bottom: 10px;
            text-align: center;
        }

        label {
            display: block;
            font-size: 13px;
            margin-top: 8px;
            color: #7a5a6c;
        }

        input {
            width: 100%;
            padding: 10px;
            margin-top: 4px;
            border-radius: 10px;
            border: 1px solid #eac6d3;
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 16px;
            border-radius: 999px;
            border: none;
            background: #d24e7a;
            color: white;
            cursor: pointer;
            font-size: 15px;
        }

        button:hover {
            background: #bf426b;
        }

        .link {
            margin-top: 12px;
            display: block;
            font-size: 14px;
            color: #aa6f8f;
            text-align: center;
            text-decoration: none;
        }
    </style>
</head>

<body>

<div class="box">
    <h2>Create your account</h2>

    <#if error??>
        <div class="error">${error}</div>
    </#if>

    <form method="post" action="/customer/signup">
        <label>First Name</label>
        <input type="text" name="firstName" value="${customer.firstName!}" required>

        <label>Last Name</label>
        <input type="text" name="lastName" value="${customer.lastName!}" required>

        <label>Email</label>
        <input type="email" name="email" value="${customer.email!}" required>

        <label>Phone</label>
        <input type="text" name="phone" value="${customer.phone!}">

        <label>Password</label>
        <input type="password" name="password" required>

        <button type="submit">Sign Up</button>
    </form>

    <a class="link" href="/customer/login">Already have an account? Log in</a>
</div>

</body>
</html>
