<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="includes/head.jspf" %>
</head>
<body class="page page--contact">
<%@ include file="includes/header.jspf" %>
<main id="main" class="main shell" tabindex="-1">
  <section class="hero hero--compact" data-animate>
    <div class="hero-media" style="--hero-image: url('https://images.unsplash.com/photo-1436491865332-7a61a109cc05?auto=format&amp;fit=crop&amp;w=1920&amp;q=80');"></div>
    <div class="hero-content">
      <p class="eyebrow">Contact</p>
      <h1 class="hero-title">Tell us where you want <em>to go next</em>.</h1>
      <p class="hero-lead">Submit the form — a servlet handles POST, populates the model, and shows a confirmation view.</p>
    </div>
  </section>

  <section class="section section--form" data-animate>
    <form class="inquiry-form" method="post" action="${pageContext.request.contextPath}/contact" novalidate>
      <div class="form-grid">
        <div class="field">
          <label for="fullName">Full name</label>
          <input id="fullName" name="fullName" type="text" autocomplete="name" required placeholder="Amina Rahman" />
        </div>
        <div class="field">
          <label for="email">Email</label>
          <input id="email" name="email" type="email" autocomplete="email" required placeholder="you@example.com" />
        </div>
        <div class="field">
          <label for="destination">Destination interest</label>
          <select id="destination" name="destination" required>
            <option value="" disabled selected>Select one</option>
            <option>Venice &amp; lagoon</option>
            <option>Sahara edge routes</option>
            <option>Tokyo after dark</option>
            <option>Surprise me</option>
          </select>
        </div>
        <div class="field">
          <label for="travelMonth">Preferred month</label>
          <input id="travelMonth" name="travelMonth" type="month" />
        </div>
        <div class="field field--full">
          <label for="message">Notes</label>
          <textarea id="message" name="message" rows="5" placeholder="Travel style, budget range, accessibility needs…"></textarea>
        </div>
      </div>
      <div class="form-actions">
        <button type="submit" class="btn btn-primary">Send inquiry</button>
        <a class="btn btn-ghost" href="${pageContext.request.contextPath}/home">Cancel</a>
      </div>
    </form>
  </section>
</main>
<%@ include file="includes/footer.jspf" %>
</body>
</html>
