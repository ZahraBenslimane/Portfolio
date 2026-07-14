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
      This page is set up for peer-reviewed papers, preprints, book chapters, posters,
      code, and project pages. Add BibTeX entries to <code>_bibliography/papers.bib</code>
      and Jekyll Scholar will render them here.
    </p>
    <div class="publication-actions">
      <a class="btn-portfolio" href="{{ '/blog/' | relative_url }}"><i class="fas fa-pen-nib"></i> Research blog</a>
      {% comment %}
      <a class="btn-portfolio btn-portfolio--ghost" href="{{ '/projects/' | relative_url }}"><i class="fas fa-code-branch"></i> Projects</a>
      {% endcomment %}
    </div>
  </div>

  <section class="publication-section">
    <h2>Selected and peer-reviewed work</h2>
    <div class="publication-card">
      {% bibliography %}
    </div>
  </section>

  <aside class="publication-note">
    <strong>Suggested structure:</strong> use <code>abbr</code> for the venue badge,
    <code>pdf</code> for papers, <code>code</code> for repositories,
    <code>website</code> for project pages, and <code>bibtex_show={true}</code>
    when you want a BibTeX toggle.
  </aside>
</div>
