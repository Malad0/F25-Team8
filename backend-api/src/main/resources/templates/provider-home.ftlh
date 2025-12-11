<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Home - GlamConnect</title>
    <style>
        body {
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, "SF Pro Text", system-ui, sans-serif;
            background: linear-gradient(180deg, #fdeff4 0%, #f7e6ed 100%);
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding: 40px 16px;
        }

        .card {
            background: #fff;
            max-width: 560px;
            width: 100%;
            border-radius: 24px;
            box-shadow: 0 18px 40px rgba(0, 0, 0, 0.08);
            padding: 32px 32px 28px;
            text-align: center;
        }

        .logo {
            letter-spacing: 0.2em;
            font-size: 13px;
            color: #c27d96;
            text-transform: uppercase;
            font-weight: 600;
            margin-bottom: 10px;
        }

        h1 {
            margin: 0 0 8px;
            font-size: 26px;
            color: #3f1b2b;
        }

        p.subtitle {
            margin: 0 0 24px;
            font-size: 14px;
            color: #8a5b6f;
        }

        .button-row {
            display: flex;
            justify-content: center;
            gap: 12px;
        }

        a.btn {
            display: inline-block;
            padding: 10px 22px;
            border-radius: 999px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
            border: none;
            cursor: pointer;
        }

        a.btn-primary {
            background: #d24e7a;
            color: #fff;
        }

        a.btn-outline {
            background: #fff0f5;
            color: #d24e7a;
            border: 1px solid #f0b7cc;
        }

        a.btn-primary:hover {
            background: #bf426b;
        }

        a.btn-outline:hover {
            background: #ffe3ee;
        }
    </style>
</head>
<body>
<div class="card">
    <div class="logo">GLAMCONNECT</div>
    <h1>Welcome to GlamConnect</h1>
    <p class="subtitle">Your beauty services — powered by smart booking.</p>

    <div class="button-row">
        <!-- these are the important parts -->
        <a href="/provider/signin" class="btn btn-outline">Sign In</a>
        <a href="/provider/signup" class="btn btn-primary">Sign Up</a>
    </div>
</div>
</body>
</html>