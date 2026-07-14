---
layout: page
permalink: /teaching/
title: teaching
description: Teaching, mentoring, tutorials, and course materials.
nav: false
nav_order: 5
published: false
---

<div class="academic-page">
  <p class="section-kicker">__ Teaching ___________________</p>

  <div class="timeline-stack">
    {% for item in site.data.teaching %}
    <article class="academic-card">
      <div class="academic-card__meta">
        <span class="meta-badge">{{ item.period }}</span>
        <span>{{ item.role }}</span>
      </div>
      <div class="academic-card__body">
        <h2>{{ item.title }}</h2>
        <p class="academic-card__institution">{{ item.institution }}</p>
        <p>{{ item.description }}</p>
        {% if item.topics %}
        <ul class="chip-list">
          {% for topic in item.topics %}
          <li>{{ topic }}</li>
          {% endfor %}
        </ul>
        {% endif %}
      </div>
    </article>
    {% endfor %}
  </div>
</div>
