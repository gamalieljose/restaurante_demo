<?php 

// CONFIGURAR AQUI EL NOMBRE DEL NEGOCIO
define('NAME_NEGOCIO', 'Cafesazo');

define('MENSAJE_WHATSAPP', 'Su comprobante de pago electrónico ha sido generado correctamente, puede revisarlo en el siguiente enlace:');

//configuracion del logo print 
define('L_DIMENSION','50'); // dimenciona en largo como alto 
define('L_CENTER', '10'); // DE IZQUIERDA A DERECHA PARA PODER CENTRARL LA IMAGEN 
define('L_ESPACIO', '25'); // DARA EL ESPACIO ENTRE EL LOGO Y EL NOMBRE COMERCIAL 
define('L_FORMATO' , 'png'); // png, jpg, gif
// define();


//constants
define('HASH_GENERAL_KEY', 'MixitUp200');
define('HASH_PASSWORD_KEY', 'catsFLYhigh2000miles');

//database
define('DB_TYPE', 'mysql');
define('DB_HOST', 'localhost');
// NOMBRE DE LA BASE DE DATOS
define('DB_NAME', 'restaurante');
// NOMBRE DEL  USUARIO DE LA  BASE DE DATOS
define('DB_USER', 'root');
define('DB_PASS', '');
define('DB_CHARSET', 'utf8');



define('API_TOKEN', '');

//path
define('URL', 'http://localhost/restaurante/');
define('LIBS', 'libs/');