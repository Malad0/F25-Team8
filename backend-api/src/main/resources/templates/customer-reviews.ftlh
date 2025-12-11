<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>${provider.displayName} | Reviews</title>

    <style>
        body {
            margin: 0;
            padding: 32px;
            font-family: -apple-system, BlinkMacSystemFont, sans-serif;
            background: #fdf2f7;
        }

        .header {
            text-align: center;
            margin-bottom: 30px;
        }

        .logo {
            letter-spacing: 0.18em;
            font-size: 13px;
            text-transform: uppercase;
            color: #c27d96;
            font-weight: 600;
        }

        h1 {
            margin: 10px 0 4px 0;
            font-size: 28px;
            color: #3f1b2b;
        }

        .subtitle {
            color: #7a5a6c;
            font-size: 14px;
            margin-bottom: 20px;
        }

        .review-list {
            max-width: 760px;
            margin: 0 auto;
        }

        .review-card {
            background: #ffffff;
            border: 1px solid #f3d9e4;
            border-radius: 16px;
            padding: 20px;
            margin-bottom: 18px;
            box-shadow: 0 4px 14px rgba(0,0,0,0.05);
        }

        .review-header {
            display: flex;
            justify-content: space-between;
            align-items: center;
        }

        .review-name {
            font-size: 16px;
            font-weight: 600;
            color: #aa6f8f;
        }

        .review-date {
            font-size: 13px;
            color: #7a5a6c;
        }

        .stars {
            color: #d24e7a;
            margin: 6px 0;
            font-size: 15px;
            letter-spacing: 2px;
        }

        .review-text {
            font-size: 15px;
            color: #4a3542;
            margin-top: 6px;
            line-height: 1.45;
        }

        .back-btn {
            display: inline-block;
            margin: 20px auto;
            text-decoration: none;
            padding: 10px 18px;
            border-radius: 999px;
            background: #d24e7a;
            color: white;
            font-size: 14px;
        }

        .back-btn:hover {
            background: #bf426b;
        }
        .write-review-box {
    max-width: 760px;
    margin: 40px auto 0 auto;
    padding: 20px;
    background: #ffffff;
    border: 1px solid #f3d9e4;
    border-radius: 16px;
    box-shadow: 0 4px 14px rgba(0,0,0,0.05);
}

.write-review-box h2 {
    margin-bottom: 12px;
    font-size: 22px;
    color: #aa6f8f;
}

.review-form input,
.review-form select,
.review-form textarea {
    width: 100%;
    padding: 10px;
    margin-bottom: 12px;
    border-radius: 10px;
    border: 1px solid #eac6d3;
    font-size: 15px;
}

.review-form textarea {
    height: 100px;
    resize: none;
}

.review-form button {
    padding: 10px 18px;
    border-radius: 999px;
    background: #d24e7a;
    color: white;
    border: none;
    cursor: pointer;
}

.review-form button:hover {
    background: #bf426b;
}

    </style>
</head>

<body>

<div class="header">
    <div class="logo">GLAMCONNECT</div>
    <h1>Reviews for ${provider.displayName}</h1>
    <div class="subtitle">Read what clients are saying</div>
</div>

<div class="review-list">

    <#list reviews as r>
        <div class="review-card">

            <div class="review-header">
                <div class="review-name">${r[0]}</div>
                <div class="review-date">${r[3]}</div>
            </div>

            <div class="stars">
                <#list 1..r[1]?number as i>★</#list>
            </div>

            <div class="review-text">${r[2]}</div>

        </div>
    </#list>

</div>

<div style="text-align:center;">
    <a class="back-btn" href="/customer/provider/${provider.id}">Back to Provider</a>
</div>
<div class="write-review-box">
    <h2>Leave a Review</h2>

    <form action="/customer/reviews/${provider.id}" method="post" class="review-form">

        <input type="text" name="name" placeholder="Your Name" required>

        <select name="stars" required>
            <option value="">Rating</option>
            <option value="5">★★★★★</option>
            <option value="4">★★★★☆</option>
            <option value="3">★★★☆☆</option>
            <option value="2">★★☆☆☆</option>
            <option value="1">★☆☆☆☆</option>
        </select>

        <textarea name="text" placeholder="Share your experience..." required></textarea>

        <button type="submit">Submit Review</button>
    </form>
</div>

</body>
</html>
