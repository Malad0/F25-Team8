<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GlamConnect | Welcome</title>

    <style>
        body {
            margin: 0;
            font-family: -apple-system, system-ui, BlinkMacSystemFont, sans-serif;
            background: linear-gradient(180deg, #fdeff4 0%, #f7e6ed 100%);
            display: flex;
            justify-content: center;
            padding: 40px 16px;
        }

        .card {
            background: #fff;
            max-width: 700px;
            width: 100%;
            border-radius: 24px;
            box-shadow: 0 18px 40px rgba(0,0,0,0.08);
            padding: 32px;
        }

        .logo {
            letter-spacing: 0.25em;
            font-size: 13px;
            color: #c27d96;
            font-weight: 600;
            text-transform: uppercase;
            margin-bottom: 6px;
        }

        h1 {
            margin: 0;
            font-size: 26px;
            color: #3f1b2b;
        }

        p.subtitle {
            margin-top: 6px;
            font-size: 15px;
            color: #8a5b6f;
        }

        .button-row {
            margin-top: 28px;
            display: flex;
            gap: 14px;
        }

        a.btn {
            text-decoration: none;
            padding: 12px 20px;
            border-radius: 999px;
            font-size: 15px;
            font-weight: 500;
        }

        .btn-primary {
            background: #d24e7a;
            color: #fff;
        }

        .btn-secondary {
            background: #fff0f5;
            border: 1px solid #f0b7cc;
            color: #c54f77;
        }

        .btn-primary:hover {
            background: #bf426b;
        }
    </style>
</head>

<body>

<div class="card">
    <div class="logo">GLAMCONNECT</div>

    <h1>
        Hey, 
        <#if customer.firstName?? && customer.firstName?length gt 0>
            ${customer.firstName?cap_first}
        <#else>
            Customer
        </#if>
        💕
    </h1>

    <p class="subtitle">Ready to book your next glam appointment?</p>

    <div class="button-row">
        <a href="/customer/browse" class="btn btn-primary">Browse Services</a>
        <a href="/customer/profile/${customer.id}" class="btn btn-secondary">My Profile</a>
    </div>
</div>

</body>
</html>
