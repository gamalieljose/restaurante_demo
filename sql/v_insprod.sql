
--
-- Temporary table structure for view `v_insprod`
--

DROP TABLE IF EXISTS `v_insprod`;
/*!50001 DROP VIEW IF EXISTS `v_insprod`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_insprod` (
  `id_tipo_ins` tinyint NOT NULL,
  `id_ins` tinyint NOT NULL,
  `id_med` tinyint NOT NULL,
  `id_gru` tinyint NOT NULL,
  `ins_cod` tinyint NOT NULL,
  `ins_nom` tinyint NOT NULL,
  `ins_cat` tinyint NOT NULL,
  `ins_med` tinyint NOT NULL,
  `ins_rec` tinyint NOT NULL,
  `ins_cos` tinyint NOT NULL,
  `ins_sto` tinyint NOT NULL,
  `est_a` tinyint NOT NULL,
  `est_b` tinyint NOT NULL,
  `est_c` tinyint NOT NULL,
  `crt_stock` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `v_insprod`
--

/*!50001 DROP TABLE IF EXISTS `v_insprod`*/;
/*!50001 DROP VIEW IF EXISTS `v_insprod`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 SQL SECURITY DEFINER */
/*!50001 VIEW `v_insprod` AS select 1 AS `id_tipo_ins`, `i`.`id_ins` AS `id_ins`, `i`.`id_med` AS `id_med`, `i`.`id_gru` AS `id_gru`, `i`.`ins_cod` AS `ins_cod`, `i`.`ins_nom` AS `ins_nom`, `i`.`ins_cat` AS `ins_cat`, `i`.`ins_med` AS `ins_med`, 1 AS `ins_rec`, `i`.`ins_cos` AS `ins_cos`, `i`.`ins_sto` AS `ins_sto`, `i`.`ins_est` AS `est_a`, 'a' AS `est_b`, 'a' AS `est_c`, '' AS `crt_stock` from `v_insumos` `i` union select 2 AS `id_tipo_ins`, `p`.`id_pres` AS `id_pres`, '1' AS `1`, '1' AS `1`, `p`.`pro_cod` AS `pro_cod`, concat(`p`.`pro_nom`,' ',`p`.`pro_pre`) AS `pro_nom`, `p`.`pro_cat` AS `pro_cat`, 'UNIDAD' AS `UNIDAD`, `p`.`pro_rec` AS `pro_rec`, `p`.`pro_cos` AS `pro_cos`, `p`.`pro_sto` AS `pro_sto`, `p`.`est_a` AS `est_a`, `p`.`est_b` AS `est_b`, `p`.`est_c` AS `est_c`, `p`.`crt_stock` AS `crt_stock` from `v_productos` `p` where `p`.`id_tipo` = 2 and `p`.`id_catg` <> 1 union select 3 AS `id_tipo_ins`, `p`.`id_pres` AS `id_pres`, '1' AS `1`, '1' AS `1`, `p`.`pro_cod` AS `pro_cod`, concat(`p`.`pro_nom`,' ',`p`.`pro_pre`) AS `pro_nom`, `p`.`pro_cat` AS `pro_cat`, 'UNIDAD' AS `UNIDAD`, `p`.`pro_rec` AS `pro_rec`, `p`.`pro_cos` AS `pro_cos`, `p`.`pro_sto` AS `pro_sto`, `p`.`est_a` AS `est_a`, `p`.`est_b` AS `est_b`, `p`.`est_c` AS `est_c`, `p`.`crt_stock` AS `crt_stock` from `v_productos` `p` where `p`.`id_tipo` = 1 and `p`.`id_catg` <> 1 */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;