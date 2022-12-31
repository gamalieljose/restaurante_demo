--
-- Temporary table structure for view `v_stock_pedido`
--

DROP TABLE IF EXISTS `v_stock_pedido`;
/*!50001 DROP VIEW IF EXISTS `v_stock_pedido`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `v_stock_pedido` (
  `id_ins` tinyint NOT NULL,
  `ent` tinyint NOT NULL,
  `sal` tinyint NOT NULL,
  `control` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;


--
-- Final view structure for view `v_stock_pedido`
--

/*!50001 DROP TABLE IF EXISTS `v_stock_pedido`*/;
/*!50001 DROP VIEW IF EXISTS `v_stock_pedido`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 SQL SECURITY DEFINER */

/*!50001 VIEW `v_stock_pedido` AS (SELECT c.id_pres AS id_ins,NVL((select sum(b.ent) from v_inventario b WHERE b.id_ins = c.id_pres GROUP BY c.id_pres),0) AS ent,NVL((select sum(a.cant) from tm_detalle_pedido a WHERE a.id_pres = c.id_pres AND a.estado = 'a' group by c.id_pres),0) AS sal,(select d.crt_stock from tm_producto_pres d WHERE d.id_pres = c.id_pres group by c.id_pres) AS control from tm_producto_pres c WHERE c.crt_stock = 1 group by c.id_pres)*/;

/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;