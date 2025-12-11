<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Edit Profile | GlamConnect</title>

    <style>
        body {
            margin: 0;
            padding: 32px;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            background: #fdf2f7;
        }

        .box {
            max-width: 420px;
            margin: 40px auto;
            background: white;
            padding: 28px;
            border-radius: 18px;
            border: 1px solid #efd3df;
            box-shadow: 0 6px 16px rgba(0,0,0,0.08);
        }

        h2 {
            text-align: center;
            margin-bottom: 18px;
            font-size: 26px;
            color: #aa6f8f;
        }

        input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border-radius: 10px;
            border: 1px solid #eac6d3;
            font-size: 15px;
        }

        button {
            width: 100%;
            padding: 12px;
            border-radius: 999px;
            border: none;
            background: #d24e7a;
            color: white;
            cursor: pointer;
            font-size: 15px;
            margin-top: 12px;
        }

        button:hover {
            background: #bf426b;
        }

        .cancel {
            display: block;
            text-align: center;
            margin-top: 14px;
            color: #aa6f8f;
            text-decoration: none;
        }
    </style>
</head>

<body>

<div class="box">
    <h2>Edit Profile</h2>

    <form method="post" action="/customer/profile/update/${customer.id}">
        <input type="text" name="firstName" value="${customer.firstName}" required>
        <input type="text" name="lastName" value="${customer.lastName}" required>
        <input type="email" name="email" value="${customer.email}" required>
        <input type="text" name="phone" value="${customer.phone}" placeholder="Phone">

        <button type="submit">Save Changes</button>
    </form>

    <a href="/customer/profile/${customer.id}" class="cancel">Cancel</a>
</div>

</body>
</html>
