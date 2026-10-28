---
layout: page
title: projects
permalink: /projects/
description: Research topics organized from verified source scope, without unverified contribution or result claims.
nav: true
nav_order: 3
display_categories: [research, engineering]
horizontal: true
---

<link rel="stylesheet" href="{{ '/assets/css/academic.css' | relative_url }}">

<div class="academic-kicker">Selected work</div>

<p class="academic-lede">Selected research and engineering projects span radar perception, battery health, and mobile robotics.</p>

<div class="projects">
{% for category in page.display_categories %}
  <h2 class="category" id="{{ category }}">{% if category == "research" %}Research projects{% else %}Robotics project{% endif %}</h2>
  {% assign categorized_projects = site.projects | where: "category", category %}
  {% assign sorted_projects = categorized_projects | sort: "importance" %}
  <div class="container">
    <div class="row row-cols-1 row-cols-md-2">
      {% for project in sorted_projects %}
        {% include projects_horizontal.liquid %}
      {% endfor %}
    </div>
  </div>
{% endfor %}
</div>
