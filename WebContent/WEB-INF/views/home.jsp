<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="includes/head.jspf" %>
</head>
<body class="page page--home">
<%@ include file="includes/header.jspf" %>
<main id="main" class="main shell" tabindex="-1">
  <section class="hero hero--home" data-animate>
    <div class="hero-media" style="--hero-image: url('https://images.unsplash.com/photo-1469854523086-cc02fe5d8800?auto=format&amp;fit=crop&amp;w=1920&amp;q=80');"></div>
    <div class="hero-content">
      <p class="eyebrow">Discover · Wander · Belong</p>
      <h1 class="hero-title">Roads were made for journeys, <em>not arrivals</em>.</h1>
      <p class="hero-lead">A calm, modern travel experience — clear navigation, responsive layout, and smooth motion built with JSP views and servlet controllers.</p>
      <div class="hero-actions">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/destinations">Explore destinations</a>
        <a class="btn btn-ghost" href="${pageContext.request.contextPath}/contact">Start planning</a>
      </div>
    </div>
  </section>

  <section class="section" data-animate>
    <div class="section-header">
      <h2>Why travelers choose us</h2>
      <p class="section-sub">Polished UI, readable typography, and intentional spacing — assignment focus on user experience.</p>
    </div>
    <div class="card-grid">
      <article class="card card--lift">
        <div class="card-icon" aria-hidden="true">◎</div>
        <h3>Effortless navigation</h3>
        <p>Servlets route every page; you always land in a consistent shell with the same header and footer.</p>
      </article>
      <article class="card card--lift">
        <div class="card-icon" aria-hidden="true">◇</div>
        <h3>Responsive by design</h3>
        <p>Fluid grids, touch-friendly targets, and a collapsible menu for smaller screens.</p>
      </article>
      <article class="card card--lift">
        <div class="card-icon" aria-hidden="true">✦</div>
        <h3>Motion with purpose</h3>
        <p>CSS transitions on cards, buttons, and the hero banner create a lively but professional feel.</p>
      </article>
    </div>
  </section>

  <section class="section section--banner" data-animate>
    <div class="banner-split">
      <div class="banner-media" style="--banner-image: url('https://images.unsplash.com/photo-1507525428034-b723cf961d3e?auto=format&amp;fit=crop&amp;w=1200&amp;q=80');"></div>
      <div class="banner-copy">
        <h2>Coastal mornings, mountain afternoons</h2>
        <p>Imagery and color work together to set the mood. This block uses a split layout that stacks gracefully on mobile.</p>
        <a class="text-link" href="${pageContext.request.contextPath}/experiences">See curated experiences →</a>
      </div>
    </div>
  </section>
</main>
<%@ include file="includes/footer.jspf" %>
</body>
</html>
