DELIMITER $$
CREATE PROCEDURE `usp_configProductoPres`(IN `_flag` INT(11), IN `_id_pres` INT(11), IN `_id_prod` INT(11), IN `_cod_prod` VARCHAR(45), IN `_presentacion` VARCHAR(45), IN `_descripcion` VARCHAR(200), IN `_precio` DECIMAL(10,2), IN `_precio_delivery` DECIMAL(10,2), IN `_receta` INT(1), IN `_stock_min` INT(11), IN `_stock_limit` INT(1), IN `_impuesto` INT(1), IN `_delivery` INT(1), IN `_margen` INT(1), IN `_igv` DECIMAL(10,2), IN `_imagen` VARCHAR(200), IN `_estado` VARCHAR(1))
BEGIN
		
	DECLARE _cont INT DEFAULT 0;
	DECLARE _cod0 INT DEFAULT 0;
	DECLARE	_cod1 INT DEFAULT 1;
	DECLARE	_cod2 INT DEFAULT 2;
	IF _flag = 1 THEN
	
		SELECT COUNT(*) INTO _cont FROM tm_producto_pres WHERE presentacion = _presentacion AND id_prod = _id_prod;
		
		IF _cont = 0 THEN
			INSERT INTO tm_producto_pres (id_prod,cod_prod,presentacion,descripcion,precio,precio_delivery,receta,stock_min,crt_stock,impuesto,delivery,margen,igv,imagen,estado) 
			VALUES (_id_prod, _cod_prod, _presentacion, _descripcion, _precio, _precio_delivery, _receta, _stock_min, _stock_limit, _impuesto, _delivery, _margen, _igv, _imagen, _estado);
			SELECT _cod1 AS cod;
		ELSE
			SELECT _cod0 AS cod;
		END IF;
		
	end if;
	
	IF _flag = 2 THEN
	
		UPDATE tm_producto_pres SET cod_prod = _cod_prod, presentacion = _presentacion, descripcion = _descripcion, precio = _precio, precio_delivery = _precio_delivery, receta = _receta, stock_min = _stock_min, crt_stock = _stock_limit, impuesto = _impuesto, delivery = _delivery, margen = _margen, igv = _igv, imagen = _imagen, estado = _estado 
		WHERE id_pres = _id_pres;
		SELECT _cod2 AS cod;
		
	END IF;
	END$$
DELIMITER ;