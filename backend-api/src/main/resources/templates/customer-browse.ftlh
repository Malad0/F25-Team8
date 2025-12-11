<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Browse Services | GlamConnect</title>

    <style>
        body {
            margin: 0;
            font-family: -apple-system, system-ui, BlinkMacSystemFont, sans-serif;
            background: #fdf2f7;
            padding: 32px;
        }

        .header {
            text-align: center;
            margin-bottom: 28px;
        }

        .logo {
            letter-spacing: 0.2em;
            font-size: 13px;
            color: #c27d96;
            text-transform: uppercase;
            font-weight: 600;
        }

        h1 {
            margin: 8px 0;
            font-size: 30px;
            color: #3f1b2b;
        }

        .grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 20px;
            padding: 10px;
        }

        .card {
            background: #fff;
            border-radius: 16px;
            padding: 18px;
            border: 1px solid #f3d9e4;
            box-shadow: 0 6px 18px rgba(0,0,0,0.04);
        }

        .service-name {
            font-size: 18px;
            font-weight: 600;
            color: #aa6f8f;
        }

        .provider-name {
            margin-top: 6px;
            font-size: 14px;
            color: #7a5a6c;
        }

        .price {
            margin-top: 4px;
            font-size: 15px;
            color: #4a3542;
            font-weight: 600;
        }

        .btn {
            display: inline-block;
            margin-top: 12px;
            padding: 8px 16px;
            border-radius: 999px;
            text-decoration: none;
            font-size: 14px;
            background: #d24e7a;
            color: #fff;
        }

        .btn:hover {
            background: #bf426b;
        }
    </style>
</head>

<body>

<div class="header">
    <div class="logo">GLAMCONNECT</div>
    <h1>Browse Services</h1>
</div>

<div class="grid">

    <#list services as s>
        <div class="card">

            <div class="service-name">${s.name}</div>

            <div class="provider-name">
                Provider ID: ${s.providerId}
            </div>

            <div class="price">$${s.price}</div>

            <a href="/customer/provider/${s.providerId}" class="btn">
                View Provider
            </a>
        </div>
    </#list>

</div>

</body>
</html>
