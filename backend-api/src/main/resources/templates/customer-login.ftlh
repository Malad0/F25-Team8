<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Login | GlamConnect</title>

    <style>
        body {
            margin: 0;
            padding: 32px;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            background: #fdf2f7;
        }

        .box {
            max-width: 380px;
            margin: 60px auto;
            background: white;
            padding: 28px;
            border-radius: 18px;
            border: 1px solid #efd3df;
            box-shadow: 0 6px 16px rgba(0,0,0,0.08);
            text-align: center;
        }

        h2 {
            margin-bottom: 18px;
            font-size: 26px;
            color: #aa6f8f;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 10px;
            border: 1px solid #eac6d3;
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 12px;
            margin-top: 14px;
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
            text-decoration: none;
        }

        .error {
            color: #d24e7a;
            font-size: 14px;
            margin-bottom: 10px;
        }
    </style>
</head>

<body>

<div class="box">
    <h2>Customer Login</h2>

    <#if error??>
        <div class="error">${error}</div>
    </#if>

    <form method="post" action="/customer/login">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>

        <button type="submit">Login</button>
    </form>

    <a class="link" href="/customer/signup">Don't have an account? Sign up</a>
</div>

</body>
</html>
