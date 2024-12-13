/*M!999999\- enable the sandbox mode */ 
-- MariaDB dump 10.19  Distrib 10.11.10-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	10.11.10-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Books`
--

DROP TABLE IF EXISTS `Books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `author` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Books`
--

LOCK TABLES `Books` WRITE;
/*!40000 ALTER TABLE `Books` DISABLE KEYS */;
INSERT INTO `Books` VALUES
(1,'The Catcher in the Rye','J.D. Salinger'),
(2,'To Kill a Mockingbird','Harper Lee'),
(3,'1984','George Orwell'),
(4,'Pride and Prejudice','Jane Austen'),
(5,'The Great Gatsby','F. Scott Fitzgerald'),
(6,'Moby-Dick','Herman Melville'),
(7,'War and Peace','Leo Tolstoy'),
(8,'Crime and Punishment','Fyodor Dostoevsky'),
(9,'The Odyssey','Homer'),
(10,'The Iliad','Homer'),
(11,'One Hundred Years of Solitude','Gabriel Garcia Marquez'),
(12,'Brave New World','Aldous Huxley'),
(13,'The Sound and the Fury','William Faulkner'),
(14,'Don Quixote','Miguel de Cervantes'),
(15,'Ulysses','James Joyce'),
(16,'Madame Bovary','Gustave Flaubert'),
(17,'The Divine Comedy','Dante Alighieri'),
(18,'Alice\'s Adventures in Wonderland','Lewis Carroll'),
(19,'The Brothers Karamazov','Fyodor Dostoevsky'),
(20,'Anna Karenina','Leo Tolstoy'),
(21,'The Hobbit','J.R.R. Tolkien'),
(22,'The Lord of the Rings','J.R.R. Tolkien'),
(23,'Harry Potter and the Sorcerer\'s Stone','J.K. Rowling'),
(24,'Harry Potter and the Chamber of Secrets','J.K. Rowling'),
(25,'Harry Potter and the Prisoner of Azkaban','J.K. Rowling'),
(26,'Harry Potter and the Goblet of Fire','J.K. Rowling'),
(27,'Harry Potter and the Order of the Phoenix','J.K. Rowling'),
(28,'Harry Potter and the Half-Blood Prince','J.K. Rowling'),
(29,'Harry Potter and the Deathly Hallows','J.K. Rowling'),
(30,'The Chronicles of Narnia','C.S. Lewis'),
(31,'The Lion, the Witch and the Wardrobe','C.S. Lewis'),
(32,'Prince Caspian','C.S. Lewis'),
(33,'The Voyage of the Dawn Treader','C.S. Lewis'),
(34,'The Silver Chair','C.S. Lewis'),
(35,'The Horse and His Boy','C.S. Lewis'),
(36,'The Magician\'s Nephew','C.S. Lewis'),
(37,'The Last Battle','C.S. Lewis'),
(38,'The Giver','Lois Lowry'),
(39,'Fahrenheit 451','Ray Bradbury'),
(40,'The Road','Cormac McCarthy'),
(41,'The Handmaid\'s Tale','Margaret Atwood'),
(42,'Beloved','Toni Morrison'),
(43,'Invisible Man','Ralph Ellison'),
(44,'The Stranger','Albert Camus'),
(45,'Of Mice and Men','John Steinbeck'),
(46,'East of Eden','John Steinbeck'),
(47,'Grapes of Wrath','John Steinbeck'),
(48,'The Alchemist','Paulo Coelho'),
(49,'The Kite Runner','Khaled Hosseini'),
(50,'A Thousand Splendid Suns','Khaled Hosseini'),
(51,'Life of Pi','Yann Martel'),
(52,'Slaughterhouse-Five','Kurt Vonnegut'),
(53,'Cat\'s Cradle','Kurt Vonnegut'),
(54,'Breakfast of Champions','Kurt Vonnegut'),
(55,'The Metamorphosis','Franz Kafka'),
(56,'The Trial','Franz Kafka'),
(57,'The Castle','Franz Kafka'),
(58,'The Shining','Stephen King'),
(59,'It','Stephen King'),
(60,'The Stand','Stephen King'),
(61,'Misery','Stephen King'),
(62,'Pet Sematary','Stephen King'),
(63,'Dracula','Bram Stoker'),
(64,'Frankenstein','Mary Shelley'),
(65,'The Picture of Dorian Gray','Oscar Wilde'),
(66,'Heart of Darkness','Joseph Conrad'),
(67,'Lord of the Flies','William Golding'),
(68,'The Catch-22','Joseph Heller'),
(69,'The Sun Also Rises','Ernest Hemingway'),
(70,'For Whom the Bell Tolls','Ernest Hemingway'),
(71,'A Farewell to Arms','Ernest Hemingway'),
(72,'The Old Man and the Sea','Ernest Hemingway'),
(73,'The Call of the Wild','Jack London'),
(74,'White Fang','Jack London'),
(75,'The Sea-Wolf','Jack London'),
(76,'Treasure Island','Robert Louis Stevenson'),
(77,'Strange Case of Dr Jekyll and Mr Hyde','Robert Louis Stevenson'),
(78,'Gulliver\'s Travels','Jonathan Swift'),
(79,'Robinson Crusoe','Daniel Defoe'),
(80,'The Three Musketeers','Alexandre Dumas'),
(81,'The Count of Monte Cristo','Alexandre Dumas'),
(82,'Les Misérables','Victor Hugo'),
(83,'The Hunchback of Notre-Dame','Victor Hugo'),
(84,'The Secret Garden','Frances Hodgson Burnett'),
(85,'A Little Princess','Frances Hodgson Burnett'),
(86,'Anne of Green Gables','L.M. Montgomery'),
(87,'Little Women','Louisa May Alcott'),
(88,'The Jungle Book','Rudyard Kipling'),
(89,'Kim','Rudyard Kipling'),
(90,'The Wind in the Willows','Kenneth Grahame'),
(91,'The Tale of Peter Rabbit','Beatrix Potter'),
(92,'Charlie and the Chocolate Factory','Roald Dahl'),
(93,'James and the Giant Peach','Roald Dahl'),
(94,'Matilda','Roald Dahl'),
(95,'The BFG','Roald Dahl'),
(96,'Fantastic Mr Fox','Roald Dahl'),
(97,'Where the Wild Things Are','Maurice Sendak'),
(98,'Goodnight Moon','Margaret Wise Brown'),
(99,'The Very Hungry Caterpillar','Eric Carle'),
(100,'Green Eggs and Ham','Dr. Seuss'),
(101,'The Cat in the Hat','Dr. Seuss');
/*!40000 ALTER TABLE `Books` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-12 21:38:56
