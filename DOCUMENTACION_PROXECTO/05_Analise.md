# 5. Análise: Requirimentos do sistema

Este documento describirá os requirimetos para a aplicación **Xestor de Incidencias**, especificando que funcionalidade ofrecerá e de que xeito.

## 1. Descrición xeral:

O proxecto vai consistir no desenvolvemento dunha aplicación web que permitirá almacenar datos de clientes, proxectos, incidencias e técnicos.

Definimos a continuación cada un dos elementos:

Cliente: Os clientes aos que se fai referencia neste proxecto son empresas que contratan servizos aos usuarios deste sistema. Os clientes non terán acceso a realizar ningunha operación na aplicación.

Proxecto: Un proxecto é un conxunto de traballos que nos contrata o cliente, cada cliente pode contratarnos un ou varios proxectos.

Incidencia: Unha incidencia é un traballo que se nos asigna dun determinado proxecto, as incidencias consisten en asistencias a domicilios de terceiros clientes (ben sexan outras empresas ou particulares) a solucionar os problemas que teña.

Técnico: Un técnico é a persoa que acude ao cliente final a solucionar a incidencia.

A aplicación contará con dous tipos de usuarios que terán diferentes permisos:

- Usuario Administrador: é a persoa encargada de manexar todo o sistema, poderá manexar todo o relacionado con clientes, proxectos, incidencias, e técnicos.
- Usuario Técnico: só terá acceso a ver os traballos que teña asignados e a modificar as horas de entrada/saída das súas incidencias.

Por outra banda permitirá o envío automático de correos electrónicos tanto ao cliente informando do rexistro e peche de incidencias como aos técnicos indicando un resumo dos traballos a realizar.

Será necesario tamén que permita o acceso simultáneo de varios usuarios, que sexa accesible dende calquera lugar e teña unha interfaz intuitiva e adaptable a calquera tipo de dispositivo.

## 2. Funcionalidades

Describimos a continuación as operacións que se van poder realizar a través da aplicación.

**CLIENTES**

|Acción|Funcionalidade|
|------|------|
|Crear Cliente|O usuario administrador poderá engadir clientes ao sistema mediante un formulario que recollerá os seguintes datos: nome fiscal, nome Comercial, CIF, dirección, teléfono e correo electrónico.|
|Modificar Cliente|O usuario adiministrador poderá acceder a un formulario para modificar os datos dun cliente existente.|
|Borrar Cliente|O usuario administrador poderá eliminar un cliente sempre e cando o cliente non teña asociado ningún proxecto.|
|Ver Cliente|O usuario administrador poderá acceder a unha ventá na que se visualizarán os datos almacenados do cliente|
|Buscar cliente|O usuario administrador poderá acceder a un formulario para encontrar clientes buscando por distintos parámetros (Nome comercial, email ou provincia).|


**PROXECTOS**

|Acción|Funcionalidade|
|------|------|
|Crear Incidencia|O usuario administrador poderá engadir proxectos ao sistema mediante un formulario que recollerá os seguintes datos: nome do proxecto, cliente que xestiona o proxecto e o estado no que se atopa.|
|Modificar Proxecto|O usuario adiministrador poderá acceder a un formulario para modificar os datos dun proxecto existente.|
|Borrar Proxecto|O usuario administrador poderá eliminar un proxecto sempre e cando o proxecto non teña asociado ningunha incidencia.|
|Ver Proxecto|O usuario administrador poderá acceder a unha ventá na que se visualizarán os datos almacenados do proxecto|
|Buscar proxecto|O usuario administrador poderá acceder a un formulario para encontrar proxectos buscando por distintos parámetros (Nome do proxecto, cliente que o xestiona ou estado no que se atopa).|

**INCIDENCIAS**

