--- 
layout: page 
title: Ateneo Molina de Segura
--- 
{% assign posts_filtered_by_date = site.posts | where_exp: 'post', 'post.eventdate > site.time' %}
{% assign sorted_posts = posts_filtered_by_date | sort: 'eventdate' %}
{% for post in sorted_posts limit : 1 %}
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
      {% include share-buttons.html %}
    </div>
    {% include speakers.html speakers = post.speakers placeUrl = post.placeUrl %}
    {% include related-links.html relatedLinks = post.relatedLinks %}
  </div>
</a>
</div>
{% endfor %}