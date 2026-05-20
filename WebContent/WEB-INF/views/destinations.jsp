<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="includes/head.jspf" %>
</head>
<body class="page page--destinations">
<%@ include file="includes/header.jspf" %>
<main id="main" class="main shell" tabindex="-1">
  <section class="hero hero--compact" data-animate>
    <div class="hero-media" style="--hero-image: url('https://images.unsplash.com/photo-1476514525535-07fb3b4ae5f1?auto=format&amp;fit=crop&amp;w=1920&amp;q=80');"></div>
    <div class="hero-content">
      <p class="eyebrow">Destinations</p>
      <h1 class="hero-title">Pick a place that <em>feels like a story</em>.</h1>
      <p class="hero-lead">Three showcase cards with hover depth — no backend database; pure presentation layer.</p>
    </div>
  </section>

  <section class="section" data-animate>
    <div class="dest-grid">
      <article class="dest-card">
        <img src="https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?auto=format&amp;fit=crop&amp;w=900&amp;q=80" alt="Canals and historic buildings in Venice" width="900" height="600" loading="lazy" />
        <div class="dest-body">
          <h2>Venice &amp; the lagoon</h2>
          <p>Soft light on water, slow evenings, and architecture that rewards wandering without a map.</p>
          <span class="tag">Europe</span>
        </div>
      </article>
      <article class="dest-card">
        <img src="https://images.unsplash.com/photo-1509316785289-025f5cd946c7?auto=format&amp;fit=crop&amp;w=900&amp;q=80" alt="Sand dunes at sunset" width="900" height="600" loading="lazy" />
        <div class="dest-body">
          <h2>Sahara edge routes</h2>
          <p>Golden horizons, star-filled skies, and the quiet rhythm of travel by day and camp by night.</p>
          <span class="tag">Africa</span>
        </div>
      </article>
      <article class="dest-card">
        <img src="https://images.unsplash.com/photo-1540959733332-eab4deabeeaf?auto=format&amp;fit=crop&amp;w=900&amp;q=80" alt="Tokyo city lights at night" width="900" height="600" loading="lazy" />
        <div class="dest-body">
          <h2>Tokyo after dark</h2>
          <p>Neon alleys, precise transit, and small shops where every detail feels considered.</p>
          <span class="tag">Asia</span>
        </div>
      </article>
    </div>
  </section>
</main>
<%@ include file="includes/footer.jspf" %>
</body>
</html>
