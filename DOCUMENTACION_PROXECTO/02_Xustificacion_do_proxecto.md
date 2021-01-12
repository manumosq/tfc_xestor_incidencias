# 2. Xustificación do proxecto:

A idea deste proxecto xurdiu despois de traballar tanto como traballador por conta propia como por conta allea, en empresas adicadas á realización de traballos maioritariamente para terceiros.

Normalmente os traballos a realizar son intervencións en clientes de terceiros nas que, máis que ter un control exhaustivo do que ten cada cliente, da súa ubicación, dos problemas que ten, etc, prima ter simplemente unha ferramenta na que se indiquen os datos básicos necesarios para poder realizar o traballo, o tempo dedicado, e o parte/xustificante de traballo, de xeito que a información estea accesible de maneira sinxela e simultánea tanto a un administrador que vai engadindo as intervencións como ao técnico que ten que acudir a solventalas.

## 2.1. Obxectivos:

Os obxectivos xerais que se pretenden acadar son:

- Normalizar a información da que se dispón e tratala de forma ordeada.
- Ter unha base de datos relacional que almacene os datos necesarios.
- Ter os formularios necesarios para almacenar todo o necesario na base de datos.
- Ter unha páxina na que os técnicos poidan ver os traballos que teñen asignados e poidan acceder fácilmente á información do traballo a realizar.
- Ter a posibilidade de envío de notificacións dende a propia aplicación, por exemplo, cando se rexistre unha incidencia que se envíe un correo ao peticionario có número de incidencia que se asignou, cando se asigne a un técnico que se envíe un correo electrónico ao técnico coa información...
- Ter a posibilidade de descargar listados de traballos para o seu análise.
- Ter unha aplicación modulable, que se poida seguir ampliando con novas funcionalidades có paso do tempo.

Pódense enumerar tamén algúns obxectivos persoais para a realización deste proxecto:

- Aprender o uso de ferramentas moi demandadas no mundo laboral e complementar así os coñecementos adquiridos no ciclo, como son o framework Laravel, Bootstrap, a librería JQuery.
- Ser capaz de desenvolver unha aplicación que sexa capaz de resolver un problema que levo observando dende varios anos de traballos e para o que nunca atopamos unha solución que se adaptara 100% ao requerido polo meu entorno de traballo.

## 2.2. Requirimentos:

Os requirimentos para desenvolver o proxecto serán:

- Medios Materiais:
    - Servidor LAMP para almacenar e utilizar a aplicación.
    - PC con conexión a internet.
    - Teléfono intelixente e tableta para verificar o correcto funcionamento e a correcta visualización da aplicación en diferentes dispositivos.

- Software necesario:
    - Faremos uso do IDE Visual Studio Code para a codificación da aplicación.
    - Faremos uso tamén de diversas extensións de Visual Studio Code para personalizalo e engadirlle funcionalidades que nos serán cómodas á hora de traballar. Entre outras instalamos:
        - Laravel Blade: Axudan ao resaltado de sintaxis e formato das plantillas blade que utiliza laravel.
        - Laravel Blade Formater: Axuda a deixar o código ben formateado e ordeado nas plantillas Blade.
        - PHP Intelephense e PHP IntelliSense para o marcado e completado de código PHP.
    - Utilizaremos tamén os seguintes navegadores WEB para verificar o correcto funcionamento da aplicación en cada un deles:
        - Google Chrome (Versión utilizada: 87.0.4280.66 - 64 bits)
        - Mozilla Firefox (Versión utilizada: 83.0 - 64 bits)
        - Microsoft Edge (Versión utilizada: 87.0.664.47 - 64bits)
    - Outro software utilizado:
        - DIA para a xeración de diagramas E/R, casos de uso, etc.
        - GitLab para o aloxamento do proxecto e control de versións.
        - GIMP para a edición de imaxes e iconos.
        - LibreOffice para a elaboración de documentación.
        - GanttProject para a elaboración de diagramas de GANTT.
