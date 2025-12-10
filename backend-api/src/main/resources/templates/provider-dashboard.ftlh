<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Provider Dashboard | GlamConnect</title>

    <style>
        /* ----- Overall page ----- */
        body {
            margin: 0;
            padding: 0;
            font-family: system-ui, -apple-system, BlinkMacSystemFont, "Segoe UI", sans-serif;
            background: #fdf6f8; /* soft blush background */
            color: #333;
        }

        .page-wrapper {
            max-width: 960px;
            margin: 40px auto;
            padding: 0 16px;
        }

        /* ----- Header ----- */
        .header {
            text-align: center;
            margin-bottom: 24px;
        }

        .logo-text {
            font-size: 14px;
            letter-spacing: 0.2em;
            text-transform: uppercase;
            color: #b58aa0;
        }

        h1 {
            margin: 6px 0 0;
            font-size: 28px;
            color: #444;
        }

        /* ----- Provider card ----- */
        .provider-card {
            background: #ffffff;
            border-radius: 16px;
            padding: 20px 24px;
            box-shadow: 0 10px 25px rgba(0, 0, 0, 0.05);
            border: 1px solid #f3d9e4;
            margin-bottom: 24px;
        }

        .provider-name {
            font-size: 22px;
            font-weight: 600;
            color: #aa6f8f; /* soft rose accent */
            margin-bottom: 6px;
        }

        .provider-meta {
            font-size: 14px;
            color: #777;
            margin-bottom: 12px;
        }

        .provider-meta span {
            margin-right: 12px;
        }

        .provider-bio-label {
            font-size: 13px;
            font-weight: 600;
            text-transform: uppercase;
            letter-spacing: 0.08em;
            color: #b58aa0;
        }

        .provider-bio {
            margin-top: 4px;
            font-size: 14px;
            line-height: 1.5;
        }

        hr {
            border: none;
            border-top: 1px solid #f1dbe6;
            margin: 24px 0;
        }

        /* ----- Services ----- */
        .section-title {
            font-size: 18px;
            font-weight: 600;
            color: #444;
            margin-bottom: 12px;
        }

        .services-empty {
            font-size: 14px;
            color: #999;
        }

        .services-list {
            list-style: none;
            padding: 0;
            margin: 0;
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
            gap: 16px;
        }

        .service-card {
            background: #fff;
            border-radius: 14px;
            padding: 14px 16px;
            border: 1px solid #f3d9e4;
            box-shadow: 0 6px 18px rgba(0, 0, 0, 0.03);
        }

        .service-header {
            display: flex;
            justify-content: space-between;
            align-items: baseline;
        }

        .service-name {
            font-weight: 600;
            font-size: 15px;
            color: #aa6f8f;
        }

        .service-price {
            font-size: 14px;
            font-weight: 600;
            color: #5f4b57;
        }

        .service-description {
            margin-top: 6px;
            font-size: 13px;
            color: #555;
        }

        /* ----- Footer / tiny nav ----- */
        .footer {
            text-align: center;
            margin-top: 28px;
            font-size: 12px;
            color: #b8a2af;
        }

        .pill {
            display: inline-block;
            padding: 4px 10px;
            border-radius: 999px;
            background: #f8dde9;
            color: #7c5a6c;
            font-size: 11px;
            text-transform: uppercase;
            letter-spacing: 0.08em;
        }
    </style>
</head>
<body>

<div class="page-wrapper">

    <!-- Header -->
    <div class="header">
        <div class="logo-text">GlamConnect</div>
        <h1>Provider Dashboard</h1>
    </div>

    <!-- Provider card -->
    <div class="provider-card">
        <div class="pill">Provider Profile</div>

        <div class="provider-name">
            ${provider.displayName}
        </div>

        <div class="provider-meta">
            <span><strong>Category:</strong> ${provider.category}</span>
            <span><strong>Location:</strong> ${provider.location}</span>
            <span><strong>Phone:</strong> ${provider.phone}</span>
        </div>

        <div class="provider-bio-label">About</div>
        <div class="provider-bio">
            ${provider.bio}
        </div>
    </div>

    <hr>

    <!-- Services section -->
    <div>
        <div class="section-title">Services Offered</div>

        <#if services?has_content>
            <ul class="services-list">
                <#list services as s>
                    <li class="service-card">
                        <div class="service-header">
                            <div class="service-name">${s.name}</div>
                            <div class="service-price">${s.price}</div>
                        </div>
                        <div class="service-description">
                            ${s.description}
                        </div>
                    </li>
                </#list>
            </ul>
        <#else>
            <p class="services-empty">No services found for this provider.</p>
        </#if>
    </div>

    <div class="footer">
        GlamConnect · soft glam, big energy
    </div>

</div>

</body>
</html>
