
Tal y como ya dejamos claro en la especificación del proyecto, TTC será software libre debido a nuestro principal objetivo al idear esta idea: fomentar la transparencia, el acceso a información, el pensamiento crítico y no olvidar información relevante del pasado. 

Richard Stallman, explica en su libro _Software libre para una sociedad libre_ la importancia de garantizar a los ciudadanos libertades que aporta el software libre como puede ser ejecutar, modificar, estudiar o redistribuir programas modificados. Buscamos adoptar una licencia copyleft, que afianza lo anterior cuando no se añada ninguna clase de restricción a posteriori y no se distribuya de manera privativa. Consideramos estos principios fundamentales, ya que al tratarse de una IA, pensamos que es bastante interesante facilitar el acceso a su codigo, por transparencia como mencionado anteriormente, pero también para que otras personas puedan examinar el funcionamiento e identificar errores que puedan mejorar el proyecto. Es por todo ello que hemos decidido adoptar una licencia *AGPLv3*. A continuación extendemos las razones y explicamos que licencias hemos estudiado pero no hemos elegido.

== Análisis y comparación de las licencias de software actuales
Primero estudiamos la *Licencia Apache 2.0*, licencia de software libre laxa y sin copyleft pero que incluye normas específicas sobre patentes. Tambíen analizamos la *licencia MIT*, su nombre proviene del Instituro Tecnológico de Massachussets, es permisiva y compatible con varias licencias de copyleft. La razón principal por las que hemos decidido descartar estas dos es por la naturaleza informativa de nuestro proyecto. Crremos que la posibilidad de desarrollar versiones privativas podría suponer una desventaja frente a la transparencia. 

Por otro lado, estudiamos la licencia *GNU LGPLv3*, con copyleft más limitado y orientado a bibliotecas software. Consideramos esta una opción interesante a tener en cuenta ya que permite que estas bibliotecas se incorporen a programas privativos solo bajo ciertas condiciones. Finalmente, hemos estudiado *GNU GPLv3* que utiliza un copyleft más fuerte y en caso de distribución de una versión del código modificado debe mantener la misma licencia y permitir acceder al código fuente. Sin embargo, está característica no se aplica cuando las modificaciones se utilizan internamente en un servicio web por ejemplo. Es por ello que tampoco la escogemos y preferimos *AGPLv3*, licencia muy similar a GPLv3 pero que añade la obligación de ofrecer el código fuente correspondiente cuando se modifica el programa y otras personas puedan interactuar con ello a través de Internet, por ejemplo mediante una página web. 

Ponemos el siguiente ejemplo para explicar mejor nuestra decisión: una empresa u organización con intereses políticos podría modificar nuestro código para dar por afirmaciones fiables versiones que en realidad no lo son con sesgos creados para favorecer a algunas figuras políticas. Como en este caso deberán de facilitar el código modificado, desarrolladores u otras personas con conocimientos técnicos podrían analizar las modificaciones y darse cuenta de las posibles manipulaciones. No es una garantía de que esos sesgos o modificaciones con el fin de manipular sean identificados, pero ayuda a esa detección posterior. 












// enlaces que tengo que poner luego en la bibliografia
// https://www.gnu.org/licenses/agpl-3.0.html
// https://www.gnu.org/licenses/gpl-3.0.html
// https://www.gnu.org/licenses/license-recommendations.html
// https://www.gnu.org/philosophy/fsfs/free_software.es.pdf
// 
// 
// 
// 
// 

