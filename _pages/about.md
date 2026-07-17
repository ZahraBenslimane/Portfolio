---
layout: about
title: about
permalink: /
subtitle: #<a href='#'>Affiliations</a>. Address. Contacts. Moto. Etc.

profile: false

news: False  # includes a list of news items
latest_posts: False  # includes a list of the newest posts
selected_papers: False # includes a list of papers marked as "selected={true}"
social: true  # includes social icons at the bottom of the page
---

<section class="home-hero">
  <div class="home-hero__copy">
    <p class="home-hero__eyebrow">Ph.D. student · AI for speech and audio · Paris, France</p>
    <h2>Improving speech understanding with neural networks for real-time embedded systems.</h2>
    <p>
      I am Zahra Hafida Benslimane, a Ph.D. student working on neural networks for
      improving speech understanding in real-time embedded systems. My research focuses
      on speech enhancement, binaural audio, efficient inference, and deployable AI for
      resource-constrained audio devices.
    </p>
    <p>
      My background spans smart systems engineering, computer vision, embedded systems,
      industrial AI, and MLOps.
    </p>
    <div class="home-hero__actions">
      <a class="btn-portfolio btn-portfolio--ghost" href="{{ '/education/' | relative_url }}"><i class="fas fa-graduation-cap"></i> Education</a>
      <a class="btn-portfolio" href="{{ '/assets/pdf/example_pdf.pdf' | relative_url }}" download><i class="fas fa-file-pdf"></i> Download CV</a>
    </div>
  </div>
  <figure class="home-hero__media">
    <img src="{{ '/assets/img/prof_pic.jpg' | relative_url }}" alt="Portrait of Zahra Benslimane">
    <figcaption>AI · signal processing · research engineering</figcaption>
  </figure>
</section>

<section id="publications" class="home-publications-section">
  <p class="section-kicker">__ Publications ______</p>

  <div class="publication-card">
    {% bibliography %}
  </div>
</section>

