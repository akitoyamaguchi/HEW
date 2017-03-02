<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
	boolean isLogin;
	if(session.getAttribute("isLogin") != null) {
		isLogin = Boolean.valueOf(session.getAttribute("isLogin").toString() );
	} else {
		isLogin = false;
	}

%>
<header>
  <div class="header_logo">
    <h1><img src="logo/try-on3.png" onclick="location.href='index.jsp'"/></h1>
  </div>
  <div class="header_nav_wrapper">
    <nav class="hdr_navigation_wrapper_first">
      <div class="header_navigation">
        <button onclick="location.href='mypage.jsp'">MYPAGE</button>
        <button onclick="location.href='sitemap.jsp'">SITEMAP</button>
        <button onclick="location.href='inquiry.jsp'">SUPPORT</button>
      </div>
    </nav>
    <nav class="hdr_navigation_wrapper_second">
      <button class="header_button_serch" onclick="location.href='search.jsp'"><img src="submit_btn/search.png" /></button>
      <button class="header_button_useradd" onclick="location.href='member_register.jsp'"><img src="submit_btn/shinki.png" /></button>
      <%if(isLogin) { %>
      <button class="header_button_login" onclick="location.href='UserLogout'"><img src="submit_btn/logout.png" /></button>
      <%} else { %>
      <button class="header_button_login" onclick="location.href='login.jsp'"><img src="submit_btn/login.png" /></button>
      <%} %>
    </nav>
  </div>
</header>