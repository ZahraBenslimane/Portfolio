---
layout: page
permalink: /education/
title: education
description: Degrees, doctoral training, coursework, and academic preparation.
nav: true
nav_order: 3
---

<div class="academic-page">
  <p class="section-kicker">__ Education ________________</p>

  <div class="timeline-stack">
    {% for item in site.data.education %}
    <article class="academic-card academic-card--split">
      <div class="academic-card__meta">
        <span class="meta-badge">{{ item.period }}</span>
        <span>{{ item.location }}</span>
      </div>
      <div class="academic-card__body">
        <h2>{{ item.degree }}</h2>
        <p class="academic-card__institution">{{ item.institution }}</p>
        <p>{{ item.summary }}</p>

        {% if item.focus %}
        <ul class="chip-list">
          {% for focus in item.focus %}
          <li>{{ focus }}</li>
          {% endfor %}
        </ul>
        {% endif %}

        {% if item.courses %}
        <details class="academic-details">
          <summary>Core courses and tools</summary>
          <ul>
            {% for course in item.courses %}
            <li>{{ course }}</li>
            {% endfor %}
          </ul>
        </details>
        {% endif %}

        {% if item.activities %}
        <details class="academic-details">
          <summary>Current activities</summary>
          <ul>
            {% for activity in item.activities %}
            <li>{{ activity }}</li>
            {% endfor %}
          </ul>
        </details>
        {% endif %}
      </div>
    </article>
    {% endfor %}
  </div>
</div>
