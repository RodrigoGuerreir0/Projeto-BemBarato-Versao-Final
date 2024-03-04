/*!40101 SET NAMES utf8 */;
/*!40014 SET FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET SQL_NOTES=0 */;
DROP TABLE IF EXISTS tb_funcionario;
CREATE TABLE `tb_funcionario` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `Nome` varchar(255) DEFAULT NULL,
  `Matricula` varchar(50) DEFAULT NULL,
  `CPF` varchar(14) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `usuario` varchar(100) DEFAULT NULL,
  `senha` varchar(100) DEFAULT NULL,
  `telefone` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS tb_produtos;
CREATE TABLE `tb_produtos` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_barras` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `categoria` varchar(100) NOT NULL,
  `estoque` int(11) NOT NULL,
  `peso` decimal(10,2) NOT NULL,
  `valor` decimal(10,2) NOT NULL,
  `validade` date NOT NULL,
  `fornecedor` varchar(255) NOT NULL,
  `codigo_fiscal` varchar(50) NOT NULL,
  `data_modificacao` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS tb_produtos_venda;
CREATE TABLE `tb_produtos_venda` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `id_venda` int(11) DEFAULT NULL,
  `id_produtos` int(11) DEFAULT NULL,
  `processamento` int(1) unsigned zerofill NOT NULL,
  `Quantidade` int(5) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS tb_usuarios;
CREATE TABLE `tb_usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `nome` varchar(300) DEFAULT NULL,
  `cpf` varchar(14) DEFAULT NULL,
  `email` varchar(300) DEFAULT NULL,
  `nascimento` date DEFAULT NULL,
  `telefone` varchar(15) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `bairro` varchar(100) DEFAULT NULL,
  `rua` varchar(100) DEFAULT NULL,
  `numero` int(6) DEFAULT NULL,
  `cep` varchar(9) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

DROP TABLE IF EXISTS tb_vendas;
CREATE TABLE `tb_vendas` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Primary Key',
  `hora` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO tb_funcionario(id,Nome,Matricula,CPF,email,usuario,senha,telefone) VALUES('1','\'\\\'\\\\\\\'Rodrigo Guerreiro\\\\\\\'\\\'\'','\'\\\'\\\\\\\'1478522f\\\\\\\'\\\'\'','\'\\\'\\\\\\\'099.235.268\'','\'\\\'\\\\\\\'rodrigoguerreiro217@gmail.com\\\\\\\'\\\'\'','\'Guerreiro\'','\'123\'','\'\\\'\\\\\\\'(19) 97138-8368\\\\\\\'\\\'\'');

