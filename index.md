--- 
layout: page 
--- 
{% for post in site.posts limit:1 %}
<div class="next-activity-container" style="background-image: url('{{ post.banner }}')">
  <div class="next-activity-main-info-container">
    <div class="next-activity-main-info-text-content">
      <h2>
        <a class="no-underline-link" href="{{ post.url }} ">Próxima actividad</a>
      </h2>
      <h2>
        <a class="no-underline-link" href="{{ post.url }} ">{{ post.title }}</a>
      </h2>
      <h4>
        <a class="no-underline-link" href="{{ post.url }} ">{{ post.subtitle }}</a>
      </h4>
      <h6>{{ post.content | strip_html | truncatewords: site.numberOfWordsForPostPreview }}
      <a href="{{ post.url }} "> leer más</a>.
      </h6>
      {% include share-buttons.html %}
    </div>
    {% include speakers.html speakers = post.speakers placeUrl = post.placeUrl %}
    {% include related-links.html relatedLinks = post.relatedLinks  numberOfColumns = 5 %}
  </div>
</div>
{% endfor %}