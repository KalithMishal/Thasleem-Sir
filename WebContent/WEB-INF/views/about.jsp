<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="includes/head.jspf" %>
</head>
<body class="page page--about">
<%@ include file="includes/header.jspf" %>
<main id="main" class="main shell" tabindex="-1">
  <section class="hero hero--compact" data-animate>
    <div class="hero-media" style="--hero-image: url('https://images.unsplash.com/photo-1488646953014-85cb44e25828?auto=format&amp;fit=crop&amp;w=1920&amp;q=80');"></div>
    <div class="hero-content">
      <p class="eyebrow">About this demo</p>
      <h1 class="hero-title">MVC, <em>made visible</em>.</h1>
      <p class="hero-lead">Models hold simple Java objects; JSPs render views; servlets receive HTTP requests and forward to the right page.</p>
    </div>
  </section>

  <section class="section" data-animate>
    <div class="about-grid">
      <div class="about-panel">
        <h2>Architecture</h2>
        <ul class="checklist">
          <li><strong>Model:</strong> <code>Inquiry</code> captures form fields after POST.</li>
          <li><strong>View:</strong> JSP pages under <code>WEB-INF/views</code> (not directly accessible by URL).</li>
          <li><strong>Controller:</strong> annotated servlets map clean paths like <code>/contact</code>.</li>
        </ul>
      </div>
      <div class="about-panel about-panel--accent">
        <h2>Assignment checklist</h2>
        <ul class="checklist">
          <li>Minimum four pages — met with Home, Destinations, Experiences, About, plus Contact and Thank-you.</li>
          <li>Servlet-handled form — Contact page POST builds the model and forwards to Thank-you.</li>
          <li>Responsive layout, themed colors, imagery, CSS animation, and JS navigation polish.</li>
        </ul>
        <a class="btn btn-primary btn-block" href="${pageContext.request.contextPath}/contact">Try the form</a>
      </div>
    </div>
  </section>
</main>
<%@ include file="includes/footer.jspf" %>
</body>
</html>
