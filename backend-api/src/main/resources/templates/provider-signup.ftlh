<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Sign Up - GlamConnect</title>
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
            box-shadow: 0 18px 40px rgba(0, 0, 0, 0.08);
            padding: 28px 32px 30px;
        }

        .logo {
            letter-spacing: 0.2em;
            font-size: 13px;
            color: #c27d96;
            text-transform: uppercase;
            font-weight: 600;
            margin-bottom: 8px;
        }

        h1 {
            margin: 0 0 8px;
            font-size: 24px;
            color: #3f1b2b;
        }

        p.subtitle {
            margin: 0 0 20px;
            font-size: 14px;
            color: #8a5b6f;
        }

        form {
            margin-top: 8px;
        }

        .field-row {
            display: flex;
            gap: 16px;
        }

        .field {
            margin-bottom: 14px;
            flex: 1;
        }

        label {
            display: block;
            font-size: 13px;
            font-weight: 500;
            color: #5d3547;
            margin-bottom: 4px;
        }

        input[type="text"],
        textarea {
            width: 100%;
            padding: 9px 10px;
            border-radius: 10px;
            border: 1px solid #e4c3d1;
            font-size: 14px;
            font-family: inherit;
            box-sizing: border-box;
        }

        textarea {
            min-height: 70px;
            resize: vertical;
        }

        .actions {
            margin-top: 18px;
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

        .btn-primary:hover {
            background: #bf426b;
        }

        .btn-secondary:hover {
            background: #ffe3ee;
        }
    </style>
</head>
<body>
<div class="card">
    <div class="logo">GLAMCONNECT</div>
    <h1>Create your provider profile</h1>
    <p class="subtitle">Set up your glam business so customers can start booking you.</p>

    <form action="/provider/signup" method="post">
        <div class="field-row">
            <div class="field">
                <label for="displayName">Business / Provider Name</label>
                <input type="text" id="displayName" name="displayName" required>
            </div>
            <div class="field">
                <label for="category">Category</label>
                <input type="text" id="category" name="category" placeholder="Braids, makeup, nails..." required>
            </div>
        </div>

        <div class="field-row">
            <div class="field">
                <label for="location">Location</label>
                <input type="text" id="location" name="location" placeholder="Greensboro, NC">
            </div>
            <div class="field">
                <label for="phone">Phone</label>
                <input type="text" id="phone" name="phone" placeholder="336-555-0111">
            </div>
        </div>

        <div class="field">
            <label for="bio">About You</label>
            <textarea id="bio" name="bio"
                      placeholder="Specializing in soft glam, knotless braids, or natural looks..."></textarea>
        </div>

        <div class="actions">
            <a href="/provider" class="btn btn-secondary" style="text-decoration:none;">Cancel</a>
            <button type="submit" class="btn btn-primary">Create Profile</button>
        </div>
    </form>
</div>
</body>
</html>