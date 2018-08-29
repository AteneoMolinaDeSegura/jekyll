---
layout: page
---
<h1>Próxima actividad</h1>
{% for post in site.posts limit:1 %}
  <h2>{{ post.title }}</h2>
{% endfor %}