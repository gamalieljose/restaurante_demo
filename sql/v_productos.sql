--
-- Temporary table structure for view `v_productos`
--

DROP TABLE IF EXISTS `v_productos`;
/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_productos` (
  `id_pres` tinyint NOT NULL,
  `id_prod` tinyint NOT NULL,
  `id_tipo` tinyint NOT NULL,
  `id_catg` tinyint NOT NULL,
  `id_areap` tinyint NOT NULL,
  `pro_cat` tinyint NOT NULL,
  `pro_cod` tinyint NOT NULL,
  `pro_nom` tinyint NOT NULL,
  `pro_pre` tinyint NOT NULL,
  `pro_des` tinyint NOT NULL,
  `pro_cos` tinyint NOT NULL,
  `pro_cos_del` tinyint NOT NULL,
  `pro_rec` tinyint NOT NULL,
  `pro_sto` tinyint NOT NULL,
  `pro_imp` tinyint NOT NULL,
  `pro_mar` tinyint NOT NULL,
  `pro_igv` tinyint NOT NULL,
  `pro_img` tinyint NOT NULL,
  `del_a` tinyint NOT NULL,
  `del_b` tinyint NOT NULL,
  `del_c` tinyint NOT NULL,
  `est_a` tinyint NOT NULL,
  `est_b` tinyint NOT NULL,
  `est_c` tinyint NOT NULL,
  `crt_stock` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;




--
-- Final view structure for view `v_productos`
--

/*!50001 DROP TABLE IF EXISTS `v_productos`*/;
/*!50001 DROP VIEW IF EXISTS `v_productos`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 SQL SECURITY DEFINER */
/*!50001 VIEW `v_productos` AS select `pp`.`id_pres` AS `id_pres`, `pp`.`id_prod` AS `id_prod`, `p`.`id_tipo` AS `id_tipo`, `p`.`id_catg` AS `id_catg`, `p`.`id_areap` AS `id_areap`, `cp`.`descripcion` AS `pro_cat`, `pp`.`cod_prod` AS `pro_cod`, `p`.`nombre` AS `pro_nom`, `pp`.`presentacion` AS `pro_pre`, ifnull(`pp`.`descripcion`, '') AS `pro_des`, `pp`.`precio` AS `pro_cos`, `pp`.`precio_delivery` AS `pro_cos_del`, `pp`.`receta` AS `pro_rec`, `pp`.`stock_min` AS `pro_sto`, `pp`.`impuesto` AS `pro_imp`, `pp`.`margen` AS `pro_mar`, `pp`.`igv` AS `pro_igv`, `pp`.`imagen` AS `pro_img`, `cp`.`delivery` AS `del_a`, `p`.`delivery` AS `del_b`, `pp`.`delivery` AS `del_c`, `cp`.`estado` AS `est_a`, `p`.`estado` AS `est_b`, `pp`.`estado` AS `est_c`, `pp`.`crt_stock` AS `crt_stock` from ((`tm_producto_pres` `pp` join `tm_producto` `p` on(`pp`.`id_prod` = `p`.`id_prod`)) join `tm_producto_catg` `cp` on(`p`.`id_catg` = `cp`.`id_catg`)) where `pp`.`id_pres` <> 0 order by `pp`.`id_pres` desc */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