|Acción|Funcionalidade|
|------|------|
|Crear Incidencia|O usuario administrador poderá engadir incidencias asociadas a un proxecto ao sistema mediante un formulario que recollerá os seguintes datos: código de incidencia do cliente, datos da persoa que nos solicita a incidencia (nome, teléfono e correo electrónico), un pequeno título descriptivo e a descrición completa da incidencia, datos de asistencia (persoa de contacto, teléfono e dirección de a onde temos que acudir), e as datas planificadas e reais da asistencia. Tamén se disporá dun estado de cómo se encontra a incidencia (rexistrada, planificada, en proceso, finalizada, pechada ou cancelada) que irá variando a medida que se vaia avanzando no traballo. Realizarase tamén a trazabilidade dos estados polos que se foi movendo a incidencia, sabendo deste xeito en qué data se cambiou de estado.|
|Modificar Incidencia|O usuario adiministrador poderá acceder a un formulario para modificar os datos dunha incidencia existente.|
|Borrar Incidencia|Non se permitirá o borrado das incidencias, se unha incidencia se anula pasará a estado cancelada, esta característica requírese deste xeito xa que máis adiante pódese valorar engadir estatísticas para a toma de decisións, unha incidencia borrada será unha incidencia que non conta para as estatísticas, e unha incidencia cancelada é unha incidencia que sí conta e pódese analizar o motivo da anulación.|
|Ver Incidencia Administrador|O usuario administrador poderá acceder a unha ventá na que se visualizarán os datos almacenados da incidencia.|
|Ver Incidencia Técnico|O usuario técnico poderá acceder a unha ventá na que se visualizarán os datos almacenados das incidencias que teña asignadas e estean sen pechar.|
|Buscar Incidencia|O usuario administrador poderá acceder a un formulario para encontrar incidencias buscando por distintos parámetros (Código de incidencia, código incidencia cliente, estado).|
|Exportar Listado de Icidencias|O usuario administrador terá un mecanismo para poder desecargar un  listado de incidencias.|


**PETICIONARIOS**

|Acción|Funcionalidade|
|------|------|
|Crear Peticionario|O usuario administrador poderá engadir Peticionarios ao sistema mediante un formulario que recollerá os seguintes datos: nome, apelidos, teléfono e correo electrónico.|
|Modificar Peticionario|O usuario adiministrador poderá acceder a un formulario para modificar os datos dun peticionario existente.|
|Borrar Peticionario|O usuario administrador poderá eliminar un peticionario sempre e cando o peticionario non teña asociado ningunha incidencia.|
|Ver Peticionario|O usuario administrador poderá acceder a unha ventá na que se visualizarán os datos almacenados do peticionario|
|Buscar peticionario|O usuario administrador poderá acceder a un formulario para encontrar un peticionario buscando por distintos parámetros (Nome ou email).|


**TÉCNICOS**

|Acción|Funcionalidade|
|------|------|
|Crear Técnico|O usuario administrador poderá engadir Técnicos ao sistema mediante un formulario que recollerá os seguintes datos: nome, apelidos, teléfono e correo electrónico.|
|Modificar Técnico|O usuario adiministrador poderá acceder a un formulario para modificar os datos dun técnico existente.|
|Borrar Técnico|O usuario administrador poderá eliminar un técnico sempre e cando o técnico non teña asociado ningunha incidencia.|
|Ver técnico|O usuario administrador poderá acceder a unha ventá na que se visualizarán os datos almacenados do técnico|
|Buscar Técnico|O usuario administrador poderá acceder a un formulario para encontrar un técnico buscando por distintos parámetros (Nome ou email).|


**USUARIOS DO SISTEMA**

|Acción|Funcionalidade|
|------|------|
|Crear usuario|O usuario administrador poderá engadir novos usuarios ao sistema mediante un formulario que recollerá os seguintes datos: nome, apelidos, correo electrónico e contrasinal.|
|Modificar Usuario|O usuario adiministrador poderá acceder a un formulario para modificar os datos dun usuario existente.|
|Borrar Usuario|O usuario administrador poderá eliminar un usuario do sistema.|
|Listar Usuario|O usuario administrador poderá acceder a unha ventá na que se listarán os usuarios do sistema|

**ENVÍO DE EMAILS**

|Acción|Funcionalidade|
|------|------|
|Enviar email|Habilitarase unha funcionalidade para poder enviar correos electrónicos dende a ventá de incidencias. As funcións necesarias son: Envío de correo ao peticionario cando se rexistra a incidencia co número de incidencia que lle asignamos. Envío de correo electrónico ao peticionario cando asignamos a incidencia a un técnico indicándolle a data planificada. Envío de correo electrónico a o técnico cando se lle asigna unha incidencia cos datos da mesma. Envío de correo electrónico ao cliente cando pechamos a incidencia.|

## 3.Requirimentos:
Detallaranse a continuación os requirimentos da aplicación web.

### 3.1. Requirimentos Funcionais:

* A aplicación será capaz de rexistrar, borrar e modificar correctamente toda a información que lle indiquemos.
* Será capaz de enviar correos informativos a quén corresponda en función dos estados das incidencias.
    * Incidencia Rexistrada -> Correo ao cliente indicándoo.
    * Incidencia Planificada -> correo ao cliente indicándoo e ao técnico coa información.
    * Incidencia Pechada -> Correo co cliente co peche da incidencia.
