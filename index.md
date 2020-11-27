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

<div style="margin-right: 30px; margin-left: 30px;">

## ¿Qué es el Ateneo?

El Ateneo Villa de Molina de Segura es una asociación que comenzó su andadura en Noviembre de 2014 con la voluntad expresa de ser un lugar donde pudieran manifestarse y defenderse todas las ideas y concepciones vitales que asuman los principios y objetivos de la asociación. Estos son nuestra mejor carta de presentación.

El fin esencial que persigue esta asociación es el desarrollo cívico y humanista de las personas:

* El fomento de los cauces legales para la participación ciudadana en los asuntospúblicos de interés general, asumiendo la responsabilidad de sus derechos y deberes ciudadanos, promocionando los valores democráticos y siempre en consonancia con el ánimo no lucrativo que ha de regir esta Asociación.
* La defensa y promoción de los contenidos de la Declaración Universal de los Derechos Humanos, de la Declaración de los Derechos de la Mujer, de la del Niños, de la declaración de los Pueblos a su libre Determinación y en definitiva, de todos aquellos instrumentos internacionales de Derechos Humanos de la ONU como base de convivencia entre hombres y mujeres, libres, iguales y responsables con su entorno.

Son Objetivos del Ateneo:

* La promoción del debate y la búsqueda de alternativas para el desarrollo del pensamiento crítico, la implicación y la participación democrática.
* Ser foro de pensamiento crítico y reflexión sobre la actualidad social,económica, política, cultural, desde la pluralidad, en el marco del respeto a los Derechos Humanos.
* Promocionar la Cultura Popular que carece de vehículos de expresión, compartiendo experiencias culturales locales. Compartir, desde la perspectiva del autor/artista, de una manera altruista su obra o proyecto. El Ateneo le bridaría el cauce y al mismo tiempo promocionaría a esa persona o grupo.
 

**Ateneo Villa de Molina de Segura**
Correo electrónico: [ateneomolinadesegura@gmail.com](mailto://ateneomolinadesegura@gmail.com)

Asociación inscrita en el Reg. de Asociaciones con el nº 12.779/1ª

</div>
