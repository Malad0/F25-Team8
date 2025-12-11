<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Browse Providers | GlamConnect</title>
    <style>
        body {
            margin: 0;
            font-family: -apple-system, BlinkMacSystemFont, "SF Pro Text", system-ui, sans-serif;
            background: linear-gradient(180deg, #fdeff4 0%, #f7e6ed 100%);
            padding: 40px 16px;
            display: flex;
            justify-content: center;
        }

        .page {
            max-width: 900px;
            width: 100%;
        }

        h1 {
            margin: 0 0 14px;
            color: #3f1b2b;
            font-size: 26px;
        }

        .subtitle {
            margin: 0 0 24px;
            color: #8a5b6f;
            font-size: 15px;
        }

        .providers-list {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 18px;
        }

        .card {
            background: #fff;
            border-radius: 20px;
            padding: 20px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.08);
            border: 1px solid #f0d3df;
        }

        .name {
            font-size: 20px;
            font-weight: 600;
            color: #aa6f8f;
            margin-bottom: 6px;
        }

        .meta {
            font-size: 14px;
            color: #555;
            margin-bottom: 12px;
        }

        .btn {
            display: inline-block;
            padding: 8px 14px;
            border-radius: 999px;
            background: #d24e7a;
            color: #fff;
            text-decoration: none;
            font-size: 13px;
            font-weight: 500;
        }

        .btn:hover {
            background: #bf426b;
        }
    </style>
</head>
<body>
<div class="page">

    <h1>Browse Glam Providers</h1>
    <p class="subtitle">Find stylists, MUAs, nail techs, and more — click to view their services.</p>

    <div class="providers-list">
        <#list providers as p>
            <div class="card">
                <div class="name">${p.displayName}</div>
                <div class="meta">
                    <div><strong>Category:</strong> ${p.category}</div>
                    <div><strong>Location:</strong> ${p.location}</div>
                </div>

                <a href="/browse/providers/${p.id}" class="btn">View Services</a>
            </div>
        </#list>
    </div>

</div>
</body>
</html>
