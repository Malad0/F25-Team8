<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Book Service | GlamConnect</title>

    <style>
        body {
            margin: 0;
            font-family: -apple-system, system-ui, BlinkMacSystemFont, sans-serif;
            background: #fdf2f7;
            display: flex;
            justify-content: center;
            align-items: flex-start;
            min-height: 100vh;
            padding: 40px 16px;
        }

        .card {
            background: #fff;
            max-width: 520px;
            width: 100%;
            border-radius: 24px;
            box-shadow: 0 18px 40px rgba(0,0,0,0.08);
            padding: 28px 32px 26px;
        }

        .logo {
            letter-spacing: 0.2em;
            font-size: 13px;
            color: #c27d96;
            text-transform: uppercase;
            font-weight: 600;
            margin-bottom: 6px;
        }

        h1 {
            margin: 0 0 10px;
            font-size: 22px;
            color: #3f1b2b;
        }

        p.subtitle {
            margin: 0 0 16px;
            font-size: 14px;
            color: #8a5b6f;
        }

        .service-info {
            margin-bottom: 18px;
            font-size: 14px;
            color: #4a3542;
        }

        .service-info div {
            margin-bottom: 4px;
        }

        .label {
            font-size: 13px;
            font-weight: 500;
            color: #5d3547;
            margin-bottom: 4px;
        }

        input[type="date"],
        input[type="time"] {
            width: 100%;
            padding: 9px 10px;
            border-radius: 10px;
            border: 1px solid #e4c3d1;
            font-size: 14px;
            font-family: inherit;
            box-sizing: border-box;
            margin-bottom: 12px;
        }

        .actions {
            margin-top: 12px;
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        .btn {
            padding: 9px 18px;
            border-radius: 999px;
            border: none;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
        }

        .btn-secondary {
            background: #fff0f5;
            color: #d24e7a;
            border: 1px solid #f0b7cc;
        }

        .btn-primary {
            background: #d24e7a;
            color: #fff;
        }

        .btn-primary:hover { background: #bf426b; }
        .btn-secondary:hover { background: #ffe3ee; }

        .message {
            margin-top: 14px;
            padding: 10px 12px;
            border-radius: 12px;
            background: #e6f8eb;
            color: #276749;
            font-size: 13px;
        }
    </style>
</head>
<body>

<div class="card">
    <div class="logo">GLAMCONNECT</div>
    <h1>Book this service</h1>
    <p class="subtitle">Lock in your glam appointment in just a few clicks.</p>

    <!-- Service summary -->
    <div class="service-info">
        <div><strong>Service:</strong> ${service.name}</div>
        <div><strong>Price:</strong> $${service.price}</div>
        <div><strong>Duration:</strong> ${service.durationMinutes} minutes</div>
        <div><strong>Category:</strong> ${service.category}</div>
    </div>

    <!-- Booking form -->
<form action="/customer/book/confirm" method="get">
    <input type="hidden" name="serviceId" value="${service.id}">
        <div>
            <div class="label">Choose date</div>
            <input type="date" name="date" required>
        </div>

        <div>
            <div class="label">Choose time</div>
            <input type="time" name="time" required>
        </div>

        <div class="actions">
            <a href="/customer/browse" class="btn btn-secondary" style="text-decoration:none;">Back</a>
            <button type="submit" class="btn btn-primary">Confirm booking</button>
        </div>
    </form>

    <#if message??>
    <div class="message">
        ${message}
    </div>

    <div style="margin-top: 16px; text-align:center;">
        <a href="/customer/reviews/${providerId}"
           style="
               background:#d24e7a;
               color:white;
               padding:10px 18px;
               border-radius:999px;
               text-decoration:none;
               font-size:14px;
               display:inline-block;
           ">
           Leave a Review
        </a>
    </div>
</#if>

</div>

</body>
</html>
