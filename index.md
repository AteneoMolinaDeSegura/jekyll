--- 
layout: page 
--- 
{% for post in site.posts limit:1 %}
<div class="next-activity-container" style="background-image: url('{{ post.banner }}')">
  <div class="next-activity-main-info-container">
    <div class="next-activity-main-info-text-content">
      <h1>Próxima actividad</h1>
      <h3>{{ post.title }}</h3>
      <h5>{{ post.subtitle }}</h5>
      <h6>{{ post.content | strip_html | truncatewords: site.numberOfWordsForPostPreview }}</h6>
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