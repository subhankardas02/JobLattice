<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>JobLattice | Feed</title>
    <link rel="stylesheet" href="WebPage_style.css">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600&display=swap" rel="stylesheet">
</head>
<body>

    <nav class="navbar glass-effect">
        <div class="nav-content">
            <div class="logo">Job<span>Lattice</span></div>
            <div class="search-bar">
                <input type="text" placeholder="Search for jobs, skills, or companies...">
            </div>
            <div class="nav-profile">
                <div class="avatar-small"></div>
                <span class="nav-username">${username != null ? username : 'Guest'}</span>
            </div>
        </div>
    </nav>

    <div class="container">
        
        <aside class="left-sidebar">
            <div class="profile-card glass-effect">
                <div class="profile-banner"></div>
                <div class="avatar-large"></div>
                <div class="profile-info">
                    <h2>${username}</h2>
                    <p class="headline">Software Engineer | Backend Developer</p>
                </div>
                <div class="profile-stats">
                    <div class="stat-row">
                        <span>Profile viewers</span>
                        <span class="stat-num">128</span>
                    </div>
                    <div class="stat-row">
                        <span>Connections</span>
                        <span class="stat-num">500+</span>
                    </div>
                </div>
            </div>
        </aside>

        <main class="main-feed">
            <div class="create-post glass-effect">
                <div class="avatar-small"></div>
                <input type="text" placeholder="What kind of role are you looking for, ${username}?">
                <button class="btn-primary">Post</button>
            </div>

            <div class="job-post glass-effect">
                <div class="post-header">
                    <div class="company-logo">T</div>
                    <div class="post-meta">
                        <h3>Senior Backend Developer</h3>
                        <p>TechCorp Inc. • Remote</p>
                    </div>
                </div>
                <div class="post-body">
                    <p>We are looking for a passionate developer with strong skills in Java, Servlets, and database management to join our core engineering team.</p>
                    <div class="tags">
                        <span>Java</span>
                        <span>MySQL</span>
                        <span>Backend</span>
                    </div>
                </div>
                <div class="post-actions">
                    <button class="btn-primary">Easy Apply</button>
                    <button class="btn-secondary">Save</button>
                </div>
            </div>
        </main>

        <aside class="right-sidebar">
            <div class="widget glass-effect">
                <h3>Trending Opportunities</h3>
                <ul class="trending-list">
                    <li>
                        <h4>Full Stack Engineer</h4>
                        <p>10,000 actively hiring</p>
                    </li>
                    <li>
                        <h4>Data Scientist</h4>
                        <p>8,500 actively hiring</p>
                    </li>
                    <li>
                        <h4>Cloud Architect</h4>
                        <p>5,200 actively hiring</p>
                    </li>
                </ul>
            </div>
        </aside>

    </div>
</body>
</html>