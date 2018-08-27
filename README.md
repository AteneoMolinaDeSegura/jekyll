# <img src="./art/logo.svg" width="60px;"/> Ateneo Molina de Segura

Repositorio de código de la página web del Ateneo Villa de Molina de Segura [https://ateneomolinadesegura.com](https://ateneomolinadesegura.com).

Este repositorio contiene un sitio web estático generado con [Jekyll](https://jekyllrb.com/). Gestionado como un proyecto open source desde su nacimiento y bajo una [licencia](./LICENSE) GNU General Public License v3.0 este proyecto evolucionará gracias a los miembros de [nuestra organización](https://github.com/orgs/AteneoMolinaDeSegura/people).

Si quieres colaborar en la edición y mantenimiento de este proyecto no dudes en enviarnos tus pull requests o solicitar una invitación a la organización enviando un email a [ateneomolinadesegura@gmail.com](mailto://ateneomolinadesegura@gmail.com).

# Añadir contenido a la web

# Modificar el contenido de la web

# Eliminar contenido de la web

# Ejecutar este proyecto

Si necesitas modificar parte del código fuente que no está relacionado con las publicaciones y tienes que probar las modificaciones de las plantillas o cualquier otro elemento recuerda que puedes hacerlo fácilmente clonando este repositorio, instalando Ruby 2.X y Jekyll. Recuerdas que el contenido se puede añadir y modificar sin ningún tipo de software necesario más que un navegador como Google Chrome o Safari.

```
// Clonar el proyecto
git clone https://github.com/AteneoMolinaDeSegura/ateneomolinadesegura.github.io 
cd ateneomolinadesegura.github.io

// Actualizar Ruby, bundler y jekyll
curl -L https://get.rvm.io | bash -s stable
rvm install ruby-2.4.1
rvm use ruby-2.4.1
rvm --default use 2.4.1
gem install bundler jekyll

// Lanzar el servidor de desarrollo en el puerto 4000
bundle exec jekyll serve
```
