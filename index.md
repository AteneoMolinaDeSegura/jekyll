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
      <div class="share-buttons">
        <div class="a2a_kit a2a_kit_size_32 a2a_default_style">
          <a class="a2a_button_facebook"></a>
          <a class="a2a_button_twitter"></a>
          <a class="a2a_button_whatsapp"></a>
          <a class="a2a_button_email"></a>
        </div>
      </div>
    </div>
    <div class="next-activity-main-info-speakers">
      {% for speaker in post.speakers %}
      <div class="next-activity-speaker-content">
        <div class="next-activity-speaker-content-left">
          <img class="avatar" alt="Speaker Photo" src="{{speaker.photo}}">
        </div>
        <div class="next-activity-speaker-content-right">
          <h4>{{speaker.name}}</h4>
          <h6>{{speaker.bio}}</h6>
        </div>
      </div>
      {% endfor %}
      <div class="next-activity-map-button">
        <a href="{{ post.placeUrl }}" target="_blank">
          <button class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect next-activity-content-button">Cómo llegar</button>
        </a>
      </div>
    </div>
    <div class="next-activity-main-info-related-links">
      <h4> Enlaces sobre el tema:</h4>
      <div class="mdl-grid">
      {% for link in post.relatedLinks %}
        <div class="mdl-cell mdl-cell--4-col related-link-card">
          <i class="material-icons">link</i>
          <a href="{{ link.url }}" target="_blank">{{ link.name }}</a>
        </div>
      {% endfor %}  
      </div>
    </div>
  </div>
</div>
{% endfor %}