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
    </div>
  </div>
</div>
{% endfor %}