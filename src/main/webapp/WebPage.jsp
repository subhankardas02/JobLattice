<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Job Board Portal</title>
    <style>
        :root {
            --bg-color: #0f172a;
            --card-bg: rgba(255, 255, 255, 0.05);
            --card-border: rgba(255, 255, 255, 0.1);
            --text-main: #f8fafc;
            --text-sub: #cbd5e1;
            --accent: #38bdf8;
        }

        body {
            background-color: var(--bg-color);
            color: var(--text-main);
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 2rem;
            min-height: 100vh;
        }

        .header {
            text-align: center;
            margin-bottom: 3rem;
        }

        .header h1 {
            font-size: 2.5rem;
            font-weight: 700;
            margin: 0;
            background: linear-gradient(to right, #38bdf8, #818cf8);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }

        /* The Responsive Grid Container */
        .job-grid {
            display: grid;
            grid-template-columns: repeat(auto-fill, minmax(320px, 1fr));
            gap: 2rem;
            max-width: 1200px;
            margin: 0 auto;
        }

        /* The Glassmorphism Card Shape */
        .job-card {
            background: var(--card-bg);
            backdrop-filter: blur(12px);
            -webkit-backdrop-filter: blur(12px);
            border: 1px solid var(--card-border);
            border-radius: 16px;
            padding: 2rem;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            display: flex;
            flex-direction: column;
            justify-content: space-between;
        }

        .job-card:hover {
            transform: translateY(-8px);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.3);
            border: 1px solid rgba(255, 255, 255, 0.2);
        }

        .job-title {
            font-size: 1.4rem;
            font-weight: 600;
            margin: 0 0 0.5rem 0;
            color: var(--accent);
        }

        .company-name {
            font-size: 1rem;
            color: var(--text-sub);
            margin-bottom: 1.5rem;
            display: flex;
            align-items: center;
            gap: 0.5rem;
        }

        .job-tags {
            display: flex;
            flex-wrap: wrap;
            gap: 0.75rem;
            margin-top: auto;
        }

        .tag {
            background: rgba(56, 189, 248, 0.15);
            color: var(--accent);
            padding: 0.4rem 1rem;
            border-radius: 20px;
            font-size: 0.85rem;
            font-weight: 500;
            letter-spacing: 0.5px;
        }
    </style>
</head>
<body>
	<h1>Welcome, ${username}</h1>
    <div class="header">
        <h1>Discover Opportunities</h1>
        <p style="color: var(--text-sub);">Find your next big role below</p>
    </div>

    <div class="job-grid">
        <c:forEach var="job" items="${jobList}">
            
            <div class="job-card">
                <div>
                    <h2 class="job-title">${job.title}</h2>
                    <div class="company-name">
                        🏢 ${job.companyName}
                    </div>
                </div>
                
                <div class="job-tags">
                    <span class="tag">📍 ${job.location}</span>
                    <span class="tag">💼 ${job.employmentType}</span>
                </div>
            </div>

        </c:forEach>
    </div>

</body>
</html>