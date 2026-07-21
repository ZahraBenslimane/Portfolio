---
layout: about
title: about
permalink: /
subtitle: #<a href='#'>Affiliations</a>. Address. Contacts. Moto. Etc.

profile: false

news: False  # includes a list of news items
latest_posts: False  # includes a list of the newest posts
selected_papers: False # includes a list of papers marked as "selected={true}"
social: false  # social icons are shown below the portrait
---

<section class="home-hero">
  <div class="home-hero__copy">
    <p class="home-hero__eyebrow">Ph.D. student · AI for speech and audio · Paris, France</p>
    <h2>Improving speech understanding with neural networks for real-time embedded systems.</h2>
    <p>
      I am Zahra Benslimane, a final-year Ph.D. student working on embedded AI
      for speech processing. My research focuses on neural networks for real-time
      speech enhancement, with an emphasis on binaural and multi-microphone audio,
      low-latency inference, model compression, and resource-constrained deployment.
    </p>

    <p>
      My Ph.D. is part of the REFINED project, <em>REal-time artiFicial INtelligence
      for hEaring aiDs</em>, funded by the French National Research Agency
      (ANR-21-CE19-0043). The project brings together CEA's embedded AI research,
      the <a href="https://www.loria.fr/fr/la-recherche/les-equipes/multispeech/" target="_blank" rel="external nofollow noopener">Multispeech team at LORIA</a>,
      and the <a href="https://www.institut-audition.fr/en/recherche" target="_blank" rel="external nofollow noopener">Hearing Institute</a>
      to develop efficient AI-based hearing-assistance systems that can run on
      real-world embedded hardware.
    </p>
    
    <div class="home-hero__actions">
      <a class="btn-portfolio" href="{{ '/assets/pdf/example_pdf.pdf' | relative_url }}" download><i class="fas fa-file-pdf"></i> Download CV</a>
    </div>
  </div>
  <figure class="home-hero__media">
    <img src="{{ '/assets/img/prof_pic.jpg' | relative_url }}" alt="Portrait of Zahra Benslimane">
    <div class="home-hero__contact">
      <p>{{ site.contact_note }}</p>
      <div class="home-hero__contact-icons" aria-label="Contact and social links">
        {% include social.html %}
      </div>
    </div>
  </figure>
</section>

<section id="publications" class="home-publications-section">
  <p class="section-kicker">__ Publications ______</p>

  <div class="publication-card">
    {% bibliography %}
  </div>
</section>

