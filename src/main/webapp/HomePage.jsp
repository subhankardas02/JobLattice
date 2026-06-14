<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Feed | JobLattice</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="HomePage_style.css">
</head>
<body>

    <nav class="navbar">
        <div class="nav-container">
            <div class="nav-left">
                <div class="logo">JL</div>
                <div class="search-box">
                    <input type="text" placeholder="Search">
                </div>
            </div>
            <div class="nav-right">
    <a href="#" class="nav-item active">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="nav-icon"><path d="M11.47 3.84a.75.75 0 011.06 0l8.69 8.69a.75.75 0 101.06-1.06l-8.689-8.69a2.25 2.25 0 00-3.182 0l-8.69 8.69a.75.75 0 001.061 1.06l8.69-8.69z" /></svg>
        Home
    </a>
    <a href="#" class="nav-item">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="nav-icon"><path d="M4.5 6.375a4.125 4.125 0 118.25 0 4.125 4.125 0 01-8.25 0zM14.25 8.625a3.375 3.375 0 116.75 0 3.375 3.375 0 01-6.75 0zM1.5 19.125a7.125 7.125 0 0114.25 0v.003l-.001.119a.75.75 0 01-.363.63 13.067 13.067 0 01-6.761 1.873c-2.472 0-4.786-.684-6.76-1.873a.75.75 0 01-.364-.63l-.001-.122zM17.25 19.128l-.001.144a2.25 2.25 0 01-.233.96 14.434 14.434 0 005.484-1.104.75.75 0 00.364-.63v-.122a6 6 0 00-7.354-5.825 8.664 8.664 0 011.74 5.577z" /></svg>
        Network
    </a>
    
    <a href="${pageContext.request.contextPath}/WebPage" class="nav-item">
        <svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 24" fill="currentColor" class="nav-icon"><path fill-rule="evenodd" d="M7.5 2.25A2.25 2.25 0 005.25 4.5v1.5H3B1.875 6 .75 7.125v12A1.875 1.875 0 0023 19.125v-12A1.875 1.875 0 0021.375 6H18.75V4.5A2.25 2.25 0 0016.5 2.25h-9zm9 3.75h-9A.75.75 0 016.75 5.25v-1.5a.75.75 0 01.75-.75h9a.75.75 0 01.75.75v1.5a.75.75 0 01-.75.75zM3.75 7.5h16.5a.375.375 0 01.375.375v2.625H3.375V7.875A.375.375 0 013.75 7.5zm18 4.5H2.25v7.125c0 .207.168.375.375.375h18.75a.375.375 0 01.375-.375V12z" clip-rule="evenodd" /></svg>
        Jobs
    </a>
    
    <div class="nav-profile">
        <div class="avatar-animated small-avatar"></div>
    </div>
</div>
        </div>
    </nav>

    <main class="container">
        
        <aside class="left-sidebar">
            <div class="card profile-card">
                <div class="profile-bg-animated"></div>
                
                <div class="avatar-outer-ring">
                    <div class="avatar-animated large-avatar">
                        <c:out value="${empty sessionScope.username ? 'SD' : sessionScope.username.substring(0,2).toUpperCase()}" />
                    </div>
                </div>
                
                <h2><c:out value="${empty sessionScope.username ? 'Subhankar Das' : sessionScope.username}" /></h2>
                <p class="headline">B.Tech IT 28 | Backend Developer | Competitive Programmer</p>
                <p class="location">Greater Kolkata Area</p>
                
                <div class="profile-stats">
                    <div class="stat">
                        <span>Profile viewers</span>
                        <span class="stat-number">162</span>
                    </div>
                </div>
                
                <div class="profile-links">
                    <a href="#">🔖 Saved items</a>
                    <a href="#">👥 Groups</a>
                    <a href="#">📅 Events</a>
                </div>
            </div>
        </aside>

        <section class="main-feed">
            <div class="card create-post">
                <div class="post-input-container">
                    <div class="avatar-animated medium-avatar"></div>
                    <button class="post-input-btn">Start a post</button>
                </div>
                <div class="post-actions">
                    <button class="action-btn">🖼️ Photo</button>
                    <button class="action-btn">🎥 Video</button>
                    <button class="action-btn">📝 Article</button>
                </div>
            </div>

            <div class="card post">
                <div class="post-header">
                    <div class="avatar-animated medium-avatar alt-gradient">NK</div>
                    <div class="post-info">
                        <h3>Niharika Kodavanti</h3>
                        <p>Associate Software Developer Intern @Oracle</p>
                        <p>2w • 🌐</p>
                    </div>
                </div>
                <div class="post-content">
                    <p>A year ago, if someone told me I would be turning down an opportunity at Amazon to join Oracle, I probably wouldn't have believed it...</p>
                    
                    <div class="document-preview-card">
                        <div class="doc-icon-strip"></div>
                        <div class="doc-body">
                            <div class="doc-header-mock">
                                <div class="doc-line long bold"></div>
                                <div class="doc-line short"></div>
                            </div>
                            <div class="doc-content-mock">
                                <div class="doc-block"></div>
                                <div class="doc-line full"></div>
                                <div class="doc-line full"></div>
                                <div class="doc-line long"></div>
                            </div>
                        </div>
                        <div class="doc-footer">
                            <span class="doc-title">Resume_Final_2026.pdf</span>
                            <span class="doc-pages">1 page • PDF</span>
                        </div>
                    </div>
                    
                </div>
                <div class="post-stats">
                    <span>👍 1,204</span>
                    <span>45 comments • 12 reposts</span>
                </div>
                <hr class="divider">
                <div class="post-actions">
                    <button class="action-btn">👍 Like</button>
                    <button class="action-btn">💬 Comment</button>
                    <button class="action-btn">🔁 Repost</button>
                </div>
            </div>
        </section>

        <aside class="right-sidebar">
            <div class="card news-card">
                <h2>JobLattice News</h2>
                <ul class="news-list">
                    <li>
                        <h4>SpaceX shares surge in debut</h4>
                        <p>1d ago • 51,361 readers</p>
                    </li>
                    <li>
                        <h4>Gold, silver ETFs see record outflows</h4>
                        <p>2d ago • 3,605 readers</p>
                    </li>
                </ul>
                <button class="show-more">Show more news ⌄</button>
            </div>
        </aside>

    </main>
</body>
</html>