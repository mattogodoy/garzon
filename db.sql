/*
SQLyog Enterprise - MySQL GUI v8.05 
MySQL - 5.5.19-log : Database - tmp
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

/*Table structure for table `estado_pedidos` */

CREATE TABLE `estado_pedidos` (
  `id_estado` int(11) NOT NULL AUTO_INCREMENT,
  `estado` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_estado`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `estado_pedidos` */

insert  into `estado_pedidos`(`id_estado`,`estado`) values (1,'Sin atender'),(2,'Pedido tomado - Esperando'),(3,'Servido'),(4,'Cobrado');

/*Table structure for table `mesas` */

CREATE TABLE `mesas` (
  `id_mesa` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(250) DEFAULT NULL,
  `libre` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id_mesa`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `mesas` */

insert  into `mesas`(`id_mesa`,`descripcion`,`libre`) values (1,'Adentro 1',1),(2,'Adentro 2',0),(3,'Afuera 1',1);

/*Table structure for table `pedidos` */

CREATE TABLE `pedidos` (
  `id_pedido` int(11) NOT NULL AUTO_INCREMENT,
  `id_mesa` int(11) DEFAULT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `fecha` datetime DEFAULT NULL,
  `id_estado` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

/*Data for the table `pedidos` */

insert  into `pedidos`(`id_pedido`,`id_mesa`,`id_usuario`,`fecha`,`id_estado`) values (1,2,2,'2012-10-24 00:00:00',2);

/*Table structure for table `producto_pedido` */

CREATE TABLE `producto_pedido` (
  `id_pedido` int(11) DEFAULT NULL,
  `id_producto` int(11) DEFAULT NULL,
  `cantidad` int(11) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `producto_pedido` */

insert  into `producto_pedido`(`id_pedido`,`id_producto`,`cantidad`) values (1,1,2),(1,2,1),(1,3,2);

/*Table structure for table `productos` */

CREATE TABLE `productos` (
  `id_producto` int(11) NOT NULL AUTO_INCREMENT,
  `descripcion` varchar(500) DEFAULT NULL,
  `precio` float DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `productos` */

insert  into `productos`(`id_producto`,`descripcion`,`precio`,`stock`) values (1,'Milanesa',35.5,10),(2,'Papas Fritas',18,15),(3,'Coca Cola 350cc',15,200);

/*Table structure for table `tipo_usuario` */

CREATE TABLE `tipo_usuario` (
  `id_tipo` int(11) NOT NULL AUTO_INCREMENT,
  `tipo` tinytext,
  PRIMARY KEY (`id_tipo`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

/*Data for the table `tipo_usuario` */

insert  into `tipo_usuario`(`id_tipo`,`tipo`) values (1,'Administrador'),(2,'Gerente'),(3,'Encargado'),(4,'Mozo');

/*Table structure for table `usuarios` */

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL AUTO_INCREMENT,
  `login` tinytext NOT NULL,
  `password` tinytext NOT NULL,
  `id_tipo` int(11) DEFAULT NULL,
  `nombre` tinytext,
  `apellido` tinytext,
  `email` tinytext,
  PRIMARY KEY (`id_usuario`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

/*Data for the table `usuarios` */

insert  into `usuarios`(`id_usuario`,`login`,`password`,`id_tipo`,`nombre`,`apellido`,`email`) values (1,'admin','admin',1,'Juan Carlos','Administrador','admin@una_cosa.com'),(2,'mgodoy','mgodoy',4,'Matias','Godoy','mattogodoy@gmail.com');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
