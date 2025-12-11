<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Customers - GlamConnect</title>
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
            max-width: 900px;
            width: 100%;
            border-radius: 24px;
            box-shadow: 0 18px 40px rgba(0, 0, 0, 0.08);
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
            margin: 0 0 4px;
            font-size: 24px;
            color: #3f1b2b;
        }

        p.subtitle {
            margin: 0 0 18px;
            font-size: 14px;
            color: #8a5b6f;
        }

        .top-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 12px;
            gap: 12px;
        }

        .count-pill {
            padding: 6px 12px;
            border-radius: 999px;
            background: #fff0f5;
            color: #d24e7a;
            font-size: 13px;
            font-weight: 500;
        }

        .btn-primary {
            padding: 8px 18px;
            border-radius: 999px;
            border: none;
            font-size: 14px;
            font-weight: 500;
            cursor: pointer;
            text-decoration: none;
            background: #d24e7a;
            color: #fff;
        }

        .btn-primary:hover {
            background: #bf426b;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            font-size: 14px;
        }

        th, td {
            padding: 10px 8px;
            text-align: left;
        }

        th {
            font-size: 13px;
            color: #7c5265;
            text-transform: uppercase;
            letter-spacing: 0.04em;
            border-bottom: 1px solid #f0d5e1;
        }

        tr:nth-child(even) { background-color: #fff7fa; }
        tr:nth-child(odd) { background-color: #ffffff; }

        .actions a {
            font-size: 13px;
            margin-right: 8px;
            color: #d24e7a;
            text-decoration: none;
        }

        .actions a:hover {
            text-decoration: underline;
        }

        .empty-state {
            margin-top: 16px;
            padding: 16px;
            border-radius: 14px;
            background: #fff7fa;
            color: #8a5b6f;
            font-size: 14px;
        }
    </style>
</head>

<body>
<div class="card">
    <div class="logo">GLAMCONNECT</div>
    <h1>Customer Dashboard</h1>
    <p class="subtitle">Manage customer profiles.</p>

    <div class="top-row">
        <div class="count-pill">Total customers: ${customers?size}</div>
        <a href="/customers/new" class="btn-primary">Add new customer</a>
    </div>

    <#if customers?size == 0>
        <div class="empty-state">
            No customers yet. Use “Add new customer” to create your first profile.
        </div>
    <#else>
        <table>
            <thead>
            <tr>
                <th>ID</th>
                <th>First</th>
                <th>Last</th>
                <th>Email</th>
                <th>Phone</th>
                <th>Actions</th>
            </tr>
            </thead>

            <tbody>
            <#list customers as c>
                <tr>
                    <td>${c.id}</td>
                    <td>${c.firstName}</td>
                    <td>${c.lastName}</td>
                    <td>${c.email}</td>
                    <td>${c.phone}</td>
                    <td class="actions">
                        <a href="/customers/${c.id}">View</a>
                        <a href="/customers/${c.id}/edit">Edit</a>
                        <a href="/customers/${c.id}/delete"
                           onclick="return confirm('Delete this customer?');">Delete</a>
                    </td>
                </tr>
            </#list>
            </tbody>
        </table>
    </#if>
</div>
</body>
</html>
