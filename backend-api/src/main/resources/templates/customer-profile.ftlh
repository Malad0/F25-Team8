<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>My Profile | GlamConnect</title>

    <style>
        body {
            margin: 0;
            padding: 40px;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            background: #fdf2f7;
            display: flex;
            justify-content: center;
        }

        .card {
            background: white;
            padding: 30px;
            border-radius: 20px;
            width: 400px;
            box-shadow: 0 6px 18px rgba(0,0,0,0.07);
            text-align: center;
        }

        .avatar {
            width: 100px;
            height: 100px;
            background: #ffe3ef;
            border-radius: 50%;
            margin: 0 auto 15px;
        }

        h2 {
            margin: 10px 0;
            color: #aa6f8f;
        }

        .info {
            text-align: left;
            margin-top: 20px;
            font-size: 15px;
        }

        .info div {
            margin-bottom: 10px;
        }

        .btn {
            display: block;
            margin: 20px auto 0;
            padding: 10px 18px;
            border-radius: 999px;
            background: #d24e7a;
            color: white;
            text-decoration: none;
            width: fit-content;
        }

        .btn:hover {
            background: #bf426b;
        }
    </style>
</head>

<body>

<div class="card">
    <div class="avatar"></div>

    <h2>${customer.firstName?cap_first} ${customer.lastName?cap_first}</h2>

    <div class="info">
        <div><strong>Email:</strong> ${customer.email}</div>
        <div><strong>Phone:</strong> ${customer.phone!""}</div>
    </div>

    <a class="btn" href="/customer/home/${customer.id}">Back to Home</a>
    <a href="/customer/profile/edit/${customer.id}" class="btn btn-primary">Edit Profile</a>

</div>

</body>
</html>
