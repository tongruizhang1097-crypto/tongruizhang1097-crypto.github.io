---
layout: page
title: projects
permalink: /projects/
description: Selected research and engineering projects by Tongrui Zhang.
nav: true
nav_order: 3
display_categories: [research, engineering]
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">Selected work</div>

<p class="academic-lede">Selected research and engineering projects span radar perception, battery health, and mobile robotics.</p>

<div class="academic-projects">
{% for category in page.display_categories %}
  <h2 id="{{ category }}">{% if category == "research" %}Research projects{% else %}Robotics project{% endif %}</h2>
  {% assign categorized_projects = site.projects | where: "category", category %}
  {% assign sorted_projects = categorized_projects | sort: "importance" %}
  <div class="academic-project-grid">
    {% for project in sorted_projects %}
      <a class="academic-project-card" href="{{ project.url | relative_url }}">
        <div class="academic-project-card-image">
          <img src="{{ project.img | relative_url }}" alt="{{ project.title | escape }} project preview" loading="lazy" decoding="async">
        </div>
        <div class="academic-project-card-body">
          <h3>{{ project.title }}</h3>
          <p>{{ project.description }}</p>
          <span class="academic-project-card-link" aria-hidden="true">View project <span>↗</span></span>
        </div>
      </a>
    {% endfor %}
  </div>
{% endfor %}
</div>
