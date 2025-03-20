-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: pizzaria_radiante
-- ------------------------------------------------------
-- Server version	8.0.41

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `pizzas`
--

DROP TABLE IF EXISTS `pizzas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pizzas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(255) NOT NULL,
  `descricao` text,
  `preco` decimal(10,2) NOT NULL,
  `imagem` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pizzas`
--

LOCK TABLES `pizzas` WRITE;
/*!40000 ALTER TABLE `pizzas` DISABLE KEYS */;
INSERT INTO `pizzas` VALUES (1,'Margherita Radiante','Mussarela, tomate cereja e manjericão fresco',45.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(2,'Calabresa Explosiva','Calabresa defumada, cebola roxa e pimenta biquinho',50.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(3,'Portuguesa Iluminada','Presunto, ovos, cebola caramelizada e azeitonas pretas',55.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(4,'Frango com Catupiry','Frango desfiado, catupiry original',48.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(5,'Pepperoni','Pepperoni fatiado, mussarela',52.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(6,'Quatro Queijos','Mussarela, provolone, parmesão, gorgonzola',55.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(7,'Vegetariana','Brócolis, palmito, champignon, milho, mussarela',46.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(8,'Banana com Canela','Banana, canela, açúcar, mussarela',42.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(9,'Chocolate','Chocolate ao leite, granulado',45.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(10,'Romeu e Julieta','Goiabada, mussarela',43.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(11,'Atum','Atum sólido, cebola, azeitona, mussarela',50.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(12,'Bacon','Bacon crocante, cebola, mussarela',49.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(13,'Escarola','Escarola refogada, alho, azeitona, mussarela',47.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(14,'Palmito','Palmito macio, azeitona, mussarela',48.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(15,'Portuguesa Especial','Presunto, ovos, cebola, pimentão, mussarela',51.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(16,'Calabresa com Catupiry','Calabresa, catupiry original, cebola',53.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(17,'Marguerita Especial','Tomate cereja, manjericão fresco, mussarela de búfala',54.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(18,'Carne Seca','Carne seca desfiada, cebola roxa, mussarela',56.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(19,'Camarão','Camarão refogado, catupiry, mussarela',60.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(20,'Brócolis com Bacon','Brócolis, bacon crocante, mussarela',52.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(21,'Milho com Bacon','Milho verde, bacon crocante, mussarela',50.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(22,'Lombinho Canadense','Lombinho canadense, cebola caramelizada, mussarela',55.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(23,'Frango com Cheddar','Frango desfiado, cheddar cremoso, mussarela',51.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(24,'Abobrinha','Abobrinha italiana, alho poró, mussarela',49.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(25,'Rúcula com Tomate Seco','Rúcula fresca, tomate seco, mussarela',53.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(26,'Siciliana','Champignon, bacon, mussarela',52.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(27,'Napolitana','Tomate, alho, parmesão, mussarela',47.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(28,'Aliche','Aliche importado, parmesão, mussarela',55.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(29,'Brigadeiro','Brigadeiro cremoso, granulado',46.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(30,'Doce de Leite','Doce de leite cremoso, coco ralado',48.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(31,'Morango com Chocolate','Morango fresco, chocolate ao leite',50.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(32,'Prestígio','Chocolate, coco ralado, leite condensado',49.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(33,'Mousse de Limão','Mousse de limão, raspas de limão',51.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(34,'Nova Pizza','Descrição da nova pizza',50.00,'C:\\xampp\\htdocs\\Teste\\img\\pizza.png'),(35,'Portuguesa','Presunto, ovos, cebola, azeitonas, ervilha, mussarela',52.00,'portuguesa.jpg'),(36,'Chocolate com Morango','Chocolate ao leite, morangos frescos',45.00,'chocolate_morango.jpg');
/*!40000 ALTER TABLE `pizzas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-19 23:26:40
