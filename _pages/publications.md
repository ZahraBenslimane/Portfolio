---
layout: page
permalink: /publications/
title: publications
description: Papers, preprints, technical reports, and research artifacts.
nav: true
nav_order: 3
---

<div class="academic-page publications-page">
  <p class="section-kicker">__ Publications ________________</p>

  <div class="publication-intro">
    <p>
      Selected peer-reviewed papers and preprints in speech enhancement,
      efficient neural inference, and deployable audio machine learning.
    </p>
    <div class="publication-actions">
      <a class="btn-portfolio" href="{{ '/blog/' | relative_url }}"><i class="fas fa-pen-nib"></i> Research blog</a>
      {% comment %}
      <a class="btn-portfolio btn-portfolio--ghost" href="{{ '/projects/' | relative_url }}"><i class="fas fa-code-branch"></i> Projects</a>
      {% endcomment %}
    </div>
  </div>

  <section class="publication-section">
    <h2>Papers and preprints</h2>
    <div class="publication-card">
      {% bibliography %}
    </div>
  </section>

  <aside class="publication-note">
    Accepted papers, preprints, and under-review manuscripts are listed here with links to
    arXiv, PDFs, and BibTeX entries when available.
  </aside>
</div>
