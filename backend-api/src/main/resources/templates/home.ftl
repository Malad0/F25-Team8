<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>GlamConnect | Welcome</title>

    <style>
        body {
            margin: 0;
            padding: 40px;
            background: #fdf2f7;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            text-align: center;
        }

        .logo {
            font-size: 32px;
            font-weight: 700;
            color: #d24e7a;
            margin-bottom: 10px;
        }

        .subtitle {
            color: #7a5a6c;
            margin-bottom: 40px;
        }

        .choice-box {
            display: flex;
            justify-content: center;
            gap: 40px;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 18px;
            width: 260px;
            border: 1px solid #efd3df;
            box-shadow: 0 6px 16px rgba(0,0,0,0.06);
        }

        .card h2 {
            margin-top: 0;
            color: #aa6f8f;
        }

        .btn {
            display: inline-block;
            padding: 12px 22px;
            border-radius: 999px;
            background: #d24e7a;
            color: white;
            text-decoration: none;
            margin-top: 12px;
            font-size: 14px;
        }

        .btn:hover {
            background: #bf426b;
        }
    </style>
</head>

<body>

    <div class="logo">GLAMCONNECT</div>
    <div class="subtitle">Choose how you'd like to enter the site</div>

    <div class="choice-box">
        <div class="card">
            <h2>Customer</h2>
            <p>Book services, view providers, and leave reviews.</p>
            <a class="btn" href="/customer/login">Enter as Customer</a>
        </div>

        <div class="card">
            <h2>Provider</h2>
            <p>Manage services, bookings, and your profile.</p>
            <a class="btn" href="/provider/signin">Enter as Provider</a>
        </div>
    </div>

</body>
</html>
