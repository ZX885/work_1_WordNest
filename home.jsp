<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>WordNest</title>
    <link rel="stylesheet" href="../../css/mainPageStyle.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
</head>
<body>
<fmt:setLocale value="${sessionScope.lang != null ? sessionScope.lang : (param.lang != null ? param.lang : 'en_Us')}"/>
<fmt:setBundle basename="translations"/>
<div class="background"></div>
<div class="decoration circle1"></div>
<div class="decoration circle2"></div>
<div class="decoration circle3"></div>
<div class="decoration circle4"></div>

<div class="sidebar">
    <div class="sidebar-section">
        <div class="sidebar-title">Menu</div>
        <div class="sidebar-item"><i class="fas fa-home"></i> <fmt:message key="page.home.home"/></div>
        <div class="sidebar-item"><i class="fas fa-compass"></i> <fmt:message key="page.home.research"/></div>
        <div class="sidebar-item"><i class="fas fa-bell"></i> <fmt:message key="page.home.notifications"/></div>
        <div class="sidebar-item"><i class="fas fa-envelope"></i> <fmt:message key="page.home.messages"/></div>
    </div>

    <div class="sidebar-section">
        <div class="sidebar-title">News</div>
        <div class="sidebar-item"><i class="fas fa-newspaper"></i> <fmt:message key="page.home.trends"/></div>
        <div class="sidebar-item"><i class="fas fa-users"></i> <fmt:message key="page.home.recommendations"/></div>
        <div class="sidebar-item"><i class="fas fa-star"></i> <fmt:message key="page.home.popular"/></div>
    </div>

    <div class="sidebar-section">
        <div class="sidebar-title">Profile</div>
        <div class="sidebar-item">
            <form action="${pageContext.request.contextPath}/profile" method="get" class="sidebar-item-form">
                <button type="submit" class="sidebar-item-button">
                    <i class="fas fa-user"></i> <fmt:message key="page.home.profile"/>
                </button>
            </form>
        </div>
        <div class="sidebar-item">
            <form action="${pageContext.request.contextPath}/settings" method="get" class="sidebar-item-form">
                <button type="submit" class="sidebar-item-button">
                    <i class="fas fa-cog"></i> <fmt:message key="page.home.settings"/>
                </button>
            </form>
        </div>
        <div class="sidebar-item">
            <form action="${pageContext.request.contextPath}/logout" method="post" class="sidebar-item-form">
                <button type="submit" class="sidebar-item-button">
                    <i class="fas fa-sign-out-alt"></i> <fmt:message key="page.home.logout"/>
                </button>
            </form>
        </div>
    </div>
</div>

<%@ include file="header.jsp" %>

<div class="content">
    <div class="posts-grid">
        <div class="post">
            <img src="https://picsum.photos/500/500?random=1" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user1</div>
                <div class="post-caption">Это мой первый пост!</div>
            </div>
        </div>

        <div class="post">
            <img src="https://picsum.photos/500/500?random=2" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user2</div>
                <div class="post-caption">Красивый вид сегодня 😍</div>
            </div>
        </div>

        <div class="post">
            <img src="https://picsum.photos/500/500?random=3" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user3</div>
                <div class="post-caption">#путешествия</div>
            </div>
        </div>

        <div class="post">
            <img src="https://picsum.photos/500/500?random=4" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user4</div>
                <div class="post-caption">Кофе и код ☕</div>
            </div>
        </div>

        <div class="post">
            <img src="https://picsum.photos/500/500?random=5" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user5</div>
                <div class="post-caption">Утро начинается с зарядки!</div>
            </div>
        </div>

        <div class="post">
            <img src="https://picsum.photos/500/500?random=6" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user6</div>
                <div class="post-caption">Новый проект готов 🚀</div>
            </div>
        </div>

        <div class="post">
            <img src="https://picsum.photos/500/500?random=5" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user5</div>
                <div class="post-caption">Утро начинается с зарядки!</div>
            </div>
        </div>

        <div class="post">
            <img src="https://picsum.photos/500/500?random=6" alt="Post" class="post-image">
            <div class="post-info">
                <div class="post-username">user6</div>
                <div class="post-caption">Новый проект готов 🚀</div>
            </div>
        </div>
    </div>
</div>

</body>
</html>