* Permitirá a búsqueda de incidencias, clientes, proxectos.
* Permitirá o filtrado en función de determinados parámetros para a descarga de listados.
* A linguaxe empregada no lado do servidor será PHP, farase uso do framework Laravel para facilitar o seu desenvolvemento e posterior mantemento e posible ampliación.
* O sistema xestor de base de datos será MySql.
* A aplicación funcionará nun servidor de aplicacións LAMP, cos seguintes requirimentos:
    * Requirimentos de Software:
        * Sistema Operativo: Ubuntu Server 18.04.5 LTS
        * Apache 2.4.29
        * MySQL 5.7.32
        * PHP 7.2.24
    * Requirimentos de Hardware:
        * CPU: 1 x Xeon-E2236 3.4GHz
        * Memoria RAM: 16GB
        * Disco duro: 2x1TB 

### 3.2. Requirimentos Non Funcionais:

* A aplicación deberá ter un modo de autenticación para acceder á mesma, e deberá diferenciar entre tipo de usuarios para acceder a determinados tipos de información.
* A aplicación deberá visualizarse e funcionar correctamente (mínimo) nos seguintes navegadores:
    * Google Chrome
    * Mozilla Firefox
    * Microsoft Edge
* A aplicación deberá ter un deseño adaptativo para utilizar en diferentes dispositivos (tabletas, teléfonos intelixentes, ordenadores).
* A aplicación deberá permitir o acceso de varios usuarios simultáneos.

## 4. Tipos de usuarios:

Imos diferenciar entre dous tipos de usuario que accederán á aplicación:

- **Usuario Administrador:** É o usuario que xestionará a aplicación, terá acceso a todo o sistema. Será o encargado de dar de alta os seguintes elementos:
    - Clientes
    - Proxectos
    - Incidencias
    - Técnicos / Usuarios
Poderá tamén crear estados e peticionarios, e poderá dar de baixa a outros usuarios.


- **Usuario Técnico:** Terán acceso únicamente á visualización das incidencias que teñan asignadas, poderán engadir a hora de chegada e de finalización do traballo que realizaron.

## 5. Contorna Operacional:

Os **requirimentos mínimos** para que os usuarios manexen a aplicación serán un ordenador persoal coas seguintes características:
    
* Procesador Intel Celeron G4930 3.2GHz
* Memoria RAM 4Gb
* Disco duro SATA 250gb
* S.O. Windows 10
* Navegador: Google Chrome / Mozilla Firefox ou Microsoft Edge nas súas últimas versións.
* Acceso a Internet

A aplicación tamén se poderá utilizar dende dispositivos móviles como tabletas electrónicas e teléfonos intelixentes, recomendándose o uso das últimas versións de iOS ou android para ambos dispositivos (actualmente a versión 10 de android e a iOS 14). 

Non se requirirá a instalación de ningún compoñente software nin hardware adicional.

Cabe mencionar que estos son os requirimentos que se consideran mínimos e están probados nos que a aplicación funciona correctamente, con fluidez e sen problemas de visualización. Ao tratarse dunha aplicación web accesible dende un navegador poderá funcionar con outros sistemas operativos (Ubuntu, MacOS) ou outras configuracións de PC.

## 6. Normativa:

En canto á normativa a seguir, a máis importante e inmediata ao tratarse dun sistema cunha base de datos que almacena datos básicos de clientes e técnicos, é la Ley Orgánica 3/2018 do 5 de Decembro de Protección de datos personais e garantía dos dereitos dixitais. 

Esta normativa establece os requirimentos específicos para empresas e organizacións sobre recollida, almacenamento e xestión dos datos persoais. Aplícase tanto a organizacións europeas que tratan os datos persoais dos cidadans da Unión Europea como ás organizacións que teñen a sua sede fora da Unión Europea pero a súa actividade diríxese a persoas que viven na UE.

Esta normativa indica que as medidas de seguridade deberán ser proporcionais e adecuadas ao risco detectado, e propón unhas medidas mínimas de seguridade se os datos que tratamos non son datos especialmente protexidos.

No caso desta aplicación non tratamos con datos especialmente protexidos, pero sí que gardamos datos persoais de técnicos e datos de empresas, polo que haberá que nomear un responsable de tratamento dos datos e indicar para qué fins se utilizarán.

Haberá que informar ás persoas involucradas da incorporación dos seus datos a un ficheiro e informala dos dereitos de rectificación ou supresión dos seus datos. 

Como a nosa aplicación é para un carácter empresarial (non vai estar aberta ao público en xeral nin vai permitir o rexistro) non sería necesario dispor dun aviso legal nin de informar das políticas de privacidade de cara ao público, pero sí que é necesario que se informe tanto aos técnicos como ás empresas da incorporación á base de datos.



[->Continuar a "Deseño"](06_Deseño.md)