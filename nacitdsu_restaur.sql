-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 10-08-2022 a las 09:12:28
-- Versión del servidor: 10.3.35-MariaDB-cll-lve
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `nacitdsu_restaur`
--

DELIMITER $$
--
-- Procedimientos
--
$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comunicacion_baja`
--

CREATE TABLE `comunicacion_baja` (
  `id_comunicacion` int(11) NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_baja` date DEFAULT NULL,
  `fecha_referencia` date DEFAULT NULL,
  `tipo_doc` char(2) DEFAULT NULL,
  `serie_doc` char(4) DEFAULT NULL,
  `num_doc` varchar(8) DEFAULT NULL,
  `nombre_baja` varchar(200) DEFAULT NULL,
  `correlativo` varchar(5) DEFAULT NULL,
  `enviado_sunat` char(1) DEFAULT NULL,
  `hash_cpe` varchar(100) DEFAULT NULL,
  `hash_cdr` varchar(100) DEFAULT NULL,
  `code_respuesta_sunat` varchar(5) DEFAULT NULL,
  `descripcion_sunat_cdr` varchar(300) DEFAULT NULL,
  `name_file_sunat` varchar(80) DEFAULT NULL,
  `estado` varchar(12) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen_diario`
--

CREATE TABLE `resumen_diario` (
  `id_resumen` int(11) NOT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `fecha_resumen` date DEFAULT NULL,
  `fecha_referencia` date DEFAULT NULL,
  `correlativo` varchar(5) CHARACTER SET utf8mb4 DEFAULT NULL,
  `enviado_sunat` char(1) CHARACTER SET utf8mb4 DEFAULT NULL,
  `hash_cpe` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `hash_cdr` varchar(100) CHARACTER SET utf8mb4 DEFAULT NULL,
  `code_respuesta_sunat` varchar(5) CHARACTER SET utf8mb4 DEFAULT NULL,
  `descripcion_sunat_cdr` varchar(300) CHARACTER SET utf8mb4 DEFAULT NULL,
  `name_file_sunat` varchar(80) CHARACTER SET utf8mb4 DEFAULT NULL,
  `estado` varchar(12) CHARACTER SET utf8mb4 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resumen_diario_detalle`
--