- Frameworks: Para o desenvolvemento da aplicación optamos polo uso dos seguintes frameworks:
    - Laravel Versión 8.14.0: Laravel é un dos frameworks máis famoso e máis utilizado de PHP. O seu obxectivo é poder desenvolver en PHP de maneira sinxela. Algunha das características que destacan e están aplicadas no proxecto son:
        - Sistema de plantillas BLADE: é o sistema de plantillas que utiliza laravel para crear as vistas. Con él pódense crear plantillas, e seccións que despois se poden reutilizar. O máis importante é que ten accesible as variables PHP de maneira sinxela e cunha nomenclatura moi sinxela.
        - ELOQUENT: é o sistema que trae Laravel para interactuar coa base de datos. é un ORM (Object Relational Mapping / Mapeo de Obxeto Relacional), o que fai é mapear os datos das tablas a obxectos e evítanos o traballo de escribir consultas para o acceso á información. Do mesmo xeito o acceso ás relacións entre as distintas táboas da base de datos tamén se realiza por medio de propiedades de obxectos.
        - ROUTING: o sistema de rutas que se utiliza na aplicación pódese controlar de maneira sinxela a partires dun arquivo, pódense organizar por grupos e unha infinidade de cousas máis.
        - MIDDLEWARES: son controladores que se executan antes ou depois dunha petición para, por exemplo, validar antes de pasar á petición, ou controla o acceso dos usuarios a recursos con permisos, etc.
        - CONSOLA ARTISAN: Mediante a consola pódense lanzar comandos para a creación de modelos, controladores, etc. Lanzando un comando créase o arquivo con todo o necesario para solo abrir e escribir os métodos. Entre outras moitas funcións que trae, tamén destaca que dende ela se pode poñer en marcha o servidor incluido con Laravel para poñer a funcionar a aplicación con só un comando.
    - BootStrap Versión 4.0.0: Bootstrap é un dos frameworks CSS de código aberto máis coñecidos no mundo do desenvolvemento web. Facilita enormemente a maquetación de páxinas web xa que permite crear unha interface moi limpa e completamente responsive.
    Entre as vantaxes de Bootstrap atópanse as seguintes:
        - Existe infinidade de documentación sobre cómo funciona.
        - É de código aberto.
        - É compatible cos principais navegadores actuais (Mozilla Firefox, Google Chrome, Microsoft Edge...)
        - Ten unha facilidade de uso sorprendente á hora de crear contido.
        - Sistema GRID: é o sistema de cuadrículas que utiliza bootstrap, permite crear o diseño da interface insertando o contido en bloques e columnas.
- Librerías e plugins utilizados: Durante o desenvolvemento utilizaremos tamén as seguintes librerías e plugins que nos facilitarán as tarefas:
    - JQuery 3.2: JQuery é unha librería JavaScript que simplifica a tarefa de programar en JavaScript e permite darlle unha capa extra de usabilidade á páxina.
    - JQuery Validation Plugin: é un plugin para a validación de formularios. Contén diferentes reglas de validación típicas de formularios o que fai que permita resolver a validación do lado do cliente de maneira rápida e sinxela.

    Tódalas librerías e plugins empregados son OpenSource, pódense copiar, estudiar, modificar e redistribuir.

- Tecnoloxías empregadas: Durante o desenvolvemento do proxecto utilízanse as seguintes tecnoloxías:
    - PHP
    - SQL
    - JavaScript
    - HTML/CSS
    - Markdown

## 2.3. Tipos de usuarios:

Os tipos de usuario previstos que consumirán a aplicación dentro dunha empresa serán:
- **Usuario Administrador:** Será o encargado de dar de alta todo o necesario dentro da aplicación (Clientes, Proxectos, Incidencias), será o encargado tamén de asignar as incidencias aos técnicos.

- **Usuario Técnico:** Terán acceso a visualizar as súas propias intervencións.

## 2.4. Contorna operacional:

Os **requirimentos mínimos** para que os usuarios manexen a aplicación serán un ordenador persoal coas seguintes características:
    
* Procesador Intel Celeron G4930 3.2GHz
* Memoria RAM 4Gb
* Disco duro SATA 250gb
* S.O. Windows 10
* Navegador: Google Chrome / Mozilla Firefox ou Microsoft Edge nas súas últimas versións.
* Acceso a Internet

A aplicación tamén se poderá utilizar dende dispositivos móviles como tabletas electrónicas e teléfonos intelixentes, recomendándose o uso das últimas versións de iOS ou android para ambos dispositivos (actualmente a versión 10 de android e a iOS 14). 

Non se requirirá a instalación de ningún compoñente software nin hardware adicional.


## 2.5. Ideas para a súa comercialización:

A promoción da aplicación levarase a cabo inicialmente a través de redes sociais e publicidade web (anuncios online).

Como o uso da aplicación vai ser con fins empresariais empregaranse aquelas redes e portais que máis visiten os profesionais (por exemplo Linkedin).

Tamén se levarán a cabo accións comerciais demostrativas en cámaras de comercio ou en asociacións de empresarios para dar a coñecer a aplicación no ámbito para a que foi deseñada.

Máis adiante, cando a aplicación vaia avanzando comenzarase a ampliar a campaña publicitaria a outros ámbitos (xornais, revistas) e invertirase en posicionamento WEB para darlle maior visibilidade.

## 2.6. Modelo de negocio:

A idea de negocio que se persigue có desenvolvemento desta aplicación é comezar a facer unha funcionalidade básica que sexa útil e aforre traballo ao potencial cliente á que vai dirixida, pequenas empresas e autónomos que necesiten organizar os seus traballos de maneira cómoda.

Esta pequena aplicación distribuirase gratuitamente sen ningunha limitación nin publicidade.

Despois de desenvolver esa funcionalidade máis básica comezaranse a desenvolver outras funcionalidades "premium" que terán un custo dependendo da funcionalidade.

Tamén se ofrecerán servizos relacionados coa aplicación: Servizos de despregamento, servizos de almacenamento, servizos de mantemento, cursos, etc.


[->Continuar a "PLANIFICACION"](03_Planificacion.md)