<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
<%@ include file="includes/head.jspf" %>
</head>
<body class="page page--thanks">
<%@ include file="includes/header.jspf" %>
<main id="main" class="main shell" tabindex="-1">
  <section class="section section--thanks" data-animate>
    <div class="thanks-card">
      <div class="thanks-icon" aria-hidden="true">✓</div>
      <h1 class="thanks-title">Thank you, ${inquiry.fullName}!</h1>
      <p class="thanks-lead">Your inquiry was received by the servlet controller and bound to the <strong>Inquiry</strong> model (no database persistence in this assignment build).</p>
      <div class="summary-list">
        <div class="summary-row">
          <div class="summary-k">Email</div>
          <div class="summary-v">${inquiry.email}</div>
        </div>
        <div class="summary-row">
          <div class="summary-k">Destination</div>
          <div class="summary-v">${inquiry.destination}</div>
        </div>
        <div class="summary-row">
          <div class="summary-k">Preferred month</div>
          <div class="summary-v">${empty inquiry.travelMonth ? '—' : inquiry.travelMonth}</div>
        </div>
        <div class="summary-row">
          <div class="summary-k">Notes</div>
          <div class="summary-v">${empty inquiry.message ? '—' : inquiry.message}</div>
        </div>
      </div>
      <div class="thanks-actions">
        <a class="btn btn-primary" href="${pageContext.request.contextPath}/home">Back to home</a>
        <a class="btn btn-ghost" href="${pageContext.request.contextPath}/contact">Send another</a>
      </div>
    </div>
  </section>
</main>
<%@ include file="includes/footer.jspf" %>
</body>
</html>
