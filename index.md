--- 
layout: page 
title: Ateneo Molina de Segura
--- 
{% assign activities = site.posts | where:'category', "actividad" %}
{% for post in activities limit:1 %}
<div class="next-activity-container" style="background-image: url('{{ post.banner }}')">
<a class="no-underline-link" href="{{ post.url }} ">
  <div class="next-activity-main-info-container">
    <div class="next-activity-main-info-text-content">
      <h2>
        Próxima actividad
      </h2>
      <h2>
        {{ post.title }}
      </h2>
      <h4>
        {{ post.subtitle }}
      </h4>
      <h6>{{ post.content | strip_html | truncatewords: site.numberOfWordsForPostPreview }}
      <a href="{{ post.url }} "> leer más</a>.
      </h6>
      {% include share-buttons.html %}
    </div>
    {% include speakers.html speakers = post.speakers placeUrl = post.placeUrl %}
    {% include related-links.html relatedLinks = post.relatedLinks %}
  </div>
</a>
</div>
{% endfor %}