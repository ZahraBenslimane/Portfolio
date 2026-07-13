---
layout: page
permalink: /experience/
title: experience
description: Research, industry, and applied engineering experience.
nav: true
nav_order: 4
---

<div class="academic-page">
  <p class="section-kicker">__ Experience _______________</p>

  <div class="timeline-stack">
    {% for item in site.data.experience %}
    <article class="academic-card academic-card--split">
      <div class="academic-card__meta">
        <span class="meta-badge">{{ item.period }}</span>
        <span>{{ item.type }}</span>
      </div>
      <div class="academic-card__body">
        <h2>{{ item.role }}</h2>
        <p class="academic-card__institution">{{ item.organization }} · {{ item.location }}</p>
        <p>{{ item.summary }}</p>

        {% if item.stack %}
        <ul class="chip-list">
          {% for tool in item.stack %}
          <li>{{ tool }}</li>
          {% endfor %}
        </ul>
        {% endif %}

        {% if item.highlights %}
        <details class="academic-details">
          <summary>Read more</summary>
          <ul>
            {% for highlight in item.highlights %}
            <li>{{ highlight }}</li>
            {% endfor %}
          </ul>
        </details>
        {% endif %}
      </div>
    </article>
    {% endfor %}
  </div>
</div>
