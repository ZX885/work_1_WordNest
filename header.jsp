<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<header>
    <div class="header-container">
        <div class="logo">WordNest</div>
        <div class="nav-buttons">
            <button class="nav-button"><fmt:message key="page.home.main"/></button>
            <button class="nav-button"><fmt:message key="page.home.subscribes"/></button>
            <button class="nav-button"><fmt:message key="page.home.profile"/></button>
            <form action="${pageContext.request.contextPath}/locale" method="post">
                <button class="nav-button">${sessionScope.lang == 'de_DE' ? 'Deutsch' : 'English'} ▼</button>
                <input type="hidden" name="lang" id="langInput"
                       value="${sessionScope.lang == null ? 'de_DE' : (sessionScope.lang == 'de_DE' ? 'en_US' : 'de_DE')}">
            </form>
        </div>
    </div>
</header>
