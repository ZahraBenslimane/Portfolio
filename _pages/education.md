---
layout: page
permalink: /education/
title: education
description: Degrees, doctoral training, coursework, and academic projects.
nav: true
nav_order: 1
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

        {% if item.courses or item.details or item.activities %}
        {% assign degree_index = forloop.index0 %}
        <div class="academic-topic-tabs" aria-label="{{ item.degree }} details">
          {% if item.courses %}
          <input class="academic-topic-input" type="radio" name="education-topic-{{ degree_index }}" id="education-topic-{{ degree_index }}-core" checked>
          {% endif %}

          {% if item.details %}
          {% for detail in item.details %}
          <input class="academic-topic-input" type="radio" name="education-topic-{{ degree_index }}" id="education-topic-{{ degree_index }}-detail-{{ forloop.index0 }}"{% unless item.courses %}{% if forloop.first %} checked{% endif %}{% endunless %}>
          {% endfor %}
          {% endif %}

          {% if item.activities %}
          <input class="academic-topic-input" type="radio" name="education-topic-{{ degree_index }}" id="education-topic-{{ degree_index }}-activities"{% unless item.courses or item.details %} checked{% endunless %}>
          {% endif %}

          <div class="academic-topic-buttons">
            {% if item.courses %}
            <label class="academic-topic-button" for="education-topic-{{ degree_index }}-core">Core topics and tools</label>
            {% endif %}

            {% if item.details %}
            {% for detail in item.details %}
            <label class="academic-topic-button" for="education-topic-{{ degree_index }}-detail-{{ forloop.index0 }}">{{ detail.title }}</label>
            {% endfor %}
            {% endif %}

            {% if item.activities %}
            <label class="academic-topic-button" for="education-topic-{{ degree_index }}-activities">Current activities</label>
            {% endif %}
          </div>

          <div class="academic-topic-panels">
            {% if item.courses %}
            <section class="academic-topic-panel">
              <h3>Core topics and tools</h3>
              <ul>
                {% for course in item.courses %}
                <li>{{ course }}</li>
                {% endfor %}
              </ul>
            </section>
            {% endif %}

            {% if item.details %}
            {% for detail in item.details %}
            <section class="academic-topic-panel">
              <h3>{{ detail.title }}</h3>
              <ul>
                {% for line in detail.items %}
                <li>{{ line }}</li>
                {% endfor %}
              </ul>
            </section>
            {% endfor %}
            {% endif %}

            {% if item.activities %}
            <section class="academic-topic-panel">
              <h3>Current activities</h3>
              <ul>
                {% for activity in item.activities %}
                <li>{{ activity }}</li>
                {% endfor %}
              </ul>
            </section>
            {% endif %}
          </div>
        </div>
        {% endif %}
      </div>
    </article>
    {% endfor %}
  </div>

  <section class="academic-section">
    <p class="section-kicker">__ Academic Projects ________</p>
    <div class="timeline-stack">
      {% for project in site.data.academic_projects %}
      <article class="academic-card academic-card--split">
        <div class="academic-card__meta">
          <span class="meta-badge">{{ project.period }}</span>
          <span>Project</span>
        </div>
        <div class="academic-card__body">
          <h2>
            {% if project.link %}
            <a href="{{ project.link }}" target="_blank" rel="external nofollow noopener">{{ project.title }}</a>
            {% else %}
            {{ project.title }}
            {% endif %}
          </h2>
          <p>{{ project.summary }}</p>

          {% if project.stack %}
          <ul class="chip-list">
            {% for item in project.stack %}
            <li>{{ item }}</li>
            {% endfor %}
          </ul>
          {% endif %}
        </div>
      </article>
      {% endfor %}
    </div>
  </section>
</div>
