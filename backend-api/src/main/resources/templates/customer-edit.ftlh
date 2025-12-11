<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Customer - GlamConnect</title>

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
            max-width: 640px;
            width: 100%;
            padding: 32px;
            border-radius: 24px;
            box-shadow: 0 18px 40px rgba(0,0,0,0.08);
            border: 1px solid #f3d9e4;
        }

        .logo {
            text-transform: uppercase;
            letter-spacing: 0.2em;
            font-size: 13px;
            color: #c27d96;
            font-weight: 600;
            margin-bottom: 6px;
        }

        h1 {
            margin: 0 0 12px;
            font-size: 26px;
            color: #3f1b2b;
        }

        p.subtitle {
            margin: 0 0 20px;
            font-size: 14px;
            color: #8a5b6f;
        }

        form { margin-top: 16px; }

        .field-row {
            display: flex;
            gap: 16px;
        }

        .field {
            flex: 1;
            margin-bottom: 16px;
        }

        label {
            display: block;
            margin-bottom: 4px;
            font-size: 13px;
            font-weight: 500;
            color: #5d3547;
        }

        input[type="text"],
        input[type="email"] {
            width: 100%;
            padding: 10px;
            border-radius: 10px;
            border: 1px solid #e4c3d1;
            font-size: 14px;
        }

        .actions {
            display: flex;
            justify-content: flex-end;
            gap: 10px;
            margin-top: 22px;
        }

        .btn {
            padding: 10px 20px;
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

        .btn-primary:hover { background: #bf426b; }
        .btn-secondary:hover { background: #ffe3ee; }
    </style>
</head>

<body>

<div class="card">

    <div class="logo">GLAMCONNECT</div>
    <h1>Edit Customer</h1>
    <p class="subtitle">Update this customer's profile information.</p>

    <form action="/customers/${customer.id}/edit" method="post">

        <div class="field-row">
            <div class="field">
                <label for="firstName">First name</label>
                <input type="text" id="firstName" name="firstName"
                       value="${customer.firstName!}" required>
            </div>

            <div class="field">
                <label for="lastName">Last name</label>
                <input type="text" id="lastName" name="lastName"
                       value="${customer.lastName!}">
            </div>
        </div>

        <div class="field-row">
            <div class="field">
                <label for="email">Email</label>
                <input type="email" id="email" name="email"
                       value="${customer.email!}" required>
            </div>

            <div class="field">
                <label for="phone">Phone</label>
                <input type="text" id="phone" name="phone"
                       value="${customer.phone!}">
            </div>
        </div>

        <div class="actions">
            <a href="/customers/${customer.id}" class="btn btn-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary">Save Changes</button>
        </div>

    </form>

</div>

</body>
</html>
