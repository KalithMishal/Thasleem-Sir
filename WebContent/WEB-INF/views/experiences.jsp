<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="includes/head.jspf" %>
</head>
<body class="page page--experiences">
<%@ include file="includes/header.jspf" %>
<main id="main" class="main shell" tabindex="-1">
  <section class="hero hero--compact" data-animate>
    <div class="hero-media" style="--hero-image: url('https://images.unsplash.com/photo-1464822759023-fed622ff2c3b?auto=format&amp;fit=crop&amp;w=1920&amp;q=80');"></div>
    <div class="hero-content">
      <p class="eyebrow">Experiences</p>
      <h1 class="hero-title">Small moments, <em>high craft</em>.</h1>
      <p class="hero-lead">Animated panels and staggered reveals demonstrate JavaScript-enhanced UI without heavy frameworks.</p>
    </div>
  </section>

  <section class="section" data-animate>
    <div class="timeline">
      <div class="timeline-item" data-stagger>
        <div class="timeline-marker" aria-hidden="true">01</div>
        <div class="timeline-body">
          <h2>Blue-hour city walks</h2>
          <p>Guided routes that avoid crowds — emphasis on sound, texture, and local food stops.</p>
        </div>
      </div>
      <div class="timeline-item" data-stagger>
        <div class="timeline-marker" aria-hidden="true">02</div>
        <div class="timeline-body">
          <h2>Hands-on workshops</h2>
          <p>Ceramics, spice blending, or sailing basics — learn something tangible in half a day.</p>
        </div>
      </div>
      <div class="timeline-item" data-stagger>
        <div class="timeline-marker" aria-hidden="true">03</div>
        <div class="timeline-body">
          <h2>Quiet nature resets</h2>
          <p>Lakeside cabins and forest trails with offline maps and mindful pacing.</p>
        </div>
      </div>
    </div>
  </section>

  <section class="section section--muted" data-animate>
    <div class="quote-block">
      <blockquote>
        <p>“We didn’t need Wi-Fi — we needed windows.”</p>
        <cite>— Horizon Atlas journal</cite>
      </blockquote>
    </div>
  </section>
</main>
<%@ include file="includes/footer.jspf" %>
</body>
</html>