INSERT INTO tb_produtos(id,codigo_barras,nome,descricao,imagem,categoria,estoque,peso,valor,validade,fornecedor,codigo_fiscal,data_modificacao) VALUES('1','\'1\'','\'açúcar União\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','1','1.15','4.69','\'0000-00-00\'','\'Grupo Camil\'','\'123a\'','\'2024-03-04 11:03:13\''),('2','\'2\'','\'Adoçante Zero-Cal Líquido Ciclamato\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','2','131.60','13.00','\'0000-00-00\'','\'Hypera Pharma\'','\'123b\'','\'2024-03-04 11:03:13\''),('3','\'3\'','\'água mineral Crystal com gás\'','X\'\'','\'\'','\'\\\'Bebida\\\'\'','3','516.00','3.00','\'0000-00-00\'','\'Crystal\'','\'123c\'','\'2024-03-04 11:03:13\''),('4','\'5\'','\'Água Sanitária Candura\'','X\'\'','\'\'','\'\\\'Limpeza\\\'\'','4','5.10','20.00','\'0000-00-00\'','\'Candura\'','\'123d\'','\'2024-03-04 11:03:13\''),('5','\'6\'','\'Álcool Líquido\'','X\'\'','\'\'','\'\\\'Limpeza\\\'\'','5','1.00','12.50','\'0000-00-00\'','\'Coperalcool\'','\'123e\'','\'2024-03-04 11:03:13\''),('6','\'7\'','\'Amaciante Ypê Tradicional\'','X\'\'','\'\'','\'\\\'Lavanderia\\\'\'','6','2.20','14.99','\'0000-00-00\'','\'Ypê\'','\'123f\'','\'2024-03-04 11:03:13\''),('7','\'8\'','\'Arroz Urbano\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','7','1.00','29.99','\'0000-00-00\'','\'Urbano Alimentos\'','\'123h\'','\'2024-03-04 11:03:13\''),('8','\'9\'','\'\\\'Batata Pré-Frita Tradicional Congelada McCain Pacote\'','X\'\'','\'\'','\'\\\'Frios\\\'\'','5','1.00','31.99','\'0000-00-00\'','\'McCain\'','\'123i\'','\'2024-03-04 11:03:13\''),('9','\'10\'','\'\\\'Café Pilão\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','8','0.50','19.99','\'0000-00-00\'','\'Jacobs Douwe Egberts\'','\'123j\'','\'2024-03-04 11:03:13\''),('10','\'11\'','\'\\\'Creme De Leite Piracanjuba \'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','3','0.20','4.99','\'0000-00-00\'','\'Piracanjuba\'','\'123k\'','\'2024-03-04 11:03:13\''),('11','\'12\'','\'\\\'Farinha de Trigo Dona Benta\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','5','1.00','19.55','\'0000-00-00\'','\'J.Macêdo\'','\'123l\'','\'2024-03-04 11:03:13\''),('12','\'13\'','\'Kimilho Flocão YOKI\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','2','0.50','4.39','\'0000-00-00\'','\'Yoki\'','\'123m\'','\'2024-03-04 11:03:13\''),('13','\'14\'','\'Farinha de Trigo Renata\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','7','1.00','14.55','\'0000-00-00\'','\'J. Macêdo\'','\'123n\'','\'2024-03-04 11:03:13\''),('14','\'15\'','\'Feijao Camil carioca\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','10','1.00','11.99','\'0000-00-00\'','\'Camil\'','\'112o\'','\'2024-03-04 11:03:13\''),('15','\'16\'','\'Macarrão Galo Sêmola Parafuso\'','X\'\'','\'\'','\'\\\'Alimentos\\\'\'','7','0.50','9.99','\'0000-00-00\'','\'Galo\'','\'123p\'','\'2024-03-04 11:03:13\''),('16','\'17\'','\'Camisinha Olla\'','X\'\'','\'\'','\'\\\'Higiene Pessoal\\\'\'','10','0.02','24.99','\'0000-00-00\'','\' Hypera Pharma\'','\'123q\'','\'2024-03-04 11:03:13\''),('17','\'18\'','\'Creme Dental Colgate\'','X\'\'','\'\'','\'\\\'Higiene Pessoal\\\'\'','5','0.09','15.50','\'0000-00-00\'','\'Colgate-Palmolive\'','\'123r\'','\'2024-03-04 11:03:13\''),('18','\'19\'','\'Papel Higiênico Folha Dupla Neutro PERSONAL Vip\'','X\'\'','\'\'','\'\\\'Higiene Pessoal\\\'\'','4','1.50','32.00','\'0000-00-00\'','\'Personal\'','\'123s\'','\'2024-03-04 11:03:13\''),('19','\'20\'','\'Sabonete Flor de Ype\'','X\'\'','\'\'','\'\\\'Higiene Pessoal\\\'\'','8','0.09','2.90','\'0000-00-00\'','\'Ypê\'','\'123t\'','\'2024-03-04 11:03:13\''),('20','\'21\'','\'Banana Nanica\'','X\'\'','\'\'','\'\\\'Frutas e Legumes\\\'\'','7','1.00','12.00','\'0000-00-00\'','\'hortfruti\'','\'123u\'','\'2024-03-04 11:03:13\''),('21','\'22\'','\'Repolho Verde \'','X\'\'','\'\'','\'\\\'Frutas e Legumes\\\'\'','3','1.00','6.00','\'0000-00-00\'','\'fresh organicos\'','\'123v\'','\'2024-03-04 11:03:13\''),('22','\'23\'','\'Limão Taiti\'','X\'\'','\'\'','\'\\\'Frutas e Legumes\\\'\'','6','1.00','15.99','\'0000-00-00\'','\'hortfruti\'','\'123w\'','\'2024-03-04 11:03:13\''),('23','\'24\'','\'Coca Cola Zero\'','X\'4c617461206465207265667269676572616e7465206465203335304d4c\'','\'\'','\'Bebida\'','200','400.00','5.99','\'2024-04-02\'','\'Coca-Cola\'','\'1235f\'','\'2024-03-04 10:59:53\''),('24','\'25\'','\'Coca Cola\'','X\'4c617461206465207265667269676572616e7465206465203335304d4c\'','\'\'','\'Bebida\'','200','400.00','5.99','\'2024-03-04\'','\'Coca-Cola\'','\'123f\'','\'2024-03-04 10:59:53\'');

INSERT INTO tb_produtos_venda(id,id_venda,id_produtos,processamento,Quantidade) VALUES('12','2','2','1','1'),('13','3','2','1','1'),('14','3','2','1','2'),('15','3','2','1','10000'),('16','5','2','1','1');

INSERT INTO tb_usuarios(id,nome,cpf,email,nascimento,telefone,cidade,bairro,rua,numero,cep) VALUES('1','\'\\\'\\\\\\\'Rodrigo\\\\\\\'\\\'\'','\'\\\'\\\\\\\'012.365.478\'','\'\\\'\\\\\\\'rodrigoguerreiro217@gmail.com\\\\\\\'\\\'\'','\'0000-00-00\'','\'\\\'\\\\\\\'(19) 97138-8\'','\'\\\'\\\\\\\'Americana\\\\\\\'\\\'\'','\'\\\'\\\\\\\'Jardim Da Paz\\\\\\\'\\\'\'','\'\\\'\\\\\\\'Aliança\\\\\\\'\\\'\'','156','\'\\\'\\\\\\\'13470-\'');
INSERT INTO tb_vendas(id,hora) VALUES('1','\'0000-00-00 00:00:00\'');