CREATE TABLE `resumen_diario_detalle` (
  `id_detalle` int(11) NOT NULL,
  `id_resumen` int(11) DEFAULT NULL,
  `id_venta` int(11) DEFAULT NULL,
  `status_code` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_almacen`
--

CREATE TABLE `tm_almacen` (
  `id_alm` int(11) NOT NULL,
  `nombre` varchar(45) CHARACTER SET latin1 DEFAULT NULL,
  `estado` varchar(5) CHARACTER SET latin1 DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_almacen`
--

INSERT INTO `tm_almacen` (`id_alm`, `nombre`, `estado`) VALUES
(1, 'ABARROTES E INSUMOS', 'a'),
(2, 'BEBIDAS, GASEOSAS Y CERVEZAS', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_aper_cierre`
--

CREATE TABLE `tm_aper_cierre` (
  `id_apc` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `id_caja` int(11) NOT NULL,
  `id_turno` int(11) NOT NULL,
  `fecha_aper` datetime DEFAULT NULL,
  `monto_aper` decimal(10,2) DEFAULT 0.00,
  `fecha_cierre` datetime DEFAULT NULL,
  `monto_cierre` decimal(10,2) DEFAULT 0.00,
  `monto_sistema` decimal(10,2) DEFAULT 0.00,
  `stock_pollo` varchar(11) NOT NULL DEFAULT '0',
  `estado` varchar(5) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_area_prod`
--

CREATE TABLE `tm_area_prod` (
  `id_areap` int(11) NOT NULL,
  `id_imp` int(11) NOT NULL,
  `nombre` varchar(45) NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_area_prod`
--

INSERT INTO `tm_area_prod` (`id_areap`, `id_imp`, `nombre`, `estado`) VALUES
(1, 2, 'COCINA', 'a'),
(2, 3, 'BAR', 'a'),
(3, 3, 'BAR2', 'a'),
(4, 5, 'PARILLA', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_caja`
--

CREATE TABLE `tm_caja` (
  `id_caja` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` varchar(5) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_caja`
--

INSERT INTO `tm_caja` (`id_caja`, `descripcion`, `estado`) VALUES
(1, 'CAJA PRINCIPAL', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_cliente`
--

CREATE TABLE `tm_cliente` (
  `id_cliente` int(11) NOT NULL,
  `tipo_cliente` int(11) NOT NULL,
  `dni` varchar(10) NOT NULL DEFAULT '00000000',
  `ruc` varchar(13) NOT NULL,
  `nombres` varchar(100) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `telefono` int(11) NOT NULL,
  `fecha_nac` date NOT NULL,
  `correo` varchar(100) NOT NULL,
  `direccion` varchar(100) NOT NULL DEFAULT 'S/DIRECCION',
  `referencia` varchar(100) NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_cliente`
--

INSERT INTO `tm_cliente` (`id_cliente`, `tipo_cliente`, `dni`, `ruc`, `nombres`, `razon_social`, `telefono`, `fecha_nac`, `correo`, `direccion`, `referencia`, `estado`) VALUES
(1, 1, '00000000', '', 'PUBLICO EN GENERAL', '', 0, '1970-01-01', '', '-', '', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_compra`
--

CREATE TABLE `tm_compra` (
  `id_compra` int(11) NOT NULL,
  `id_prov` int(11) NOT NULL,
  `id_tipo_compra` int(11) NOT NULL,
  `id_tipo_doc` int(11) NOT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `fecha_c` date DEFAULT NULL,
  `hora_c` varchar(45) DEFAULT NULL,
  `serie_doc` varchar(45) DEFAULT NULL,
  `num_doc` varchar(45) DEFAULT NULL,
  `igv` decimal(10,2) DEFAULT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `descuento` decimal(10,2) DEFAULT NULL,
  `estado` varchar(1) DEFAULT 'a',
  `observaciones` varchar(100) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_compra_credito`
--

CREATE TABLE `tm_compra_credito` (
  `id_credito` int(11) NOT NULL,
  `id_compra` int(11) NOT NULL,
  `total` decimal(10,2) DEFAULT NULL,
  `interes` decimal(10,2) DEFAULT NULL,
  `fecha` date DEFAULT NULL,
  `estado` varchar(5) DEFAULT 'p'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_compra_detalle`
--

CREATE TABLE `tm_compra_detalle` (
  `id_compra` int(11) NOT NULL,
  `id_tp` int(11) NOT NULL,
  `id_pres` int(11) NOT NULL,
  `cant` decimal(10,2) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_configuracion`
--

CREATE TABLE `tm_configuracion` (
  `id_cfg` int(11) NOT NULL,
  `zona_hora` varchar(100) DEFAULT NULL,
  `trib_acr` varchar(20) DEFAULT NULL,
  `trib_car` int(5) DEFAULT NULL,
  `di_acr` varchar(20) DEFAULT NULL,
  `di_car` int(5) DEFAULT NULL,
  `imp_acr` varchar(20) DEFAULT NULL,
  `imp_val` decimal(10,2) DEFAULT NULL,
  `mon_acr` varchar(20) DEFAULT NULL,
  `mon_val` varchar(5) DEFAULT NULL,
  `pc_name` varchar(50) DEFAULT NULL,
  `pc_ip` varchar(20) DEFAULT NULL,
  `print_com` int(1) DEFAULT NULL,
  `print_pre` int(1) DEFAULT NULL,
  `print_cpe` int(1) DEFAULT NULL,
  `opc_01` int(1) DEFAULT NULL,
  `opc_02` int(1) DEFAULT NULL,
  `opc_03` int(1) DEFAULT NULL,
  `bloqueo` int(1) DEFAULT NULL,
  `cod_seg` varchar(45) NOT NULL DEFAULT '123456'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_configuracion`
--

INSERT INTO `tm_configuracion` (`id_cfg`, `zona_hora`, `trib_acr`, `trib_car`, `di_acr`, `di_car`, `imp_acr`, `imp_val`, `mon_acr`, `mon_val`, `pc_name`, `pc_ip`, `print_com`, `print_pre`, `print_cpe`, `opc_01`, `opc_02`, `opc_03`, `bloqueo`, `cod_seg`) VALUES
(1, 'America/Lima', 'RUC', 11, 'DNI', 8, 'IGV', '18.00', 'Soles', 'S/', 'DESKTOP-CBT9B22', '192.168.0.133', 1, 1, 0, 1, 0, 1, NULL, '123456');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_credito_detalle`
--

CREATE TABLE `tm_credito_detalle` (
  `id_credito` int(11) DEFAULT NULL,
  `id_usu` int(11) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `egreso` int(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_detalle_pedido`
--

CREATE TABLE `tm_detalle_pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `id_pres` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `cant` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `comentario` varchar(100) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `fecha_envio` datetime NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_detalle_venta`
--

CREATE TABLE `tm_detalle_venta` (
  `id_venta` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `precio` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_empresa`
--

CREATE TABLE `tm_empresa` (
  `id_de` int(11) NOT NULL,
  `ruc` varchar(20) DEFAULT NULL,
  `razon_social` varchar(200) DEFAULT NULL,
  `nombre_comercial` varchar(200) DEFAULT NULL,
  `direccion_comercial` varchar(200) DEFAULT NULL,
  `direccion_fiscal` varchar(200) DEFAULT NULL,
  `ubigeo` varchar(8) DEFAULT NULL,
  `departamento` varchar(50) DEFAULT NULL,
  `provincia` varchar(50) DEFAULT NULL,
  `distrito` varchar(50) DEFAULT NULL,
  `sunat` int(1) NOT NULL,
  `modo` int(1) DEFAULT NULL,
  `usuariosol` varchar(50) DEFAULT NULL,
  `clavesol` varchar(50) DEFAULT NULL,
  `clavecertificado` varchar(50) DEFAULT NULL,
  `client_id` varchar(45) DEFAULT NULL,
  `client_secret` varchar(45) DEFAULT NULL,
  `logo` varchar(45) DEFAULT NULL,
  `celular` varchar(50) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_empresa`
--

INSERT INTO `tm_empresa` (`id_de`, `ruc`, `razon_social`, `nombre_comercial`, `direccion_comercial`, `direccion_fiscal`, `ubigeo`, `departamento`, `provincia`, `distrito`, `sunat`, `modo`, `usuariosol`, `clavesol`, `clavecertificado`, `client_id`, `client_secret`, `logo`, `celular`, `email`) VALUES
(1, '20202020202', 'FERIJOw S.A.C.', 'NACIONAL CODE', 'AV. SAN MARTIN 134 ', 'AV. SAN MARTIN NRO. 134', '150132', 'LIMA', 'LIMA', 'CARABAYLLO', 1, 1, '3213213', '32132321', '213213421321321', '', '', 'logoprint.png', '3504931577', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_gastos_adm`
--

CREATE TABLE `tm_gastos_adm` (
  `id_ga` int(11) NOT NULL,
  `id_tipo_gasto` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `id_apc` int(11) NOT NULL,
  `id_per` int(11) DEFAULT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `motivo` varchar(100) DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL,
  `estado` varchar(5) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_impresora`
--

CREATE TABLE `tm_impresora` (
  `id_imp` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tm_impresora`
--

INSERT INTO `tm_impresora` (`id_imp`, `nombre`, `estado`) VALUES
(1, 'NINGUNO', 'a'),
(2, 'COCINA', 'a'),
(3, 'BAR', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_ingresos_adm`
--

CREATE TABLE `tm_ingresos_adm` (
  `id_ing` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `id_apc` int(11) NOT NULL,
  `importe` decimal(10,2) DEFAULT NULL,
  `responsable` varchar(100) DEFAULT NULL,
  `motivo` varchar(200) DEFAULT NULL,
  `fecha_reg` datetime DEFAULT NULL,
  `estado` varchar(5) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_insumo`
--

CREATE TABLE `tm_insumo` (
  `id_ins` int(11) NOT NULL,
  `id_catg` int(11) NOT NULL,
  `id_med` int(11) NOT NULL,
  `cod_ins` varchar(10) DEFAULT NULL,
  `nomb_ins` varchar(45) DEFAULT NULL,
  `stock_min` int(11) DEFAULT NULL,
  `cos_uni` decimal(10,2) DEFAULT NULL,
  `estado` varchar(5) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_insumo_catg`
--

CREATE TABLE `tm_insumo_catg` (
  `id_catg` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` varchar(5) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_inventario`
--

CREATE TABLE `tm_inventario` (
  `id_inv` int(11) NOT NULL,
  `id_tipo_ope` int(11) NOT NULL,
  `id_ope` int(11) NOT NULL,
  `id_tipo_ins` int(11) NOT NULL,
  `id_ins` int(11) NOT NULL,
  `cos_uni` decimal(10,2) NOT NULL,
  `cant` float NOT NULL,
  `fecha_r` datetime NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_inventario_entsal`
--

CREATE TABLE `tm_inventario_entsal` (
  `id_es` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_responsable` int(11) NOT NULL,
  `motivo` varchar(200) NOT NULL,
  `fecha` datetime NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_margen_venta`
--

CREATE TABLE `tm_margen_venta` (
  `id` int(11) NOT NULL,
  `cod_dia` int(11) NOT NULL,
  `dia` varchar(45) NOT NULL,
  `margen` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tm_margen_venta`
--

INSERT INTO `tm_margen_venta` (`id`, `cod_dia`, `dia`, `margen`) VALUES
(1, 1, 'Lunes', '150.00'),
(2, 2, 'Martes', '750.00'),
(3, 3, 'Miércoles', '750.00'),
(4, 4, 'Jueves', '850.00'),
(5, 5, 'Viernes', '1200.00'),
(6, 6, 'Sábado', '1800.00'),
(7, 0, 'Domingo', '2500.00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_mesa`
--

CREATE TABLE `tm_mesa` (
  `id_mesa` int(11) NOT NULL,
  `id_salon` int(11) NOT NULL,
  `nro_mesa` varchar(5) NOT NULL,
  `estado` varchar(45) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_mesa`
--

INSERT INTO `tm_mesa` (`id_mesa`, `id_salon`, `nro_mesa`, `estado`) VALUES
(1, 1, '01', 'a'),
(2, 1, '01', 'a'),
(3, 1, '03', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_pago`
--

CREATE TABLE `tm_pago` (
  `id_pago` int(2) NOT NULL,
  `descripcion` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_pago`
--

INSERT INTO `tm_pago` (`id_pago`, `descripcion`) VALUES
(1, 'EFECTIVO'),
(2, 'TARJETAS'),
(3, 'MIXTO'),
(4, 'EN LINEA'),
(5, 'TRANSFERENCIAS'),
(6, 'VALES');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_pedido`
--

CREATE TABLE `tm_pedido` (
  `id_pedido` int(11) NOT NULL,
  `id_tipo_pedido` int(11) NOT NULL,
  `id_apc` int(11) DEFAULT NULL,
  `id_usu` int(11) NOT NULL,
  `fecha_pedido` datetime NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_pedido_delivery`
--

CREATE TABLE `tm_pedido_delivery` (
  `id_pedido` int(11) NOT NULL,
  `tipo_canal` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_repartidor` int(11) NOT NULL,
  `tipo_pago` int(11) NOT NULL,
  `tipo_entrega` int(11) NOT NULL,
  `pedido_programado` int(11) DEFAULT 0,
  `hora_entrega` time DEFAULT '00:00:00',
  `paga_con` decimal(10,2) NOT NULL,
  `comision_delivery` decimal(10,2) NOT NULL,
  `amortizacion` decimal(10,2) NOT NULL,
  `nro_pedido` varchar(10) NOT NULL,
  `nombre_cliente` varchar(100) NOT NULL,
  `telefono_cliente` varchar(20) NOT NULL,
  `direccion_cliente` varchar(100) NOT NULL,
  `referencia_cliente` varchar(100) NOT NULL,
  `email_cliente` varchar(200) NOT NULL,
  `fecha_preparacion` datetime NOT NULL,
  `fecha_envio` datetime NOT NULL,
  `fecha_entrega` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_pedido_llevar`
--

CREATE TABLE `tm_pedido_llevar` (
  `id_pedido` int(11) NOT NULL,
  `nro_pedido` varchar(10) NOT NULL,
  `nomb_cliente` varchar(100) NOT NULL,
  `fecha_entrega` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_pedido_mesa`
--

CREATE TABLE `tm_pedido_mesa` (
  `id_pedido` int(11) NOT NULL,
  `id_mesa` int(11) NOT NULL,
  `id_mozo` int(11) NOT NULL,
  `nomb_cliente` varchar(45) NOT NULL,
  `nro_personas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto`
--

CREATE TABLE `tm_producto` (
  `id_prod` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `id_catg` int(11) NOT NULL DEFAULT 0,
  `id_areap` int(11) NOT NULL,
  `nombre` varchar(45) DEFAULT NULL,
  `notas` varchar(200) DEFAULT NULL,
  `descripcion` varchar(200) DEFAULT NULL,
  `delivery` int(1) DEFAULT 0,
  `estado` varchar(1) DEFAULT 'a',
  `cod_pro` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto_catg`
--

CREATE TABLE `tm_producto_catg` (
  `id_catg` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `delivery` int(1) NOT NULL DEFAULT 0,
  `orden` int(11) NOT NULL DEFAULT 100,
  `imagen` varchar(200) NOT NULL DEFAULT 'default.png',
  `estado` varchar(1) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tm_producto_catg`
--

INSERT INTO `tm_producto_catg` (`id_catg`, `descripcion`, `delivery`, `orden`, `imagen`, `estado`) VALUES
(1, 'COMBOS', 0, 0, 'default.png', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto_ingr`
--

CREATE TABLE `tm_producto_ingr` (
  `id_pi` int(11) NOT NULL,
  `id_pres` int(11) NOT NULL,
  `id_tipo_ins` int(11) NOT NULL,
  `id_ins` int(11) NOT NULL,
  `id_med` int(11) NOT NULL,
  `cant` float(10,6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_producto_pres`
--

CREATE TABLE `tm_producto_pres` (
  `id_pres` int(11) NOT NULL,
  `id_prod` int(11) NOT NULL,
  `cod_prod` varchar(45) NOT NULL,
  `presentacion` varchar(45) NOT NULL,
  `descripcion` varchar(200) NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `precio_delivery` decimal(10,2) NOT NULL,
  `receta` int(1) NOT NULL,
  `stock_min` int(11) NOT NULL,
  `crt_stock` int(1) NOT NULL DEFAULT 0,
  `impuesto` int(1) NOT NULL,
  `delivery` int(1) NOT NULL DEFAULT 0,
  `margen` int(11) NOT NULL DEFAULT 0,
  `igv` decimal(10,2) NOT NULL,
  `imagen` varchar(200) NOT NULL DEFAULT 'default.png',
  `estado` varchar(1) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_proveedor`
--

CREATE TABLE `tm_proveedor` (
  `id_prov` int(11) NOT NULL,
  `ruc` varchar(13) NOT NULL,
  `razon_social` varchar(100) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` int(9) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `contacto` varchar(45) DEFAULT NULL,
  `estado` varchar(1) DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_repartidor`
--

CREATE TABLE `tm_repartidor` (
  `id_repartidor` int(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `tm_repartidor`
--

INSERT INTO `tm_repartidor` (`id_repartidor`, `descripcion`, `estado`) VALUES
(1, 'INTERNO', 'a'),
(2222, 'RAPPI', 'a'),
(3333, 'UBER', 'a'),
(4444, 'GLOVO', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_rol`
--

CREATE TABLE `tm_rol` (
  `id_rol` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_rol`
--

INSERT INTO `tm_rol` (`id_rol`, `descripcion`) VALUES
(1, 'ADMINISTRATOR'),
(2, 'ADMINISTRADOR'),
(3, 'CAJERO'),
(4, 'PRODUCCION'),
(5, 'MOZO'),
(6, 'REPARTIDOR');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_salon`
--

CREATE TABLE `tm_salon` (
  `id_salon` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_salon`
--

INSERT INTO `tm_salon` (`id_salon`, `descripcion`, `estado`) VALUES
(1, 'SALON', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tipo_compra`
--

CREATE TABLE `tm_tipo_compra` (
  `id_tipo_compra` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tm_tipo_compra`
--

INSERT INTO `tm_tipo_compra` (`id_tipo_compra`, `descripcion`) VALUES
(1, 'CONTADO'),
(2, 'CREDITO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tipo_doc`
--

CREATE TABLE `tm_tipo_doc` (
  `id_tipo_doc` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `serie` char(4) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_tipo_doc`
--

INSERT INTO `tm_tipo_doc` (`id_tipo_doc`, `descripcion`, `serie`, `numero`, `estado`) VALUES
(1, 'BOLETA DE VENTA', 'BA01', '00000001', 'a'),
(2, 'FACTURA', 'FA01', '00000001', 'a'),
(3, 'NOTA DE VENTA', 'NV01', '00000001', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tipo_gasto`
--

CREATE TABLE `tm_tipo_gasto` (
  `id_tipo_gasto` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_tipo_gasto`
--

INSERT INTO `tm_tipo_gasto` (`id_tipo_gasto`, `descripcion`) VALUES
(1, 'POR COMPRAS'),
(2, 'POR SREVICIOS'),
(3, 'POR REMUNERACION'),
(4, 'POR CREDITO DE COMPRAS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tipo_medida`
--

CREATE TABLE `tm_tipo_medida` (
  `id_med` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `grupo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_tipo_medida`
--

INSERT INTO `tm_tipo_medida` (`id_med`, `descripcion`, `grupo`) VALUES
(1, 'UNIDAD', 1),
(2, 'KILOS', 2),
(3, 'GRAMOS', 2),
(4, 'MILIGRAMOS', 2),
(5, 'LITRO', 3),
(6, 'MILILITRO', 3),
(7, 'LIBRAS', 2),
(8, 'ONZAS', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tipo_pago`
--

CREATE TABLE `tm_tipo_pago` (
  `id_tipo_pago` int(11) NOT NULL,
  `id_pago` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  `estado` varchar(5) NOT NULL DEFAULT 'a'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_tipo_pago`
--

INSERT INTO `tm_tipo_pago` (`id_tipo_pago`, `id_pago`, `descripcion`, `estado`) VALUES
(1, 1, 'EFECTIVO', 'a'),
(2, 2, 'TARJETA', 'a'),
(3, 3, 'PAGO MIXTO', 'a'),
(4, 4, 'CULQI', 'a'),
(5, 5, 'YAPE', 'a'),
(6, 5, 'LUKITA', 'a'),
(7, 5, 'TRANSFERENCIA', 'a'),
(8, 5, 'PLIN', 'a'),
(9, 5, 'TUNKI', 'a');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tipo_pedido`
--

CREATE TABLE `tm_tipo_pedido` (
  `id_tipo_pedido` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_tipo_pedido`
--

INSERT INTO `tm_tipo_pedido` (`id_tipo_pedido`, `descripcion`) VALUES
(1, 'MESA'),
(2, 'LLEVAR'),
(3, 'DELIVERY');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_tipo_venta`
--

CREATE TABLE `tm_tipo_venta` (
  `id_tipo_venta` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_tipo_venta`
--

INSERT INTO `tm_tipo_venta` (`id_tipo_venta`, `descripcion`) VALUES
(1, 'CONTADO'),
(2, 'CREDITO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_turno`
--

CREATE TABLE `tm_turno` (
  `id_turno` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_turno`
--

INSERT INTO `tm_turno` (`id_turno`, `descripcion`) VALUES
(1, 'PRIMER TURNO'),
(2, 'SEGUNDO TURNO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_usuario`
--

CREATE TABLE `tm_usuario` (
  `id_usu` int(11) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `id_areap` int(11) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `ape_paterno` varchar(45) DEFAULT NULL,
  `ape_materno` varchar(45) DEFAULT NULL,
  `nombres` varchar(45) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `usuario` varchar(45) DEFAULT NULL,
  `contrasena` varchar(45) DEFAULT 'cmVzdHBl',
  `estado` varchar(5) DEFAULT 'a',
  `imagen` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tm_usuario`
--

INSERT INTO `tm_usuario` (`id_usu`, `id_rol`, `id_areap`, `dni`, `ape_paterno`, `ape_materno`, `nombres`, `email`, `usuario`, `contrasena`, `estado`, `imagen`) VALUES
(1, 1, 0, '44827499', 'ADMINISTRADOR', 'ADMINISTRADOR', 'ADMINISTRADOR', 'administrador@gmail.com', 'administrador', 'c29wb3J0ZTI=', 'a', '161117020710-avatar5.png');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tm_venta`
--

CREATE TABLE `tm_venta` (
  `id_venta` int(11) NOT NULL,
  `id_pedido` int(11) NOT NULL,
  `id_tipo_pedido` int(11) NOT NULL,
  `id_cliente` int(11) NOT NULL,
  `id_tipo_doc` int(11) NOT NULL,
  `id_tipo_pago` int(11) NOT NULL,
  `id_usu` int(11) NOT NULL,
  `id_apc` int(11) NOT NULL,
  `serie_doc` char(4) NOT NULL,
  `nro_doc` varchar(8) NOT NULL,
  `pago_efe` decimal(10,2) DEFAULT 0.00,
  `pago_efe_none` decimal(10,2) DEFAULT 0.00,
  `pago_tar` decimal(10,2) DEFAULT 0.00,
  `descuento_tipo` char(1) NOT NULL DEFAULT '1',
  `descuento_personal` int(11) DEFAULT NULL,
  `descuento_monto` decimal(10,2) DEFAULT 0.00,
  `descuento_motivo` varchar(200) DEFAULT NULL,
  `comision_tarjeta` decimal(10,2) DEFAULT 0.00,
  `comision_delivery` decimal(10,2) DEFAULT 0.00,
  `igv` decimal(10,2) DEFAULT 0.00,
  `total` decimal(10,2) DEFAULT 0.00,
  `codigo_operacion` varchar(20) DEFAULT NULL,
  `fecha_venta` datetime DEFAULT NULL,
  `estado` varchar(15) DEFAULT 'a',
  `enviado_sunat` char(1) DEFAULT NULL,
  `code_respuesta_sunat` varchar(5) NOT NULL,
  `descripcion_sunat_cdr` varchar(300) NOT NULL,
  `name_file_sunat` varchar(80) NOT NULL,
  `hash_cdr` varchar(200) NOT NULL,
  `hash_cpe` varchar(200) NOT NULL,
  `fecha_vencimiento` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_caja_aper`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_caja_aper` (
`id_apc` int(11)
,`id_usu` int(11)
,`id_caja` int(11)
,`id_turno` int(11)
,`fecha_aper` datetime
,`monto_aper` decimal(10,2)
,`fecha_cierre` datetime
,`monto_cierre` decimal(10,2)
,`monto_sistema` decimal(10,2)
,`stock_pollo` varchar(11)
,`estado` varchar(5)
,`desc_per` varchar(137)
,`desc_caja` varchar(45)
,`desc_turno` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_clientes`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_clientes` (
`id_cliente` int(11)
,`tipo_cliente` int(11)
,`dni` varchar(10)
,`ruc` varchar(13)
,`nombre` varchar(200)
,`telefono` int(11)
,`fecha_nac` date
,`direccion` varchar(100)
,`referencia` varchar(100)
,`estado` varchar(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cocina_de`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_cocina_de` (
`id_pedido` int(11)
,`id_areap` int(11)
,`id_tipo` int(11)
,`id_pres` int(11)
,`cantidad` int(11)
,`comentario` varchar(100)
,`fecha_pedido` datetime
,`fecha_envio` datetime
,`estado` varchar(5)
,`nro_pedido` varchar(10)
,`id_usu` int(11)
,`nombre_prod` varchar(45)
,`pres_prod` varchar(45)
,`ape_paterno` varchar(45)
,`ape_materno` varchar(45)
,`nombres` varchar(45)
,`estado_pedido` varchar(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cocina_me`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_cocina_me` (
`id_pedido` int(11)
,`id_areap` int(11)
,`id_tipo` int(11)
,`id_pres` int(11)
,`cantidad` int(11)
,`comentario` varchar(100)
,`fecha_pedido` datetime
,`fecha_envio` datetime
,`estado` varchar(5)
,`id_mesa` int(11)
,`id_mozo` int(11)
,`nombre_prod` varchar(45)
,`pres_prod` varchar(45)
,`nro_mesa` varchar(5)
,`desc_salon` varchar(45)
,`ape_paterno` varchar(45)
,`ape_materno` varchar(45)
,`nombres` varchar(45)
,`estado_pedido` varchar(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_cocina_mo`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_cocina_mo` (
`id_pedido` int(11)
,`id_areap` int(11)
,`id_tipo` int(11)
,`id_pres` int(11)
,`cantidad` int(11)
,`comentario` varchar(100)
,`fecha_pedido` datetime
,`fecha_envio` datetime
,`estado` varchar(5)
,`nro_pedido` varchar(10)
,`id_usu` int(11)
,`nombre_prod` varchar(45)
,`pres_prod` varchar(45)
,`ape_paterno` varchar(45)
,`ape_materno` varchar(45)
,`nombres` varchar(45)
,`estado_pedido` varchar(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_compras`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_compras` (
`id_compra` int(11)
,`id_prov` int(11)
,`id_tipo_compra` int(11)
,`id_tipo_doc` int(11)
,`fecha_c` date
,`fecha_r` datetime
,`hora_c` varchar(45)
,`serie_doc` varchar(45)
,`num_doc` varchar(45)
,`igv` decimal(10,2)
,`total` decimal(10,2)
,`estado` varchar(1)
,`desc_tc` varchar(45)
,`desc_td` varchar(45)
,`desc_prov` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_det_delivery`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_det_delivery` (
`id_pedido` int(11)
,`id_pres` int(11)
,`cantidad` int(11)
,`precio` decimal(10,2)
,`estado` varchar(5)
,`nombre_prod` varchar(45)
,`pres_prod` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_det_llevar`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_det_llevar` (
`id_pedido` int(11)
,`id_pres` int(11)
,`cantidad` int(11)
,`precio` decimal(10,2)
,`estado` varchar(5)
,`nombre_prod` varchar(45)
,`pres_prod` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_gastosadm`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_gastosadm` (
`id_ga` int(11)
,`id_tg` int(11)
,`id_per` int(11)
,`id_usu` int(11)
,`id_apc` int(11)
,`importe` decimal(10,2)
,`responsable` varchar(100)
,`motivo` varchar(100)
,`fecha_re` datetime
,`estado` varchar(5)
,`des_tg` varchar(45)
,`desc_usu` varchar(137)
,`desc_per` varchar(137)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_insprod`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_insprod` (
`id_tipo_ins` int(1)
,`id_ins` int(11)
,`id_med` varchar(11)
,`id_gru` varchar(11)
,`ins_cod` varchar(45)
,`ins_nom` varchar(91)
,`ins_cat` varchar(45)
,`ins_med` varchar(45)
,`ins_rec` int(11)
,`ins_cos` decimal(10,2)
,`ins_sto` int(11)
,`est_a` varchar(5)
,`est_b` varchar(1)
,`est_c` varchar(1)
,`crt_stock` varchar(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_insumos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_insumos` (
`id_ins` int(11)
,`id_catg` int(11)
,`id_med` int(11)
,`id_gru` int(11)
,`ins_cod` varchar(10)
,`ins_nom` varchar(45)
,`ins_sto` int(11)
,`ins_cos` decimal(10,2)
,`ins_est` varchar(5)
,`ins_cat` varchar(45)
,`ins_med` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_inventario`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_inventario` (
`id_tipo_ins` int(11)
,`id_ins` int(11)
,`ent` varchar(23)
,`sal` varchar(23)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_inventario_ent`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_inventario_ent` (
`id_tipo_ins` int(11)
,`id_ins` int(11)
,`total` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_inventario_sal`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_inventario_sal` (
`id_tipo_ins` int(11)
,`id_ins` int(11)
,`total` double
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_listar_mesas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_listar_mesas` (
`id_mesa` int(11)
,`id_salon` int(11)
,`nro_mesa` varchar(5)
,`estado` varchar(45)
,`desc_salon` varchar(45)
,`id_pedido` int(11)
,`fecha_pedido` datetime
,`nro_personas` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_mesas`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_mesas` (
`id_mesa` int(11)
,`id_salon` int(11)
,`nro_mesa` varchar(5)
,`estado` varchar(45)
,`desc_salon` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_pedidos_agrupados`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_pedidos_agrupados` (
`tipo_atencion` int(1)
,`id_pedido` int(11)
,`id_areap` int(11)
,`id_tipo` int(11)
,`id_pres` int(11)
,`cantidad` decimal(32,0)
,`comentario` varchar(100)
,`fecha_pedido` datetime
,`fecha_envio` datetime
,`estado` varchar(5)
,`nombre_prod` varchar(45)
,`pres_prod` varchar(45)
,`nro_mesa` varchar(10)
,`desc_salon` varchar(45)
,`ape_paterno` varchar(45)
,`ape_materno` varchar(45)
,`nombres` varchar(45)
,`estado_pedido` varchar(5)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_pedido_delivery`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_pedido_delivery` (
`id_pedido` int(11)
,`id_tipo_pedido` int(11)
,`id_usu` int(11)
,`id_repartidor` int(11)
,`fecha_pedido` datetime
,`estado_pedido` varchar(5)
,`tipo_entrega` int(11)
,`pedido_programado` int(11)
,`hora_entrega` time
,`amortizacion` decimal(10,2)
,`tipo_pago` int(11)
,`paga_con` decimal(10,2)
,`comision_delivery` decimal(10,2)
,`nro_pedido` varchar(10)
,`id_cliente` int(11)
,`tipo_cliente` int(11)
,`dni_cliente` varchar(10)
,`ruc_cliente` varchar(13)
,`nombre_cliente` varchar(100)
,`telefono_cliente` varchar(20)
,`direccion_cliente` varchar(100)
,`referencia_cliente` varchar(100)
,`email_cliente` varchar(200)
,`desc_repartidor` varchar(137)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_pedido_llevar`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_pedido_llevar` (
`id_pedido` int(11)
,`id_tipo_pedido` int(11)
,`id_usu` int(11)
,`fecha_pedido` datetime
,`estado_pedido` varchar(5)
,`nro_pedido` varchar(10)
,`nombre_cliente` varchar(100)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_pedido_mesa`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_pedido_mesa` (
`id_pedido` int(11)
,`id_tipo_pedido` int(11)
,`id_usu` int(11)
,`id_mesa` int(11)
,`fecha_pedido` datetime
,`estado_pedido` varchar(5)
,`nombre_cliente` varchar(45)
,`nro_personas` int(11)
,`nro_mesa` varchar(5)
,`desc_salon` varchar(45)
,`estado_mesa` varchar(45)
,`nombre_mozo` varchar(91)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_productos`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_productos` (
`id_pres` int(11)
,`id_prod` int(11)
,`id_tipo` int(11)
,`id_catg` int(11)
,`id_areap` int(11)
,`pro_cat` varchar(45)
,`pro_cod` varchar(45)
,`pro_nom` varchar(45)
,`pro_pre` varchar(45)
,`pro_des` varchar(200)
,`pro_cos` decimal(10,2)
,`pro_cos_del` decimal(10,2)
,`pro_rec` int(1)
,`pro_sto` int(11)
,`pro_imp` int(1)
,`pro_mar` int(11)
,`pro_igv` decimal(10,2)
,`pro_img` varchar(200)
,`del_a` int(1)
,`del_b` int(1)
,`del_c` int(1)
,`est_a` varchar(1)
,`est_b` varchar(1)
,`est_c` varchar(1)
,`crt_stock` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_repartidores`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_repartidores` (
`id_repartidor` int(11)
,`desc_repartidor` varchar(137)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_stock`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_stock` (
`id_tipo_ins` int(11)
,`id_ins` int(11)
,`ent` double
,`sal` double
,`est_a` varchar(5)
,`est_b` varchar(1)
,`debajo_stock` int(1)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_stock_pedido`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_stock_pedido` (
`id_ins` int(11)
,`ent` double
,`sal` decimal(32,0)
,`control` int(11)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_usuarios`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_usuarios` (
`id_usu` int(11)
,`id_rol` int(11)
,`id_areap` int(11)
,`dni` varchar(10)
,`ape_paterno` varchar(45)
,`ape_materno` varchar(45)
,`nombres` varchar(45)
,`email` varchar(100)
,`usuario` varchar(45)
,`contrasena` varchar(45)
,`estado` varchar(5)
,`imagen` varchar(45)
,`desc_r` varchar(45)
,`desc_ap` varchar(45)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `v_ventas_con`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `v_ventas_con` (
`id_ven` int(11)
,`id_ped` int(11)
,`id_tped` int(11)
,`id_cli` int(11)
,`id_tdoc` int(11)
,`id_tpag` int(11)
,`id_usu` int(11)
,`id_apc` int(11)
,`ser_doc` char(4)
,`nro_doc` varchar(8)
,`pago_efe` decimal(10,2)
,`pago_efe_none` decimal(10,2)
,`pago_tar` decimal(10,2)
,`desc_monto` decimal(10,2)
,`desc_tipo` char(1)
,`desc_personal` int(11)
,`desc_motivo` varchar(200)
,`comis_tar` decimal(10,2)
,`comis_del` decimal(10,2)
,`igv` decimal(10,2)
,`total` decimal(10,2)
,`codigo_operacion` varchar(20)
,`fec_ven` datetime
,`estado` varchar(15)
,`enviado_sunat` char(1)
,`code_respuesta_sunat` varchar(5)
,`descripcion_sunat_cdr` varchar(300)
,`name_file_sunat` varchar(80)
,`hash_cdr` varchar(200)
,`hash_cpe` varchar(200)
,`fecha_vencimiento` date
,`desc_td` varchar(45)
,`desc_tp` varchar(45)
,`desc_usu` varchar(137)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `v_caja_aper`
--
DROP TABLE IF EXISTS `v_caja_aper`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_caja_aper`  AS SELECT `apc`.`id_apc` AS `id_apc`, `apc`.`id_usu` AS `id_usu`, `apc`.`id_caja` AS `id_caja`, `apc`.`id_turno` AS `id_turno`, `apc`.`fecha_aper` AS `fecha_aper`, `apc`.`monto_aper` AS `monto_aper`, `apc`.`fecha_cierre` AS `fecha_cierre`, `apc`.`monto_cierre` AS `monto_cierre`, `apc`.`monto_sistema` AS `monto_sistema`, `apc`.`stock_pollo` AS `stock_pollo`, `apc`.`estado` AS `estado`, concat(`tp`.`nombres`,' ',`tp`.`ape_paterno`,' ',`tp`.`ape_materno`) AS `desc_per`, `tc`.`descripcion` AS `desc_caja`, `tt`.`descripcion` AS `desc_turno` FROM (((`tm_aper_cierre` `apc` join `tm_usuario` `tp` on(`apc`.`id_usu` = `tp`.`id_usu`)) join `tm_caja` `tc` on(`apc`.`id_caja` = `tc`.`id_caja`)) join `tm_turno` `tt` on(`apc`.`id_turno` = `tt`.`id_turno`)) ORDER BY `apc`.`id_apc` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_clientes`
--
DROP TABLE IF EXISTS `v_clientes`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_clientes`  AS SELECT `tm_cliente`.`id_cliente` AS `id_cliente`, `tm_cliente`.`tipo_cliente` AS `tipo_cliente`, `tm_cliente`.`dni` AS `dni`, `tm_cliente`.`ruc` AS `ruc`, concat(ifnull(`tm_cliente`.`razon_social`,''),'',`tm_cliente`.`nombres`) AS `nombre`, `tm_cliente`.`telefono` AS `telefono`, `tm_cliente`.`fecha_nac` AS `fecha_nac`, `tm_cliente`.`direccion` AS `direccion`, `tm_cliente`.`referencia` AS `referencia`, `tm_cliente`.`estado` AS `estado` FROM `tm_cliente` ORDER BY `tm_cliente`.`id_cliente` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cocina_de`
--
DROP TABLE IF EXISTS `v_cocina_de`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_cocina_de`  AS SELECT `dp`.`id_pedido` AS `id_pedido`, `vp`.`id_areap` AS `id_areap`, `vp`.`id_tipo` AS `id_tipo`, `dp`.`id_pres` AS `id_pres`, if(`dp`.`cantidad` < `dp`.`cant`,`dp`.`cant`,`dp`.`cantidad`) AS `cantidad`, `dp`.`comentario` AS `comentario`, `dp`.`fecha_pedido` AS `fecha_pedido`, `dp`.`fecha_envio` AS `fecha_envio`, `dp`.`estado` AS `estado`, `pd`.`nro_pedido` AS `nro_pedido`, `tp`.`id_usu` AS `id_usu`, `vp`.`pro_nom` AS `nombre_prod`, `vp`.`pro_pre` AS `pres_prod`, `vu`.`ape_paterno` AS `ape_paterno`, `vu`.`ape_materno` AS `ape_materno`, `vu`.`nombres` AS `nombres`, `tp`.`estado` AS `estado_pedido` FROM ((((`tm_detalle_pedido` `dp` join `tm_pedido_delivery` `pd` on(`dp`.`id_pedido` = `pd`.`id_pedido`)) join `tm_pedido` `tp` on(`dp`.`id_pedido` = `tp`.`id_pedido`)) join `v_productos` `vp` on(`dp`.`id_pres` = `vp`.`id_pres`)) join `v_usuarios` `vu` on(`tp`.`id_usu` = `vu`.`id_usu`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cocina_me`
--
DROP TABLE IF EXISTS `v_cocina_me`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_cocina_me`  AS SELECT `dp`.`id_pedido` AS `id_pedido`, `vp`.`id_areap` AS `id_areap`, `vp`.`id_tipo` AS `id_tipo`, `dp`.`id_pres` AS `id_pres`, `dp`.`cantidad` AS `cantidad`, `dp`.`comentario` AS `comentario`, `dp`.`fecha_pedido` AS `fecha_pedido`, `dp`.`fecha_envio` AS `fecha_envio`, `dp`.`estado` AS `estado`, `pm`.`id_mesa` AS `id_mesa`, `pm`.`id_mozo` AS `id_mozo`, `vp`.`pro_nom` AS `nombre_prod`, `vp`.`pro_pre` AS `pres_prod`, `vm`.`nro_mesa` AS `nro_mesa`, `vm`.`desc_salon` AS `desc_salon`, `vu`.`ape_paterno` AS `ape_paterno`, `vu`.`ape_materno` AS `ape_materno`, `vu`.`nombres` AS `nombres`, `tp`.`estado` AS `estado_pedido` FROM (((((`tm_detalle_pedido` `dp` join `tm_pedido_mesa` `pm` on(`dp`.`id_pedido` = `pm`.`id_pedido`)) join `tm_pedido` `tp` on(`dp`.`id_pedido` = `tp`.`id_pedido`)) join `v_productos` `vp` on(`dp`.`id_pres` = `vp`.`id_pres`)) join `v_mesas` `vm` on(`pm`.`id_mesa` = `vm`.`id_mesa`)) join `v_usuarios` `vu` on(`pm`.`id_mozo` = `vu`.`id_usu`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_cocina_mo`
--
DROP TABLE IF EXISTS `v_cocina_mo`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_cocina_mo`  AS SELECT `dp`.`id_pedido` AS `id_pedido`, `vp`.`id_areap` AS `id_areap`, `vp`.`id_tipo` AS `id_tipo`, `dp`.`id_pres` AS `id_pres`, if(`dp`.`cantidad` < `dp`.`cant`,`dp`.`cant`,`dp`.`cantidad`) AS `cantidad`, `dp`.`comentario` AS `comentario`, `dp`.`fecha_pedido` AS `fecha_pedido`, `dp`.`fecha_envio` AS `fecha_envio`, `dp`.`estado` AS `estado`, `pm`.`nro_pedido` AS `nro_pedido`, `tp`.`id_usu` AS `id_usu`, `vp`.`pro_nom` AS `nombre_prod`, `vp`.`pro_pre` AS `pres_prod`, `vu`.`ape_paterno` AS `ape_paterno`, `vu`.`ape_materno` AS `ape_materno`, `vu`.`nombres` AS `nombres`, `tp`.`estado` AS `estado_pedido` FROM ((((`tm_detalle_pedido` `dp` join `tm_pedido_llevar` `pm` on(`dp`.`id_pedido` = `pm`.`id_pedido`)) join `tm_pedido` `tp` on(`dp`.`id_pedido` = `tp`.`id_pedido`)) join `v_productos` `vp` on(`dp`.`id_pres` = `vp`.`id_pres`)) join `v_usuarios` `vu` on(`tp`.`id_usu` = `vu`.`id_usu`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_compras`
--
DROP TABLE IF EXISTS `v_compras`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_compras`  AS SELECT `c`.`id_compra` AS `id_compra`, `c`.`id_prov` AS `id_prov`, `c`.`id_tipo_compra` AS `id_tipo_compra`, `c`.`id_tipo_doc` AS `id_tipo_doc`, `c`.`fecha_c` AS `fecha_c`, `c`.`fecha_reg` AS `fecha_r`, `c`.`hora_c` AS `hora_c`, `c`.`serie_doc` AS `serie_doc`, `c`.`num_doc` AS `num_doc`, `c`.`igv` AS `igv`, `c`.`total` AS `total`, `c`.`estado` AS `estado`, `tc`.`descripcion` AS `desc_tc`, `td`.`descripcion` AS `desc_td`, `tp`.`razon_social` AS `desc_prov` FROM (((`tm_compra` `c` join `tm_tipo_compra` `tc` on(`c`.`id_tipo_compra` = `tc`.`id_tipo_compra`)) join `tm_tipo_doc` `td` on(`c`.`id_tipo_doc` = `td`.`id_tipo_doc`)) join `tm_proveedor` `tp` on(`c`.`id_prov` = `tp`.`id_prov`)) WHERE `c`.`id_compra` <> 0 ORDER BY `c`.`id_compra` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_det_delivery`
--
DROP TABLE IF EXISTS `v_det_delivery`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_det_delivery`  AS SELECT `dp`.`id_pedido` AS `id_pedido`, `dp`.`id_pres` AS `id_pres`, if(`dp`.`cantidad` < `dp`.`cant`,`dp`.`cant`,`dp`.`cantidad`) AS `cantidad`, `dp`.`precio` AS `precio`, `dp`.`estado` AS `estado`, `vp`.`pro_nom` AS `nombre_prod`, `vp`.`pro_pre` AS `pres_prod` FROM (((`tm_detalle_pedido` `dp` join `tm_pedido_delivery` `pd` on(`dp`.`id_pedido` = `pd`.`id_pedido`)) join `tm_pedido` `tp` on(`dp`.`id_pedido` = `tp`.`id_pedido`)) join `v_productos` `vp` on(`dp`.`id_pres` = `vp`.`id_pres`)) WHERE `dp`.`estado` <> 'z' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_det_llevar`
--
DROP TABLE IF EXISTS `v_det_llevar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_det_llevar`  AS SELECT `dp`.`id_pedido` AS `id_pedido`, `dp`.`id_pres` AS `id_pres`, if(`dp`.`cantidad` < `dp`.`cant`,`dp`.`cant`,`dp`.`cantidad`) AS `cantidad`, `dp`.`precio` AS `precio`, `dp`.`estado` AS `estado`, `vp`.`pro_nom` AS `nombre_prod`, `vp`.`pro_pre` AS `pres_prod` FROM (((`tm_detalle_pedido` `dp` join `tm_pedido_llevar` `pm` on(`dp`.`id_pedido` = `pm`.`id_pedido`)) join `tm_pedido` `tp` on(`dp`.`id_pedido` = `tp`.`id_pedido`)) join `v_productos` `vp` on(`dp`.`id_pres` = `vp`.`id_pres`)) WHERE `dp`.`estado` <> 'z' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_gastosadm`
--
DROP TABLE IF EXISTS `v_gastosadm`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_gastosadm`  AS SELECT `ga`.`id_ga` AS `id_ga`, `ga`.`id_tipo_gasto` AS `id_tg`, `ga`.`id_per` AS `id_per`, `ga`.`id_usu` AS `id_usu`, `ga`.`id_apc` AS `id_apc`, `ga`.`importe` AS `importe`, `ga`.`responsable` AS `responsable`, `ga`.`motivo` AS `motivo`, `ga`.`fecha_registro` AS `fecha_re`, `ga`.`estado` AS `estado`, `tg`.`descripcion` AS `des_tg`, concat(`tu`.`nombres`,' ',`tu`.`ape_paterno`,' ',`tu`.`ape_materno`) AS `desc_usu`, if(`ga`.`id_per` = '0','',concat(`tus`.`nombres`,' ',`tus`.`ape_paterno`,' ',`tus`.`ape_materno`)) AS `desc_per` FROM (((`tm_gastos_adm` `ga` join `tm_tipo_gasto` `tg` on(`ga`.`id_tipo_gasto` = `tg`.`id_tipo_gasto`)) join `tm_usuario` `tu` on(`ga`.`id_usu` = `tu`.`id_usu`)) left join `tm_usuario` `tus` on(`ga`.`id_per` = `tus`.`id_usu`)) WHERE `ga`.`id_ga` <> 0 ORDER BY `ga`.`id_ga` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_insprod`
--
DROP TABLE IF EXISTS `v_insprod`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_insprod`  AS SELECT 1 AS `id_tipo_ins`, `i`.`id_ins` AS `id_ins`, `i`.`id_med` AS `id_med`, `i`.`id_gru` AS `id_gru`, `i`.`ins_cod` AS `ins_cod`, `i`.`ins_nom` AS `ins_nom`, `i`.`ins_cat` AS `ins_cat`, `i`.`ins_med` AS `ins_med`, 1 AS `ins_rec`, `i`.`ins_cos` AS `ins_cos`, `i`.`ins_sto` AS `ins_sto`, `i`.`ins_est` AS `est_a`, 'a' AS `est_b`, 'a' AS `est_c`, '' AS `crt_stock` FROM `v_insumos` AS `i` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_insumos`
--
DROP TABLE IF EXISTS `v_insumos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_insumos`  AS SELECT `i`.`id_ins` AS `id_ins`, `i`.`id_catg` AS `id_catg`, `i`.`id_med` AS `id_med`, `m`.`grupo` AS `id_gru`, `i`.`cod_ins` AS `ins_cod`, `i`.`nomb_ins` AS `ins_nom`, `i`.`stock_min` AS `ins_sto`, `i`.`cos_uni` AS `ins_cos`, `i`.`estado` AS `ins_est`, `ic`.`descripcion` AS `ins_cat`, `m`.`descripcion` AS `ins_med` FROM ((`tm_insumo` `i` join `tm_insumo_catg` `ic` on(`i`.`id_catg` = `ic`.`id_catg`)) join `tm_tipo_medida` `m` on(`i`.`id_med` = `m`.`id_med`)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_inventario`
--
DROP TABLE IF EXISTS `v_inventario`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_inventario`  AS SELECT `e`.`id_tipo_ins` AS `id_tipo_ins`, `e`.`id_ins` AS `id_ins`, ifnull(`e`.`total`,0) AS `ent`, '0' AS `sal` FROM `v_inventario_ent` AS `e` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_inventario_ent`
--
DROP TABLE IF EXISTS `v_inventario_ent`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_inventario_ent`  AS SELECT `tm_inventario`.`id_tipo_ins` AS `id_tipo_ins`, `tm_inventario`.`id_ins` AS `id_ins`, if(`tm_inventario`.`id_tipo_ope` = 1 or `tm_inventario`.`id_tipo_ope` = 3,sum(`tm_inventario`.`cant`),0) AS `total` FROM `tm_inventario` WHERE `tm_inventario`.`id_tipo_ope` <> 2 AND `tm_inventario`.`id_tipo_ope` <> 4 AND `tm_inventario`.`estado` <> 'i' GROUP BY `tm_inventario`.`id_tipo_ins`, `tm_inventario`.`id_ins` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_inventario_sal`
--
DROP TABLE IF EXISTS `v_inventario_sal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_inventario_sal`  AS SELECT `tm_inventario`.`id_tipo_ins` AS `id_tipo_ins`, `tm_inventario`.`id_ins` AS `id_ins`, if(`tm_inventario`.`id_tipo_ope` = 2 or `tm_inventario`.`id_tipo_ope` = 4,sum(`tm_inventario`.`cant`),0) AS `total` FROM `tm_inventario` WHERE `tm_inventario`.`id_tipo_ope` <> 1 AND `tm_inventario`.`id_tipo_ope` <> 3 AND `tm_inventario`.`estado` <> 'i' GROUP BY `tm_inventario`.`id_tipo_ins`, `tm_inventario`.`id_ins` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_listar_mesas`
--
DROP TABLE IF EXISTS `v_listar_mesas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_listar_mesas`  AS SELECT `vm`.`id_mesa` AS `id_mesa`, `vm`.`id_salon` AS `id_salon`, `vm`.`nro_mesa` AS `nro_mesa`, `vm`.`estado` AS `estado`, `vm`.`desc_salon` AS `desc_salon`, `vo`.`id_pedido` AS `id_pedido`, `vo`.`fecha_pedido` AS `fecha_pedido`, `vo`.`nro_personas` AS `nro_personas` FROM (`v_mesas` `vm` left join `v_pedido_mesa` `vo` on(`vm`.`id_mesa` = `vo`.`id_mesa`)) ORDER BY `vm`.`nro_mesa` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_mesas`
--
DROP TABLE IF EXISTS `v_mesas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_mesas`  AS SELECT `m`.`id_mesa` AS `id_mesa`, `m`.`id_salon` AS `id_salon`, `m`.`nro_mesa` AS `nro_mesa`, `m`.`estado` AS `estado`, `cm`.`descripcion` AS `desc_salon` FROM (`tm_mesa` `m` join `tm_salon` `cm` on(`m`.`id_salon` = `cm`.`id_salon`)) WHERE `m`.`id_mesa` <> 0 AND `cm`.`estado` <> 'i' ORDER BY `m`.`id_mesa` ASC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_pedidos_agrupados`
--
DROP TABLE IF EXISTS `v_pedidos_agrupados`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_pedidos_agrupados`  AS SELECT 1 AS `tipo_atencion`, `v_cocina_me`.`id_pedido` AS `id_pedido`, `v_cocina_me`.`id_areap` AS `id_areap`, `v_cocina_me`.`id_tipo` AS `id_tipo`, `v_cocina_me`.`id_pres` AS `id_pres`, sum(`v_cocina_me`.`cantidad`) AS `cantidad`, `v_cocina_me`.`comentario` AS `comentario`, `v_cocina_me`.`fecha_pedido` AS `fecha_pedido`, `v_cocina_me`.`fecha_envio` AS `fecha_envio`, `v_cocina_me`.`estado` AS `estado`, `v_cocina_me`.`nombre_prod` AS `nombre_prod`, `v_cocina_me`.`pres_prod` AS `pres_prod`, `v_cocina_me`.`nro_mesa` AS `nro_mesa`, `v_cocina_me`.`desc_salon` AS `desc_salon`, `v_cocina_me`.`ape_paterno` AS `ape_paterno`, `v_cocina_me`.`ape_materno` AS `ape_materno`, `v_cocina_me`.`nombres` AS `nombres`, `v_cocina_me`.`estado_pedido` AS `estado_pedido` FROM `v_cocina_me` GROUP BY `v_cocina_me`.`id_pedido`, `v_cocina_me`.`id_pres`, `v_cocina_me`.`fecha_pedido`, `v_cocina_me`.`comentario` ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_pedido_delivery`
--
DROP TABLE IF EXISTS `v_pedido_delivery`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_pedido_delivery`  AS SELECT `p`.`id_pedido` AS `id_pedido`, `p`.`id_tipo_pedido` AS `id_tipo_pedido`, `p`.`id_usu` AS `id_usu`, `pd`.`id_repartidor` AS `id_repartidor`, `p`.`fecha_pedido` AS `fecha_pedido`, `p`.`estado` AS `estado_pedido`, `pd`.`tipo_entrega` AS `tipo_entrega`, `pd`.`pedido_programado` AS `pedido_programado`, `pd`.`hora_entrega` AS `hora_entrega`, `pd`.`amortizacion` AS `amortizacion`, `pd`.`tipo_pago` AS `tipo_pago`, `pd`.`paga_con` AS `paga_con`, `pd`.`comision_delivery` AS `comision_delivery`, `pd`.`nro_pedido` AS `nro_pedido`, `pd`.`id_cliente` AS `id_cliente`, `c`.`tipo_cliente` AS `tipo_cliente`, `c`.`dni` AS `dni_cliente`, `c`.`ruc` AS `ruc_cliente`, `pd`.`nombre_cliente` AS `nombre_cliente`, `pd`.`telefono_cliente` AS `telefono_cliente`, `pd`.`direccion_cliente` AS `direccion_cliente`, `pd`.`referencia_cliente` AS `referencia_cliente`, `pd`.`email_cliente` AS `email_cliente`, `r`.`desc_repartidor` AS `desc_repartidor` FROM (((`tm_pedido` `p` join `tm_pedido_delivery` `pd` on(`p`.`id_pedido` = `pd`.`id_pedido`)) join `v_repartidores` `r` on(`pd`.`id_repartidor` = `r`.`id_repartidor`)) join `tm_cliente` `c` on(`pd`.`id_cliente` = `c`.`id_cliente`)) WHERE `p`.`id_pedido` <> 0 ORDER BY `p`.`id_pedido` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_pedido_llevar`
--
DROP TABLE IF EXISTS `v_pedido_llevar`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_pedido_llevar`  AS SELECT `p`.`id_pedido` AS `id_pedido`, `p`.`id_tipo_pedido` AS `id_tipo_pedido`, `p`.`id_usu` AS `id_usu`, `p`.`fecha_pedido` AS `fecha_pedido`, `p`.`estado` AS `estado_pedido`, `pl`.`nro_pedido` AS `nro_pedido`, `pl`.`nomb_cliente` AS `nombre_cliente` FROM (`tm_pedido` `p` join `tm_pedido_llevar` `pl` on(`p`.`id_pedido` = `pl`.`id_pedido`)) WHERE `p`.`id_pedido` <> 0 ORDER BY `p`.`id_pedido` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_pedido_mesa`
--
DROP TABLE IF EXISTS `v_pedido_mesa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_pedido_mesa`  AS SELECT `p`.`id_pedido` AS `id_pedido`, `p`.`id_tipo_pedido` AS `id_tipo_pedido`, `p`.`id_usu` AS `id_usu`, `pm`.`id_mesa` AS `id_mesa`, `p`.`fecha_pedido` AS `fecha_pedido`, `p`.`estado` AS `estado_pedido`, `pm`.`nomb_cliente` AS `nombre_cliente`, `pm`.`nro_personas` AS `nro_personas`, `vm`.`nro_mesa` AS `nro_mesa`, `vm`.`desc_salon` AS `desc_salon`, `vm`.`estado` AS `estado_mesa`, concat(`u`.`nombres`,' ',`u`.`ape_paterno`) AS `nombre_mozo` FROM (((`tm_pedido` `p` join `tm_pedido_mesa` `pm` on(`p`.`id_pedido` = `pm`.`id_pedido`)) join `v_mesas` `vm` on(`pm`.`id_mesa` = `vm`.`id_mesa`)) join `tm_usuario` `u` on(`pm`.`id_mozo` = `u`.`id_usu`)) WHERE `p`.`id_pedido` <> 0 AND `p`.`estado` = 'a' ORDER BY `p`.`id_pedido` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_productos`
--
DROP TABLE IF EXISTS `v_productos`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_productos`  AS SELECT `pp`.`id_pres` AS `id_pres`, `pp`.`id_prod` AS `id_prod`, `p`.`id_tipo` AS `id_tipo`, `p`.`id_catg` AS `id_catg`, `p`.`id_areap` AS `id_areap`, `cp`.`descripcion` AS `pro_cat`, `pp`.`cod_prod` AS `pro_cod`, `p`.`nombre` AS `pro_nom`, `pp`.`presentacion` AS `pro_pre`, ifnull(`pp`.`descripcion`,'') AS `pro_des`, `pp`.`precio` AS `pro_cos`, `pp`.`precio_delivery` AS `pro_cos_del`, `pp`.`receta` AS `pro_rec`, `pp`.`stock_min` AS `pro_sto`, `pp`.`impuesto` AS `pro_imp`, `pp`.`margen` AS `pro_mar`, `pp`.`igv` AS `pro_igv`, `pp`.`imagen` AS `pro_img`, `cp`.`delivery` AS `del_a`, `p`.`delivery` AS `del_b`, `pp`.`delivery` AS `del_c`, `cp`.`estado` AS `est_a`, `p`.`estado` AS `est_b`, `pp`.`estado` AS `est_c`, `pp`.`crt_stock` AS `crt_stock` FROM ((`tm_producto_pres` `pp` join `tm_producto` `p` on(`pp`.`id_prod` = `p`.`id_prod`)) join `tm_producto_catg` `cp` on(`p`.`id_catg` = `cp`.`id_catg`)) WHERE `pp`.`id_pres` <> 0 ORDER BY `pp`.`id_pres` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_repartidores`
--
DROP TABLE IF EXISTS `v_repartidores`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_repartidores`  AS SELECT `tm_usuario`.`id_usu` AS `id_repartidor`, concat(`tm_usuario`.`nombres`,' ',`tm_usuario`.`ape_paterno`,' ',`tm_usuario`.`ape_materno`) AS `desc_repartidor` FROM `tm_usuario` WHERE `tm_usuario`.`id_rol` = 6 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_stock`
--
DROP TABLE IF EXISTS `v_stock`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_stock`  AS  (select `a`.`id_tipo_ins` AS `id_tipo_ins`,`a`.`id_ins` AS `id_ins`,sum(`a`.`ent`) AS `ent`,sum(`a`.`sal`) AS `sal`,`b`.`est_a` AS `est_a`,`b`.`est_b` AS `est_b`,if(`a`.`ent` - `a`.`sal` > `b`.`ins_sto`,1,0) AS `debajo_stock` from (`v_inventario` `a` join `v_insprod` `b` on(`a`.`id_tipo_ins` = `b`.`id_tipo_ins` and `a`.`id_ins` = `b`.`id_ins`)) where `b`.`est_a` = 'a' and `b`.`est_b` = 'a' and `b`.`ins_rec` = 1 group by `a`.`id_tipo_ins`,`a`.`id_ins`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_stock_pedido`
--
DROP TABLE IF EXISTS `v_stock_pedido`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_stock_pedido`  AS  (select `c`.`id_pres` AS `id_ins`,ifnull((select sum(`b`.`ent`) from `v_inventario` `b` where `b`.`id_ins` = `c`.`id_pres` group by `c`.`id_pres`),0) AS `ent`,ifnull((select sum(`a`.`cant`) from `tm_detalle_pedido` `a` where `a`.`id_pres` = `c`.`id_pres` and `a`.`estado` = 'a' group by `c`.`id_pres`),0) AS `sal`,(select `d`.`crt_stock` from `tm_producto_pres` `d` where `d`.`id_pres` = `c`.`id_pres` group by `c`.`id_pres`) AS `control` from `tm_producto_pres` `c` where `c`.`crt_stock` = 1 group by `c`.`id_pres`) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_usuarios`
--
DROP TABLE IF EXISTS `v_usuarios`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_usuarios`  AS SELECT `u`.`id_usu` AS `id_usu`, `u`.`id_rol` AS `id_rol`, `u`.`id_areap` AS `id_areap`, `u`.`dni` AS `dni`, `u`.`ape_paterno` AS `ape_paterno`, `u`.`ape_materno` AS `ape_materno`, `u`.`nombres` AS `nombres`, `u`.`email` AS `email`, `u`.`usuario` AS `usuario`, `u`.`contrasena` AS `contrasena`, `u`.`estado` AS `estado`, `u`.`imagen` AS `imagen`, `r`.`descripcion` AS `desc_r`, `p`.`nombre` AS `desc_ap` FROM ((`tm_usuario` `u` join `tm_rol` `r` on(`u`.`id_rol` = `r`.`id_rol`)) left join `tm_area_prod` `p` on(`u`.`id_areap` = `p`.`id_areap`)) WHERE `u`.`id_usu` <> 0 ORDER BY `u`.`id_usu` DESC ;

-- --------------------------------------------------------

--
-- Estructura para la vista `v_ventas_con`
--
DROP TABLE IF EXISTS `v_ventas_con`;

CREATE ALGORITHM=UNDEFINED DEFINER=`cpses_na6yshisy5`@`localhost` SQL SECURITY DEFINER VIEW `v_ventas_con`  AS SELECT `v`.`id_venta` AS `id_ven`, `v`.`id_pedido` AS `id_ped`, `v`.`id_tipo_pedido` AS `id_tped`, `v`.`id_cliente` AS `id_cli`, `v`.`id_tipo_doc` AS `id_tdoc`, `v`.`id_tipo_pago` AS `id_tpag`, `v`.`id_usu` AS `id_usu`, `v`.`id_apc` AS `id_apc`, `v`.`serie_doc` AS `ser_doc`, `v`.`nro_doc` AS `nro_doc`, `v`.`pago_efe` AS `pago_efe`, `v`.`pago_efe_none` AS `pago_efe_none`, `v`.`pago_tar` AS `pago_tar`, `v`.`descuento_monto` AS `desc_monto`, `v`.`descuento_tipo` AS `desc_tipo`, `v`.`descuento_personal` AS `desc_personal`, `v`.`descuento_motivo` AS `desc_motivo`, `v`.`comision_tarjeta` AS `comis_tar`, `v`.`comision_delivery` AS `comis_del`, `v`.`igv` AS `igv`, `v`.`total` AS `total`, `v`.`codigo_operacion` AS `codigo_operacion`, `v`.`fecha_venta` AS `fec_ven`, `v`.`estado` AS `estado`, `v`.`enviado_sunat` AS `enviado_sunat`, `v`.`code_respuesta_sunat` AS `code_respuesta_sunat`, `v`.`descripcion_sunat_cdr` AS `descripcion_sunat_cdr`, `v`.`name_file_sunat` AS `name_file_sunat`, `v`.`hash_cdr` AS `hash_cdr`, `v`.`hash_cpe` AS `hash_cpe`, `v`.`fecha_vencimiento` AS `fecha_vencimiento`, `td`.`descripcion` AS `desc_td`, `tp`.`descripcion` AS `desc_tp`, concat(`tu`.`ape_paterno`,' ',`tu`.`ape_materno`,' ',`tu`.`nombres`) AS `desc_usu` FROM (((`tm_venta` `v` join `tm_tipo_doc` `td` on(`v`.`id_tipo_doc` = `td`.`id_tipo_doc`)) join `tm_tipo_pago` `tp` on(`v`.`id_tipo_pago` = `tp`.`id_tipo_pago`)) join `tm_usuario` `tu` on(`v`.`id_usu` = `tu`.`id_usu`)) WHERE `v`.`id_venta` <> 0 ORDER BY `v`.`id_venta` DESC ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `comunicacion_baja`
--
ALTER TABLE `comunicacion_baja`
  ADD PRIMARY KEY (`id_comunicacion`);

--
-- Indices de la tabla `resumen_diario`
--
ALTER TABLE `resumen_diario`
  ADD PRIMARY KEY (`id_resumen`);

--
-- Indices de la tabla `resumen_diario_detalle`
--
ALTER TABLE `resumen_diario_detalle`
  ADD PRIMARY KEY (`id_detalle`),
  ADD KEY `FK_RDD_RES` (`id_resumen`),
  ADD KEY `FK_RDD_VEN` (`id_venta`);

--
-- Indices de la tabla `tm_almacen`
--
ALTER TABLE `tm_almacen`
  ADD PRIMARY KEY (`id_alm`);

--
-- Indices de la tabla `tm_aper_cierre`
--
ALTER TABLE `tm_aper_cierre`
  ADD PRIMARY KEY (`id_apc`),
  ADD KEY `FK_ac_caja` (`id_caja`),
  ADD KEY `FK_ac_turno` (`id_turno`),
  ADD KEY `FK_ac_usu` (`id_usu`);

--
-- Indices de la tabla `tm_area_prod`
--
ALTER TABLE `tm_area_prod`
  ADD PRIMARY KEY (`id_areap`),
  ADD KEY `FK_ap_alm` (`id_imp`);

--
-- Indices de la tabla `tm_caja`
--
ALTER TABLE `tm_caja`
  ADD PRIMARY KEY (`id_caja`);

--
-- Indices de la tabla `tm_cliente`
--
ALTER TABLE `tm_cliente`
  ADD PRIMARY KEY (`id_cliente`);

--
-- Indices de la tabla `tm_compra`
--
ALTER TABLE `tm_compra`
  ADD PRIMARY KEY (`id_compra`),
  ADD KEY `FK_comp_prov` (`id_prov`),
  ADD KEY `FK_comp_tipoc` (`id_tipo_compra`),
  ADD KEY `FK_comp_tipod` (`id_tipo_doc`),
  ADD KEY `FK_comp_usu` (`id_usu`);

--
-- Indices de la tabla `tm_compra_credito`
--
ALTER TABLE `tm_compra_credito`
  ADD PRIMARY KEY (`id_credito`),
  ADD KEY `FK_CC_ID_COMPRA_idx` (`id_compra`);

--
-- Indices de la tabla `tm_compra_detalle`
--
ALTER TABLE `tm_compra_detalle`
  ADD KEY `FK_CDET_COM` (`id_compra`);

--
-- Indices de la tabla `tm_configuracion`
--
ALTER TABLE `tm_configuracion`
  ADD PRIMARY KEY (`id_cfg`);

--
-- Indices de la tabla `tm_credito_detalle`
--
ALTER TABLE `tm_credito_detalle`
  ADD KEY `FK_cred_usu` (`id_usu`),
  ADD KEY `FK_CRED_CRED` (`id_credito`);

--
-- Indices de la tabla `tm_detalle_pedido`
--
ALTER TABLE `tm_detalle_pedido`
  ADD KEY `FK_DPED_PRES` (`id_pres`),
  ADD KEY `FK_DPED_PED` (`id_pedido`),
  ADD KEY `FK_DPED_USU` (`id_usu`);

--
-- Indices de la tabla `tm_detalle_venta`
--
ALTER TABLE `tm_detalle_venta`
  ADD KEY `FK_DVEN_VEN` (`id_venta`),
  ADD KEY `FK_DVEN_PRES` (`id_prod`);

--
-- Indices de la tabla `tm_empresa`
--
ALTER TABLE `tm_empresa`
  ADD PRIMARY KEY (`id_de`);

--
-- Indices de la tabla `tm_gastos_adm`
--
ALTER TABLE `tm_gastos_adm`
  ADD PRIMARY KEY (`id_ga`),
  ADD KEY `FK_gasto_tg` (`id_tipo_gasto`),
  ADD KEY `FK_EADM_APC` (`id_apc`),
  ADD KEY `FK_EADM_USU` (`id_usu`);

--
-- Indices de la tabla `tm_impresora`
--
ALTER TABLE `tm_impresora`
  ADD PRIMARY KEY (`id_imp`);

--
-- Indices de la tabla `tm_ingresos_adm`
--
ALTER TABLE `tm_ingresos_adm`
  ADD PRIMARY KEY (`id_ing`),
  ADD KEY `FK_IADM_USU` (`id_usu`),
  ADD KEY `FK_IADM_APC` (`id_apc`);

--
-- Indices de la tabla `tm_insumo`
--
ALTER TABLE `tm_insumo`
  ADD PRIMARY KEY (`id_ins`),
  ADD KEY `FK_ins_catg` (`id_catg`),
  ADD KEY `FK_ins_med` (`id_med`);

--
-- Indices de la tabla `tm_insumo_catg`
--
ALTER TABLE `tm_insumo_catg`
  ADD PRIMARY KEY (`id_catg`);

--
-- Indices de la tabla `tm_inventario`
--
ALTER TABLE `tm_inventario`
  ADD PRIMARY KEY (`id_inv`);

--
-- Indices de la tabla `tm_inventario_entsal`
--
ALTER TABLE `tm_inventario_entsal`
  ADD PRIMARY KEY (`id_es`),
  ADD KEY `FK_INVES_USU` (`id_usu`),
  ADD KEY `FK_INVES_RESP` (`id_responsable`);

--
-- Indices de la tabla `tm_margen_venta`
--
ALTER TABLE `tm_margen_venta`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tm_mesa`
--
ALTER TABLE `tm_mesa`
  ADD PRIMARY KEY (`id_mesa`),
  ADD KEY `FKM_IDCATG_idx` (`id_salon`);

--
-- Indices de la tabla `tm_pago`
--
ALTER TABLE `tm_pago`
  ADD PRIMARY KEY (`id_pago`);

--
-- Indices de la tabla `tm_pedido`
--
ALTER TABLE `tm_pedido`
  ADD PRIMARY KEY (`id_pedido`),
  ADD KEY `FK_ped_tp` (`id_tipo_pedido`),
  ADD KEY `FK_ped_usu` (`id_usu`),
  ADD KEY `FK_ped_apc` (`id_apc`);

--
-- Indices de la tabla `tm_pedido_delivery`
--
ALTER TABLE `tm_pedido_delivery`
  ADD KEY `FK_peddel_ped` (`id_pedido`),
  ADD KEY `FK_peddel_cli` (`id_cliente`);

--
-- Indices de la tabla `tm_pedido_llevar`
--
ALTER TABLE `tm_pedido_llevar`
  ADD KEY `FK_pedlle_ped` (`id_pedido`);

--
-- Indices de la tabla `tm_pedido_mesa`
--
ALTER TABLE `tm_pedido_mesa`
  ADD KEY `FK_pedme_ped` (`id_pedido`),
  ADD KEY `FK_pedme_mesa` (`id_mesa`),
  ADD KEY `FK_pedme_mozo` (`id_mozo`);

--
-- Indices de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD PRIMARY KEY (`id_prod`),
  ADD KEY `FK_prod_catg` (`id_catg`),
  ADD KEY `FK_prod_area` (`id_areap`);

--
-- Indices de la tabla `tm_producto_catg`
--
ALTER TABLE `tm_producto_catg`
  ADD PRIMARY KEY (`id_catg`);

--
-- Indices de la tabla `tm_producto_ingr`
--
ALTER TABLE `tm_producto_ingr`
  ADD PRIMARY KEY (`id_pi`),
  ADD KEY `FK_PING_PRES` (`id_pres`),
  ADD KEY `FK_PING_INS` (`id_ins`),
  ADD KEY `FK_PING_MED` (`id_med`);

--
-- Indices de la tabla `tm_producto_pres`
--
ALTER TABLE `tm_producto_pres`
  ADD PRIMARY KEY (`id_pres`),
  ADD KEY `FK_PROP_PROD` (`id_prod`);

--
-- Indices de la tabla `tm_proveedor`
--
ALTER TABLE `tm_proveedor`
  ADD PRIMARY KEY (`id_prov`);

--
-- Indices de la tabla `tm_repartidor`
--
ALTER TABLE `tm_repartidor`
  ADD PRIMARY KEY (`id_repartidor`);

--
-- Indices de la tabla `tm_rol`
--
ALTER TABLE `tm_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `tm_salon`
--
ALTER TABLE `tm_salon`
  ADD PRIMARY KEY (`id_salon`);

--
-- Indices de la tabla `tm_tipo_compra`
--
ALTER TABLE `tm_tipo_compra`
  ADD PRIMARY KEY (`id_tipo_compra`);

--
-- Indices de la tabla `tm_tipo_doc`
--
ALTER TABLE `tm_tipo_doc`
  ADD PRIMARY KEY (`id_tipo_doc`);

--
-- Indices de la tabla `tm_tipo_gasto`
--
ALTER TABLE `tm_tipo_gasto`
  ADD PRIMARY KEY (`id_tipo_gasto`);

--
-- Indices de la tabla `tm_tipo_medida`
--
ALTER TABLE `tm_tipo_medida`
  ADD PRIMARY KEY (`id_med`);

--
-- Indices de la tabla `tm_tipo_pago`
--
ALTER TABLE `tm_tipo_pago`
  ADD PRIMARY KEY (`id_tipo_pago`),
  ADD KEY `FK_TIPODEPAGO` (`id_pago`);

--
-- Indices de la tabla `tm_tipo_pedido`
--
ALTER TABLE `tm_tipo_pedido`
  ADD PRIMARY KEY (`id_tipo_pedido`);

--
-- Indices de la tabla `tm_tipo_venta`
--
ALTER TABLE `tm_tipo_venta`
  ADD PRIMARY KEY (`id_tipo_venta`);

--
-- Indices de la tabla `tm_turno`
--
ALTER TABLE `tm_turno`
  ADD PRIMARY KEY (`id_turno`);

--
-- Indices de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD PRIMARY KEY (`id_usu`),
  ADD KEY `FKU_IDROL_idx` (`id_rol`);

--
-- Indices de la tabla `tm_venta`
--
ALTER TABLE `tm_venta`
  ADD PRIMARY KEY (`id_venta`),
  ADD KEY `FK_venta_cli` (`id_cliente`),
  ADD KEY `FK_venta_td` (`id_tipo_doc`),
  ADD KEY `FK_venta_tp` (`id_tipo_pago`),
  ADD KEY `FK_venta_usu` (`id_usu`),
  ADD KEY `FK_venta_apc` (`id_apc`),
  ADD KEY `FK_venta_tpe` (`id_tipo_pedido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `comunicacion_baja`
--
ALTER TABLE `comunicacion_baja`
  MODIFY `id_comunicacion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `resumen_diario`
--
ALTER TABLE `resumen_diario`
  MODIFY `id_resumen` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `resumen_diario_detalle`
--
ALTER TABLE `resumen_diario_detalle`
  MODIFY `id_detalle` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_almacen`
--
ALTER TABLE `tm_almacen`
  MODIFY `id_alm` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_aper_cierre`
--
ALTER TABLE `tm_aper_cierre`
  MODIFY `id_apc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT de la tabla `tm_area_prod`
--
ALTER TABLE `tm_area_prod`
  MODIFY `id_areap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tm_caja`
--
ALTER TABLE `tm_caja`
  MODIFY `id_caja` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tm_cliente`
--
ALTER TABLE `tm_cliente`
  MODIFY `id_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `tm_compra`
--
ALTER TABLE `tm_compra`
  MODIFY `id_compra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_compra_credito`
--
ALTER TABLE `tm_compra_credito`
  MODIFY `id_credito` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_configuracion`
--
ALTER TABLE `tm_configuracion`
  MODIFY `id_cfg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tm_empresa`
--
ALTER TABLE `tm_empresa`
  MODIFY `id_de` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `tm_gastos_adm`
--
ALTER TABLE `tm_gastos_adm`
  MODIFY `id_ga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_impresora`
--
ALTER TABLE `tm_impresora`
  MODIFY `id_imp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tm_ingresos_adm`
--
ALTER TABLE `tm_ingresos_adm`
  MODIFY `id_ing` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_insumo`
--
ALTER TABLE `tm_insumo`
  MODIFY `id_ins` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_insumo_catg`
--
ALTER TABLE `tm_insumo_catg`
  MODIFY `id_catg` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_inventario`
--
ALTER TABLE `tm_inventario`
  MODIFY `id_inv` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_inventario_entsal`
--
ALTER TABLE `tm_inventario_entsal`
  MODIFY `id_es` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_margen_venta`
--
ALTER TABLE `tm_margen_venta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `tm_mesa`
--
ALTER TABLE `tm_mesa`
  MODIFY `id_mesa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT de la tabla `tm_pago`
--
ALTER TABLE `tm_pago`
  MODIFY `id_pago` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_pedido`
--
ALTER TABLE `tm_pedido`
  MODIFY `id_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1011;

--
-- AUTO_INCREMENT de la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  MODIFY `id_prod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `tm_producto_catg`
--
ALTER TABLE `tm_producto_catg`
  MODIFY `id_catg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `tm_producto_ingr`
--
ALTER TABLE `tm_producto_ingr`
  MODIFY `id_pi` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_producto_pres`
--
ALTER TABLE `tm_producto_pres`
  MODIFY `id_pres` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT de la tabla `tm_proveedor`
--
ALTER TABLE `tm_proveedor`
  MODIFY `id_prov` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tm_repartidor`
--
ALTER TABLE `tm_repartidor`
  MODIFY `id_repartidor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4446;

--
-- AUTO_INCREMENT de la tabla `tm_rol`
--
ALTER TABLE `tm_rol`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `tm_salon`
--
ALTER TABLE `tm_salon`
  MODIFY `id_salon` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tm_tipo_compra`
--
ALTER TABLE `tm_tipo_compra`
  MODIFY `id_tipo_compra` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_tipo_doc`
--
ALTER TABLE `tm_tipo_doc`
  MODIFY `id_tipo_doc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tm_tipo_gasto`
--
ALTER TABLE `tm_tipo_gasto`
  MODIFY `id_tipo_gasto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `tm_tipo_medida`
--
ALTER TABLE `tm_tipo_medida`
  MODIFY `id_med` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `tm_tipo_pago`
--
ALTER TABLE `tm_tipo_pago`
  MODIFY `id_tipo_pago` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tm_tipo_pedido`
--
ALTER TABLE `tm_tipo_pedido`
  MODIFY `id_tipo_pedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `tm_tipo_venta`
--
ALTER TABLE `tm_tipo_venta`
  MODIFY `id_tipo_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_turno`
--
ALTER TABLE `tm_turno`
  MODIFY `id_turno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  MODIFY `id_usu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT de la tabla `tm_venta`
--
ALTER TABLE `tm_venta`
  MODIFY `id_venta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=916;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `resumen_diario_detalle`
--
ALTER TABLE `resumen_diario_detalle`
  ADD CONSTRAINT `FK_RDD_RES` FOREIGN KEY (`id_resumen`) REFERENCES `resumen_diario` (`id_resumen`),
  ADD CONSTRAINT `FK_RDD_VEN` FOREIGN KEY (`id_venta`) REFERENCES `tm_venta` (`id_venta`);

--
-- Filtros para la tabla `tm_aper_cierre`
--
ALTER TABLE `tm_aper_cierre`
  ADD CONSTRAINT `FK_ac_caja` FOREIGN KEY (`id_caja`) REFERENCES `tm_caja` (`id_caja`),
  ADD CONSTRAINT `FK_ac_turno` FOREIGN KEY (`id_turno`) REFERENCES `tm_turno` (`id_turno`),
  ADD CONSTRAINT `FK_ac_usu` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_area_prod`
--
ALTER TABLE `tm_area_prod`
  ADD CONSTRAINT `FK_AP_IMP` FOREIGN KEY (`id_imp`) REFERENCES `tm_impresora` (`id_imp`);

--
-- Filtros para la tabla `tm_compra`
--
ALTER TABLE `tm_compra`
  ADD CONSTRAINT `FK_comp_prov` FOREIGN KEY (`id_prov`) REFERENCES `tm_proveedor` (`id_prov`),
  ADD CONSTRAINT `FK_comp_tipoc` FOREIGN KEY (`id_tipo_compra`) REFERENCES `tm_tipo_compra` (`id_tipo_compra`),
  ADD CONSTRAINT `FK_comp_tipod` FOREIGN KEY (`id_tipo_doc`) REFERENCES `tm_tipo_doc` (`id_tipo_doc`),
  ADD CONSTRAINT `FK_comp_usu` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_compra_credito`
--
ALTER TABLE `tm_compra_credito`
  ADD CONSTRAINT `FK_compcre_idcomp` FOREIGN KEY (`id_compra`) REFERENCES `tm_compra` (`id_compra`);

--
-- Filtros para la tabla `tm_compra_detalle`
--
ALTER TABLE `tm_compra_detalle`
  ADD CONSTRAINT `FK_CDET_COM` FOREIGN KEY (`id_compra`) REFERENCES `tm_compra` (`id_compra`);

--
-- Filtros para la tabla `tm_credito_detalle`
--
ALTER TABLE `tm_credito_detalle`
  ADD CONSTRAINT `FK_CRED_CRED` FOREIGN KEY (`id_credito`) REFERENCES `tm_compra_credito` (`id_credito`),
  ADD CONSTRAINT `FK_cred_usu` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_detalle_pedido`
--
ALTER TABLE `tm_detalle_pedido`
  ADD CONSTRAINT `FK_DPED_PED` FOREIGN KEY (`id_pedido`) REFERENCES `tm_pedido` (`id_pedido`),
  ADD CONSTRAINT `FK_DPED_PRES` FOREIGN KEY (`id_pres`) REFERENCES `tm_producto_pres` (`id_pres`),
  ADD CONSTRAINT `FK_DPED_USU` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_detalle_venta`
--
ALTER TABLE `tm_detalle_venta`
  ADD CONSTRAINT `FK_DVEN_VEN` FOREIGN KEY (`id_venta`) REFERENCES `tm_venta` (`id_venta`);

--
-- Filtros para la tabla `tm_gastos_adm`
--
ALTER TABLE `tm_gastos_adm`
  ADD CONSTRAINT `FK_EADM_APC` FOREIGN KEY (`id_apc`) REFERENCES `tm_aper_cierre` (`id_apc`),
  ADD CONSTRAINT `FK_EADM_TGAS` FOREIGN KEY (`id_tipo_gasto`) REFERENCES `tm_tipo_gasto` (`id_tipo_gasto`),
  ADD CONSTRAINT `FK_EADM_USU` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_ingresos_adm`
--
ALTER TABLE `tm_ingresos_adm`
  ADD CONSTRAINT `FK_IADM_APC` FOREIGN KEY (`id_apc`) REFERENCES `tm_aper_cierre` (`id_apc`),
  ADD CONSTRAINT `FK_IADM_USU` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_insumo`
--
ALTER TABLE `tm_insumo`
  ADD CONSTRAINT `FK_ins_catg` FOREIGN KEY (`id_catg`) REFERENCES `tm_insumo_catg` (`id_catg`),
  ADD CONSTRAINT `FK_ins_med` FOREIGN KEY (`id_med`) REFERENCES `tm_tipo_medida` (`id_med`);

--
-- Filtros para la tabla `tm_inventario_entsal`
--
ALTER TABLE `tm_inventario_entsal`
  ADD CONSTRAINT `FK_INVES_RESP` FOREIGN KEY (`id_responsable`) REFERENCES `tm_usuario` (`id_usu`),
  ADD CONSTRAINT `FK_INVES_USU` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_mesa`
--
ALTER TABLE `tm_mesa`
  ADD CONSTRAINT `fk_mesa_salon` FOREIGN KEY (`id_salon`) REFERENCES `tm_salon` (`id_salon`);

--
-- Filtros para la tabla `tm_pedido`
--
ALTER TABLE `tm_pedido`
  ADD CONSTRAINT `FK_ped_tp` FOREIGN KEY (`id_tipo_pedido`) REFERENCES `tm_tipo_pedido` (`id_tipo_pedido`),
  ADD CONSTRAINT `FK_ped_usu` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);

--
-- Filtros para la tabla `tm_pedido_delivery`
--
ALTER TABLE `tm_pedido_delivery`
  ADD CONSTRAINT `FK_peddel_cli` FOREIGN KEY (`id_cliente`) REFERENCES `tm_cliente` (`id_cliente`),
  ADD CONSTRAINT `FK_peddel_ped` FOREIGN KEY (`id_pedido`) REFERENCES `tm_pedido` (`id_pedido`);

--
-- Filtros para la tabla `tm_pedido_llevar`
--
ALTER TABLE `tm_pedido_llevar`
  ADD CONSTRAINT `FK_pedlle_ped` FOREIGN KEY (`id_pedido`) REFERENCES `tm_pedido` (`id_pedido`);

--
-- Filtros para la tabla `tm_pedido_mesa`
--
ALTER TABLE `tm_pedido_mesa`
  ADD CONSTRAINT `FK_pedme_mesa` FOREIGN KEY (`id_mesa`) REFERENCES `tm_mesa` (`id_mesa`),
  ADD CONSTRAINT `FK_pedme_mozo` FOREIGN KEY (`id_mozo`) REFERENCES `tm_usuario` (`id_usu`),
  ADD CONSTRAINT `FK_pedme_ped` FOREIGN KEY (`id_pedido`) REFERENCES `tm_pedido` (`id_pedido`);

--
-- Filtros para la tabla `tm_producto`
--
ALTER TABLE `tm_producto`
  ADD CONSTRAINT `FK_prod_area` FOREIGN KEY (`id_areap`) REFERENCES `tm_area_prod` (`id_areap`),
  ADD CONSTRAINT `FK_prod_catg` FOREIGN KEY (`id_catg`) REFERENCES `tm_producto_catg` (`id_catg`);

--
-- Filtros para la tabla `tm_producto_ingr`
--
ALTER TABLE `tm_producto_ingr`
  ADD CONSTRAINT `FK_PING_MED` FOREIGN KEY (`id_med`) REFERENCES `tm_tipo_medida` (`id_med`),
  ADD CONSTRAINT `FK_PING_PRES` FOREIGN KEY (`id_pres`) REFERENCES `tm_producto_pres` (`id_pres`);

--
-- Filtros para la tabla `tm_producto_pres`
--
ALTER TABLE `tm_producto_pres`
  ADD CONSTRAINT `FK_PROP_PROD` FOREIGN KEY (`id_prod`) REFERENCES `tm_producto` (`id_prod`);

--
-- Filtros para la tabla `tm_tipo_pago`
--
ALTER TABLE `tm_tipo_pago`
  ADD CONSTRAINT `FK_TIPODEPAGO` FOREIGN KEY (`id_pago`) REFERENCES `tm_pago` (`id_pago`);

--
-- Filtros para la tabla `tm_usuario`
--
ALTER TABLE `tm_usuario`
  ADD CONSTRAINT `FK_usu_rol` FOREIGN KEY (`id_rol`) REFERENCES `tm_rol` (`id_rol`);

--
-- Filtros para la tabla `tm_venta`
--
ALTER TABLE `tm_venta`
  ADD CONSTRAINT `FK_venta_apc` FOREIGN KEY (`id_apc`) REFERENCES `tm_aper_cierre` (`id_apc`),
  ADD CONSTRAINT `FK_venta_cli` FOREIGN KEY (`id_cliente`) REFERENCES `tm_cliente` (`id_cliente`),
  ADD CONSTRAINT `FK_venta_td` FOREIGN KEY (`id_tipo_doc`) REFERENCES `tm_tipo_doc` (`id_tipo_doc`),
  ADD CONSTRAINT `FK_venta_tp` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tm_tipo_pago` (`id_tipo_pago`),
  ADD CONSTRAINT `FK_venta_tpe` FOREIGN KEY (`id_tipo_pedido`) REFERENCES `tm_tipo_pedido` (`id_tipo_pedido`),
  ADD CONSTRAINT `FK_venta_usu` FOREIGN KEY (`id_usu`) REFERENCES `tm_usuario` (`id_usu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
