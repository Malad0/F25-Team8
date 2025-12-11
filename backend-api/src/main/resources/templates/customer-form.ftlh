<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Create Customer - GlamConnect</title>

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
            max-width: 640px;
            width: 100%;
            border-radius: 24px;
            box-shadow: 0 18px 40px rgba(0,0,0,0.08);
            padding: 32px;
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
            margin: 0 0 12px;
            font-size: 26px;
            color: #3f1b2b;
        }

        p.subtitle {
            margin: 0 0 20px;
            font-size: 14px;
            color: #8a5b6f;
        }

        form {
            margin-top: 10px;
        }

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
            margin-top: 20px;
        }

        .btn {
            padding: 10px 20px;
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
            text-decoration: none;
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
    <h1>Create Customer Profile</h1>
    <p class="subtitle">Add a new customer so they can browse providers and book services.</p>

    <form action="/customers" method="post">

        <div class="field-row">
            <div class="field">
                <label for="firstName">First name</label>
                <input type="text" id="firstName" name="firstName" required>
            </div>

            <div class="field">
                <label for="lastName">Last name</label>
                <input type="text" id="lastName" name="lastName">
            </div>
        </div>

        <div class="field-row">
            <div class="field">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>

            <div class="field">
                <label for="phone">Phone</label>
                <input type="text" id="phone" name="phone">
            </div>
        </div>

        <div class="actions">
            <a href="/customers" class="btn btn-secondary">Cancel</a>
            <button type="submit" class="btn btn-primary">Save Customer</button>
        </div>

    </form>

</div>
</body>
</html>
