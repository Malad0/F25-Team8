<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${provider.displayName} | GlamConnect</title>

    <style>
        body {
            margin: 0;
            background: #fdf2f7;
            font-family: -apple-system, system-ui, BlinkMacSystemFont, sans-serif;
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

        .provider-card {
            background: #fff;
            border-radius: 16px;
            padding: 20px;
            border: 1px solid #f3d9e4;
            box-shadow: 0 6px 18px rgba(0,0,0,0.04);
            max-width: 600px;
            margin: 0 auto 30px;
        }

        .provider-meta {
            font-size: 16px;
            color: #4a3542;
            line-height: 1.6;
        }

        .section-title {
            margin-top: 35px;
            font-size: 24px;
            font-weight: 700;
            color: #7a2e4e;
            text-align: center;
            margin-bottom: 20px;
        }

        .service-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 20px;
        }

        .service-card {
            background: white;
            padding: 18px;
            border-radius: 16px;
            border: 1px solid #f3d9e4;
            box-shadow: 0 6px 18px rgba(0,0,0,0.04);
        }

        .service-name {
            font-size: 18px;
            font-weight: 600;
            color: #aa6f8f;
        }

        .price {
            margin-top: 5px;
            font-size: 16px;
            font-weight: 600;
            color: #4a3542;
        }

        .duration {
            margin-top: 5px;
            font-size: 14px;
            color: #7a5a6c;
        }

        .btn {
            display: inline-block;
            margin-top: 12px;
            padding: 8px 16px;
            border-radius: 999px;
            text-decoration: none;
            background: #d24e7a;
            color: white;
            font-size: 14px;
        }

        .btn:hover {
            background: #bf426b;
        }
    </style>
</head>

<body>

<div class="header">
    <div class="logo">GLAMCONNECT</div>
    <h1>${provider.displayName}</h1>
</div>

<div class="provider-card">
    <div class="provider-meta">
        <strong>Bio:</strong> ${provider.bio} <br>
        <strong>Category:</strong> ${provider.category} <br>
        <strong>Phone:</strong> ${provider.phone} <br>
        <strong>Location:</strong> ${provider.location}
    </div>
</div>

<div class="section-title">Services Offered</div>

<div class="service-grid">
    <#list services as s>
        <div class="service-card">
            <div class="service-name">${s.name}</div>
            <div class="price">$${s.price}</div>
            <div class="duration">${s.durationMinutes} minutes</div>

            <a href="/customer/book/${s.id}" class="btn">Book Now</a>
        </div>
    </#list>
</div>

</body>
</html>
