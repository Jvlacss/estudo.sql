CREATE TABLE `alunos` (
  `id_aluno` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `data_nascimento` date NOT NULL,
  `id_curso` int DEFAULT NULL,
  PRIMARY KEY (`id_aluno`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `alunos_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `alunos` VALUES (1,'Ana Costa','2000-05-10',1),(2,'Bruno Lima','1999-03-12',2),(3,'Carlos Silva','1998-07-21',3),(4,'Daniela Rocha','2001-01-18',4),(5,'Eduardo Alves','2000-09-25',5),(6,'Fernanda Dias','1999-11-03',6),(7,'Gabriel Souza','2002-02-08',7),(8,'Helena Martins','2001-06-15',1),(9,'Igor Pereira','1998-12-30',2),(10,'Joana Melo','2000-08-22',3),(11,'Kaio Ferreira','1999-10-10',4),(12,'Larissa Lopes','2001-04-14',5),(13,'Marcos Vinícius','1998-09-09',6),(14,'Natália Duarte','2002-03-05',7),(15,'Otávio Ramos','1999-07-27',1),(16,'Paula Teixeira','2000-11-19',2),(17,'Rafael Barbosa','2001-12-12',3),(18,'Sabrina Nunes','1998-06-17',4),(19,'Tiago Moura','2002-01-01',5),(20,'Úrsula Braga','1999-02-28',6),(21,'Vinícius Leal','2000-05-05',7),(22,'Wesley Monteiro','2001-07-30',1),(23,'Xênia Gomes','1998-03-03',2),(24,'Yago Carvalho','2002-04-04',3),(25,'Zuleica Rocha','2000-10-11',4),(26,'Alan Torres','1999-09-23',5),(27,'Bianca Souza','2001-11-06',6),(28,'Caio Ribeiro','1998-08-16',7),(29,'Diana Figueiredo','2002-12-25',1),(30,'Enzo Castro','1999-06-18',2);

CREATE TABLE `aperfeiçoamento` (
  `id_aperfeiçoamento` int NOT NULL AUTO_INCREMENT,
  `nome_aperfeiçoamento` varchar(50) DEFAULT NULL COMMENT 'nome do aperfeiçoamento',
  `descrição` text COMMENT 'descrição do curso de aperfeiçoamento',
  `carga_horaria` int NOT NULL,
  `total_aulas` int NOT NULL COMMENT 'total de aulas',
  `ano` date DEFAULT NULL,
  `id_posgrad` int DEFAULT NULL,
  PRIMARY KEY (`id_aperfeiçoamento`),
  KEY `id_posgrad` (`id_posgrad`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

INSERT INTO `aperfeiçoamento` VALUES (1,'Algoritmos e Lógica de Programação','Curso introdutório para desenvolver raciocínio lógico e estruturar soluções algorítmicas.',40,10,'2024-01-15',1),(2,'Git e GitHub para Desenvolvedores','Aprenda versionamento de código com Git e colaboração com GitHub em projetos reais.',30,8,'2024-02-01',2),(3,'Python para Análise de Dados','Introdução ao uso de Python com bibliotecas como Pandas, NumPy e Matplotlib.',50,12,'2024-03-05',3),(4,'Desenvolvimento Web com HTML, CSS e JavaScript','Criação de páginas web modernas e responsivas com HTML5, CSS3 e JS.',60,15,'2024-04-10',4),(5,'Banco de Dados com MySQL','Modelagem, criação e manipulação de bancos de dados relacionais com MySQL.',45,10,'2024-05-20',5),(6,'APIs REST com Node.js e Express','Criação de APIs RESTful utilizando o Node.js, Express e boas práticas.',40,9,'2024-06-15',6),(7,'Programação Orientada a Objetos com Java','Conceitos de POO aplicados na linguagem Java com exercícios práticos.',50,11,'2024-07-01',7),(8,'Desenvolvimento Front-end com React.js','Desenvolvimento de interfaces modernas com React, componentes e hooks.',60,14,'2024-08-05',8),(9,'Versionamento e Deploy com Docker','Aprenda a criar ambientes isolados com Docker e fazer deploy de aplicações.',35,7,'2024-09-10',9),(10,'Testes Automatizados com JavaScript','Escrevendo testes com Jest e Cypress para garantir a qualidade do código.',30,8,'2024-10-01',10);

CREATE TABLE `cursos` (
  `id_curso` int NOT NULL AUTO_INCREMENT,
  `nome_curso` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duracao` int DEFAULT NULL,
  `carga_horaria` int DEFAULT NULL,
  `ano` int DEFAULT NULL,
  PRIMARY KEY (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cursos` VALUES (1,'JAVA','Curso básico sobre fundamentos de SQL: SELECT, INSERT, UPDATE, DELETE e modelagem de dados.',100,25,2025),(2,'Desenvolvimento Web','Apresenta HTML, CSS, JavaScript, frameworks frontend e boas práticas de desenvolvimento.',60,25,2025),(3,'Python para Data Science','Abrange Python, bibliotecas pandas, NumPy, matplotlib e introdução a machine learning.',100,25,2025),(4,'Arquitetura de Software','Conceitos de design de software, padrões de arquitetura (MVC, microserviços) e documentação.',50,25,2023),(5,'Administração de Banco de Dados','Gerenciamento de SGBD, backups, tuning de performance e segurança em bancos relacionais.',70,25,2025),(6,'PHP2','Curso básico sobre fundamentos de SQL: SELECT, INSERT, UPDATE, DELETE e modelagem de dados.',40,25,2025),(7,'JAVA2','Melhor curso para Frontend.',10,25,2025);

CREATE TABLE `posgrad` (
  `id_prosgrad` int NOT NULL AUTO_INCREMENT,
  `nome_pos` varchar(50) NOT NULL,
  `descricao` text COMMENT 'descrição do curso',
  `carga` int DEFAULT NULL COMMENT 'carga horaria do curso',
  PRIMARY KEY (`id_prosgrad`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

INSERT INTO `posgrad` VALUES (1,'Pós-graduação em Marketing Digital Estratégico','Formação voltada para profissionais que desejam atuar com marketing digital, estratégias de mídia online e análise de dados de campanhas.',420),(2,'Pós-graduação em Data Analyst','Capacita profissionais para coleta, análise e visualização de grandes volumes de dados aplicados a negócios.',450),(3,'Pós-graduação em Psicologia Organizacional','Estuda o comportamento humano nas empresas, com foco em clima organizacional, liderança e gestão de pessoas.',390),(4,'Pós-graduação em Direito Empresarial','Aprofunda temas jurídicos voltados à atuação empresarial, contratos, compliance e governança.',400),(5,'Pós-graduação em Engenharia de Software Ágil','Formação técnica voltada para desenvolvimento ágil de sistemas, com práticas de DevOps e metodologias como Scrum e Kanban.',480),(6,'Pós-graduação em Educação Inclusiva','Capacita educadores para atuação com diversidade e inclusão nas escolas, promovendo práticas pedagógicas adaptadas.',360),(7,'Pós-graduação em Finanças e Controladoria','Desenvolve competências em planejamento financeiro, análise de custos e auditoria.',420),(8,'Pós-graduação em Gestão de Projetos','Foca na aplicação de metodologias como PMBOK e Scrum para gerenciamento eficiente de projetos em diferentes setores.',400),(9,'Pós-graduação em Nutrição Esportiva','Especializa profissionais de nutrição para o atendimento a atletas e praticantes de atividades físicas.',390),(10,'Pós-graduação em Inteligência Artificial Aplicada','Capacita profissionais em técnicas de machine learning, redes neurais e aplicações práticas de IA em diferentes setores.',460);

CREATE TABLE `professores` (
  `id_prof` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'nome do professor',
  `materia_professor` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'matéria que o prof leciona',
  `descricao` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci COMMENT 'descrição do que o prof ensina',
  `id_curso` int DEFAULT NULL,
  PRIMARY KEY (`id_prof`),
  KEY `id_curso` (`id_curso`),
  CONSTRAINT `professores_ibfk_1` FOREIGN KEY (`id_curso`) REFERENCES `cursos` (`id_curso`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `professores` VALUES (1,'Ana Souza','PHP','Especialista em desenvolvimento backend com PHP moderno e frameworks como Laravel.',6),(2,'Bruno Lima','Python','Instrutor de Python com foco em automação, data science e inteligência artificial.',3),(3,'Carlos Mendes','SQL','Professor de bancos de dados relacionais, modelagem de dados e otimização de queries SQL.',5),(4,'Débora Ferreira','JavaScript','Desenvolvedora frontend e professora de frameworks modernos como React e Vue.js.',2),(5,'Eduardo Castro','C#','Especialista em desenvolvimento de aplicações .NET e APIs REST com C#.',4),(6,'Fernanda Almeida','HTML e CSS','Instrutora de criação de sites responsivos e design web moderno usando HTML5 e CSS3.',2),(7,'Gustavo Rocha','DevOps','Profissional de infraestrutura e automação de ambientes com Docker, Kubernetes e CI/CD.',5),(8,'Helena Martins','Java','Professora de programação orientada a objetos, desenvolvimento de sistemas empresariais em Java.',1),(9,'Igor Pereira','Segurança da Informação','Especialista em proteção de sistemas, testes de invasão e políticas de segurança digital.',4),(10,'Juliana Ramos','Cloud Computing','Instrutora de computação em nuvem com foco em AWS, Azure e Google Cloud.',3);
