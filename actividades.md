---
layout: info 
title: Actividades
---

{% for post in site.posts %}
<div class="activity-card-image mdl-card mdl-shadow--2dp" style="background: url('{{post.banner}}') center / cover;">
  <div class="mdl-card__title mdl-card--expand"></div>
  <div class="mdl-card__actions">
    <a class="no-underline-link" href="{{ post.url }}">
      <span class="activity-card-image__title">
        {{post.title}}
      </span>
      <br>
      <span class="activity-card-image__subtitle">
        {{post.subtitle}}
      </span>
    </a>
  </div>
</div>
{% endfor %}

