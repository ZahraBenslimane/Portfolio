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
    <p class="home-hero__eyebrow">Ph.D. student · Paris, France</p>
    <h2>Developing efficient neural speech-enhancement systems for real-time embedded devices.</h2>
    <p>
      I am Zahra Benslimane, a final-year Ph.D. student at CEA-LIST working on
      embedded AI for speech processing. I develop binaural and multi-microphone
      speech-enhancement systems, with a focus on low-latency inference, model
      compression, and deployment on resource-constrained hearing-assistance
      devices.
     </p>

   <p>
      My Ph.D. is part of the REFINED project, <em>REal-time artiFicial INtelligence
      for hEaring aiDs</em>, funded by the French National Research Agency. The project brings together the
      Embedded AI Laboratory, within
      <a href="https://hal.science/DSCIN" target="_blank" rel="external nofollow noopener">CEA-LIST</a>,
      the <a href="https://www.loria.fr/fr/la-recherche/les-equipes/multispeech/" target="_blank" rel="external nofollow noopener">Multispeech team at LORIA</a>,
      and the <a href="https://www.institut-audition.fr/en/recherche" target="_blank" rel="external nofollow noopener">Hearing Institute</a>
      to develop efficient AI-based hearing-assistance systems that can run on
      real-world embedded hardware.
     </p>
    
    <div class="home-hero__actions">
      <a class="btn-portfolio" href="{{ '/assets/pdf/CV_zahra_Benslimane.pdf' | relative_url }}" download><i class="fas fa-file-pdf"></i> Download CV</a>
    </div>

  </div>
  <figure class="home-hero__media">
    <img src="{{ '/assets/img/prof_pic5.JPG' | relative_url }}" alt="Portrait of Zahra Benslimane">
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

