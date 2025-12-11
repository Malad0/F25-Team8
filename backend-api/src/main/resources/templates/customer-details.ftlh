<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customer Details - GlamConnect</title>

    <style>
        body {
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, "SF Pro Text", system-ui, sans-serif;
            background: #fdf6f8;
            display: flex;
            justify-content: center;
            padding: 40px 16px;
        }

        .card {
            background: #fff;
            max-width: 560px;
            width: 100%;
            padding: 32px;
            border-radius: 24px;
            box-shadow: 0 18px 40px rgba(0,0,0,0.08);
            border: 1px solid #f3d9e4;
        }

        .logo {
            text-transform: uppercase;
            font-size: 13px;
            letter-spacing: 0.2em;
            color: #c27d96;
            font-weight: 600;
            margin-bottom: 6px;
        }

        h1 {
            margin: 0 0 12px;
            font-size: 26px;
            color: #3f1b2b;
        }

        .subtitle {
            color: #8a5b6f;
            margin-bottom: 24px;
            font-size: 14px;
        }

        .field {
            margin-bottom: 14px;
        }

        .label {
            font-size: 12px;
            color: #9a6a7d;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            margin-bottom: 3px;
        }

        .value {
            font-size: 15px;
            color: #3f1b2b;
        }

        .actions {
            margin-top: 24px;
            display: flex;
            justify-content: flex-end;
            gap: 10px;
        }

        .btn {
            padding: 10px 18px;
            border-radius: 999px;
            text-decoration: none;
            font-size: 14px;
            font-weight: 500;
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

        .btn-danger {
            background: #7c1633;
            color: #fff;
        }

        .btn-primary:hover { background: #bf426b; }
        .btn-secondary:hover { background: #ffe3ee; }
        .btn-danger:hover { background: #651127; }
    </style>
</head>

<body>

<div class="card">

    <div class="logo">GLAMCONNECT</div>

    <h1>${customer.firstName!} ${customer.lastName!}</h1>
    <div class="subtitle">Customer profile details</div>

    <div class="field">
        <div class="label">Customer ID</div>
        <div class="value">${customer.id}</div>
    </div>

    <div class="field">
        <div class="label">Email</div>
        <div class="value">${customer.email!'-'}</div>
    </div>

    <div class="field">
        <div class="label">Phone</div>
        <div class="value">${customer.phone!'-'}</div>
    </div>

    <div class="actions">
        <a href="/customers" class="btn btn-secondary">Back</a>
        <a href="/customers/${customer.id}/edit" class="btn btn-primary">Edit</a>
        <a href="/customers/${customer.id}/delete"
           class="btn btn-danger"
           onclick="return confirm('Delete this customer?');">Delete</a>
    </div>

</div>

</body>
</html>
