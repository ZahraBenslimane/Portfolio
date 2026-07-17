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
    <h2>Building machine learning systems that listen carefully and run efficiently.</h2>
    <p>
      I am Zahra Hafida Benslimane, a Ph.D. student working at the intersection of
      audio signal processing, deep learning, and deployable AI. My background spans
      smart systems engineering, computer vision, embedded systems, and industrial AI.
    </p>
    <div class="home-hero__actions">
      <a class="btn-portfolio" href="#publications"><i class="fas fa-book-open"></i> Publications</a>
      <a class="btn-portfolio btn-portfolio--ghost" href="{{ '/education/' | relative_url }}"><i class="fas fa-graduation-cap"></i> Education</a>
      <a class="btn-portfolio btn-portfolio--ghost" href="{{ '/assets/pdf/example_pdf.pdf' | relative_url }}" download><i class="fas fa-file-pdf"></i> Download CV</a>
    </div>
  </div>
  <figure class="home-hero__media">
    <img src="{{ '/assets/img/prof_pic.jpg' | relative_url }}" alt="Portrait of Zahra Benslimane">
    <figcaption>AI · signal processing · research engineering</figcaption>
  </figure>
</section>

<section class="current-research-card" aria-label="Current research">
  <div class="current-research-card__meta">
    <span>Currently working on</span>
  </div>
  <div class="current-research-card__body">
    <p class="section-kicker">__ Current Research ______</p>
    <h3>Real-time distributed binaural speech enhancement for low-power hearing-aid devices.</h3>
    <p>
      My Ph.D. research explores how efficient neural models can improve speech enhancement
      while staying practical for real-time, resource-constrained audio devices.
    </p>
    <ul class="current-research-card__chips">
      <li>Speech enhancement</li>
      <li>Binaural audio</li>
      <li>Quantization</li>
      <li>Low-power AI</li>
    </ul>
  </div>
</section>

<section id="publications" class="home-publications-section">
  <p class="section-kicker">__ Publications ______</p>

  <div class="publication-card">
    {% bibliography %}
  </div>
</section>

