-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 27/11/2023 às 23:27
-- Versão do servidor: 10.4.28-MariaDB
-- Versão do PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `eleicao`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidato_prefeito`
--

CREATE TABLE `candidato_prefeito` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_partido` int(11) DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `candidato_prefeito`
--

INSERT INTO `candidato_prefeito` (`id`, `numero`, `nome`, `id_partido`, `id_cargo`) VALUES
(1, 44, 'Junio de Beto', 1, 1),
(2, 67, 'João Bezerra da Silva', 2, 1),
(3, 12, 'Maria Oliveira', 3, 1),
(4, 83, 'Enoelino Costa', 4, 1),
(5, 22, 'Juliana Santos', 5, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `candidato_vereador`
--

CREATE TABLE `candidato_vereador` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_partido` int(11) DEFAULT NULL,
  `id_cargo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `candidato_vereador`
--

INSERT INTO `candidato_vereador` (`id`, `numero`, `nome`, `id_partido`, `id_cargo`) VALUES
(1, 40000, 'Junior Leao', 1, 2),
(2, 44400, 'Fernanda Costa', 1, 2),
(3, 45400, 'Gabriel Oliveira', 1, 2),
(4, 46500, 'Carolina Silva', 1, 2),
(5, 43200, 'Lucas Henrique', 1, 2),
(6, 52000, 'Toinho Enfermeiro', 2, 2),
(7, 53000, 'Carla Zambelli', 2, 2),
(8, 54000, 'Marcos Maia', 2, 2),
(9, 55000, 'Ana da Conceicao', 2, 2),
(10, 56000, 'Lucia Amarantes', 2, 2),
(11, 66000, 'Antonio Loureiro', 3, 2),
(12, 67000, 'Fernanda Oliveira', 3, 2),
(13, 68000, 'Gustavo Silva', 3, 2),
(14, 69000, 'Isabella Costa', 3, 2),
(15, 64000, 'Lucas Henrique', 3, 2),
(16, 21000, 'Regis do Gago', 4, 2),
(17, 22000, 'Carla da Silva', 4, 2),
(18, 23000, 'Marcos Oliveira', 4, 2),
(19, 24000, 'Ana Pereira', 4, 2),
(20, 25000, 'José Costa', 4, 2),
(21, 84000, 'Will do Conselho', 5, 2),
(22, 85000, 'Carolina Santos', 5, 2),
(23, 86000, 'Gustavo Oliveira', 5, 2),
(24, 87000, 'Isabella Lima', 5, 2),
(25, 88000, 'Godoy de Barto', 5, 2);

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `cargo`
--

INSERT INTO `cargo` (`id`, `nome`) VALUES
(1, 'Prefeito'),
(2, 'Vereador');

-- --------------------------------------------------------

--
-- Estrutura para tabela `eleitor`
--

CREATE TABLE `eleitor` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `presenca` tinyint(1) DEFAULT NULL,
  `id_titulo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `eleitor`
--

INSERT INTO `eleitor` (`id`, `nome`, `presenca`, `id_titulo`) VALUES
(1, 'Joao Victor Oliveira da Silva', 1, 1),
(2, 'Everton Juan de Souza', 1, 2),
(3, 'Rebson Ramalho dos Santos', 1, 3),
(4, 'Victor Antonio Ribeiro de Lira Cavalcanti', 1, 4),
(5, 'Robson Monteiro de Albuquerque', 0, 5),
(6, 'Caio Ribeiro da Conceicao', 0, 6),
(7, 'Maria Fernanda de Oliveira Sales', 1, 7),
(8, 'Pedro Amorin de Silva', 1, 8),
(9, 'Ana Beatriz dos Santos', 1, 9),
(10, 'Lucas Gabriel de Lima', 1, 10),
(11, 'Carla Batista Pereira', 1, 11),
(12, 'Beatriz Cristina Silva', 1, 12),
(13, 'Rafael Oliveira Santos', 1, 13),
(14, 'Fernanda Costa Lima', 1, 14),
(15, 'Carlos Eduardo Pereira', 1, 15),
(16, 'Patricia Oliveira Lima', 1, 16),
(17, 'Felipe Henrique Santos', 1, 17),
(18, 'Larissa Maria Silva', 1, 18),
(19, 'Gustavo Oliveira Costa', 1, 19),
(20, 'Camila Pereira Lima', 1, 20),
(21, 'Marcelo Silva Costa', 1, 21),
(22, 'Isabela Oliveira Santos', 1, 22),
(23, 'Thiago Lima Pereira', 1, 23),
(24, 'Juliana Costa Oliveira', 1, 24),
(25, 'Vinicius Santos Lima', 1, 25),
(26, 'Bianca Pereira Silva', 1, 26),
(27, 'Ricardo Oliveira Lima', 1, 27),
(28, 'Carolina Silva Costa', 1, 28),
(29, 'Lucas Henrique Santos', 1, 29),
(30, 'Fernanda Oliveira Lima', 1, 30),
(31, 'Gabriel Lima Pereira', 1, 31),
(32, 'Amanda Costa Silva', 1, 32),
(33, 'Pedro Oliveira Santos', 1, 33),
(34, 'Laura Pereira Lima', 1, 34),
(35, 'Henrique Silva Costa', 1, 35),
(36, 'Viviane Oliveira Santos', 1, 36),
(37, 'Matheus Lima Pereira', 1, 37),
(38, 'Camila Oliveira Lima', 1, 38),
(39, 'Gustavo Silva Costa', 1, 39),
(40, 'Eduarda Pereira Santos', 1, 40),
(41, 'Noah Silva Costa', 0, 41),
(42, 'Lucas James Silva', 0, 42),
(43, 'Isabel Rose Costa', 0, 43),
(44, 'Aiden Oliveira Santos', 0, 44),
(45, 'Sophie Mendes Lima', 0, 45),
(46, 'Mia Johnson Pereira', 0, 46),
(47, 'Caleb Silva Costa', 0, 47),
(48, 'Eva Anderson Lima', 0, 48),
(49, 'Logan Oliveira Santos', 0, 49),
(50, 'Lily Pereira Lima', 0, 50);

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcao`
--

CREATE TABLE `funcao` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcao`
--

INSERT INTO `funcao` (`id`, `nome`) VALUES
(1, 'Presidente'),
(2, 'Mesarios'),
(3, 'Secretario');

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `id_funcao` int(11) DEFAULT NULL,
  `id_secao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `funcionario`
--

INSERT INTO `funcionario` (`id`, `nome`, `id_funcao`, `id_secao`) VALUES
(1, 'Vinicius Santos Lima', 1, 1),
(2, 'Isabela Oliveira Santos', 2, 1),
(3, 'Gustavo Oliveira Costa', 2, 1),
(4, 'Felipe Henrique Santos', 3, 1),
(5, 'Ana Carolina Silva', 1, 2),
(6, 'Pedro Oliveira Lima', 2, 2),
(7, 'Laura Pereira Santos', 2, 2),
(8, 'Lucas Henrique Costa', 3, 2),
(9, 'Gabriel Oliveira Lima', 1, 3),
(10, 'Camila Silva Costa', 2, 3),
(11, 'Lucas Henrique Santos', 2, 3),
(12, 'Isabella Lima Pereira', 3, 3),
(13, 'Mariana Oliveira Costa', 1, 4),
(14, 'Matheus Silva Lima', 2, 4),
(15, 'Larissa Pereira Santos', 2, 4),
(16, 'Felipe Costa Oliveira', 3, 4),
(17, 'Rafaela Lima Pereira', 1, 5),
(18, 'Gustavo Silva Costa', 2, 5),
(19, 'Isabella Oliveira Santos', 2, 5),
(20, 'Lucas Henrique Silva', 3, 5),
(21, 'Ana Carolina Pereira', 1, 6),
(22, 'Pedro Oliveira Lima', 2, 6),
(23, 'Laura Silva Costa', 2, 6),
(24, 'Lucas Henrique Santos', 3, 6),
(25, 'Gabriel Oliveira Lima', 1, 7),
(26, 'Camila Silva Costa', 2, 7),
(27, 'Lucas Henrique Santos', 2, 7),
(28, 'Isabella Lima Pereira', 3, 7),
(29, 'Mariana Oliveira Costa', 1, 8),
(30, 'Matheus Silva Lima', 2, 8),
(31, 'Larissa Pereira Santos', 2, 8),
(32, 'Felipe Costa Oliveira', 3, 8),
(33, 'Rafaela Lima Pereira', 1, 9),
(34, 'Gustavo Silva Costa', 2, 9),
(35, 'Isabella Oliveira Santos', 2, 9),
(36, 'Lucas Henrique Silva', 3, 9),
(37, 'Ana Carolina Pereira', 1, 10),
(38, 'Pedro Oliveira Lima', 2, 10),
(39, 'Laura Silva Costa', 2, 10),
(40, 'Lucas Henrique Santos', 3, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `partido`
--

CREATE TABLE `partido` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `partido`
--

INSERT INTO `partido` (`id`, `nome`, `sigla`) VALUES
(1, 'PARTIDO DOS TRABALHADORES', 'PT'),
(2, 'PARTIDO COMUNISTA DO BRASIL', 'PCdoB'),
(3, 'PARTIDO SOCIALISMO E LIBERDADE', 'PSOL'),
(4, 'PARTIDO LIBERAL', 'PL'),
(5, 'PARTIDO NOVO', 'NOVO');

-- --------------------------------------------------------

--
-- Estrutura para tabela `secao`
--

CREATE TABLE `secao` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_zona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `secao`
--

INSERT INTO `secao` (`id`, `numero`, `id_zona`) VALUES
(1, 110, 1),
(2, 114, 1),
(3, 115, 1),
(4, 116, 1),
(5, 120, 2),
(6, 121, 2),
(7, 122, 2),
(8, 137, 3),
(9, 138, 3),
(10, 139, 3);

-- --------------------------------------------------------

--
-- Estrutura para tabela `titulo`
--

CREATE TABLE `titulo` (
  `id` int(11) NOT NULL,
  `numero` varchar(14) DEFAULT NULL,
  `id_secao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `titulo`
--

INSERT INTO `titulo` (`id`, `numero`, `id_secao`) VALUES
(1, '2567 7890 3256', 1),
(2, '1234 5678 9012', 1),
(3, '9876 5432 1098', 1),
(4, '5555 1111 9999', 1),
(5, '8888 4444 2222', 1),
(6, '7777 3333 6666', 2),
(7, '1212 3434 5656', 2),
(8, '4545 7878 9898', 2),
(9, '2323 8989 6767', 2),
(10, '1111 2222 3333', 2),
(11, '9876 5432 1234', 3),
(12, '5555 8888 9999', 3),
(13, '7777 1111 6666', 3),
(14, '4444 9999 2222', 3),
(15, '3333 6666 8888', 3),
(16, '1234 5678 9876', 4),
(17, '8765 4321 1111', 4),
(18, '5555 9999 4444', 4),
(19, '8888 3333 2222', 4),
(20, '7777 1111 6666', 4),
(21, '9876 5432 1111', 5),
(22, '5555 2222 9999', 5),
(23, '7777 4444 6666', 5),
(24, '4444 1111 3333', 5),
(25, '3333 8888 5555', 5),
(26, '1234 5678 1111', 6),
(27, '8765 4321 2222', 6),
(28, '5555 9999 3333', 6),
(29, '8888 3333 4444', 6),
(30, '7777 1111 5555', 6),
(31, '9876 5432 7777', 7),
(32, '5555 2222 8888', 7),
(33, '7777 4444 9999', 7),
(34, '4444 1111 6666', 7),
(35, '3333 8888 5555', 7),
(36, '1234 5678 8888', 8),
(37, '8765 4321 9999', 8),
(38, '5555 1111 6666', 8),
(39, '8888 3333 4444', 8),
(40, '7777 4444 5555', 8),
(41, '9876 5432 9999', 9),
(42, '5555 2222 6666', 9),
(43, '7777 4444 8888', 9),
(44, '4444 1111 5555', 9),
(45, '3333 8888 7777', 9),
(46, '1234 5678 1010', 10),
(47, '8765 4321 2020', 10),
(48, '5555 1111 3030', 10),
(49, '8888 3333 4040', 10),
(50, '7777 4444 5050', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `urna`
--

CREATE TABLE `urna` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_secao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `urna`
--

INSERT INTO `urna` (`id`, `numero`, `id_secao`) VALUES
(1, 10110037, 1),
(2, 20110037, 1),
(3, 10114037, 2),
(4, 20114037, 2),
(5, 10115037, 3),
(6, 20115037, 3),
(7, 10116037, 4),
(8, 20116037, 4),
(9, 10120039, 5),
(10, 20120039, 5),
(11, 10121039, 6),
(12, 20121039, 6),
(13, 10122039, 7),
(14, 20122039, 7),
(15, 10137042, 8),
(16, 20137042, 8),
(17, 10138042, 9),
(18, 20138042, 9),
(19, 10139042, 10),
(20, 20139042, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `voto`
--

CREATE TABLE `voto` (
  `id` int(11) NOT NULL,
  `id_candiPrefeito` int(11) DEFAULT NULL,
  `id_candiVereador` int(11) DEFAULT NULL,
  `id_urna` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `voto`
--

INSERT INTO `voto` (`id`, `id_candiPrefeito`, `id_candiVereador`, `id_urna`) VALUES
(1, 1, 1, 1),
(2, 1, 6, 1),
(3, 2, 21, 1),
(4, 3, 6, 1),
(5, 1, 7, 1),
(6, 1, 1, 3),
(7, 1, 6, 3),
(8, 4, 21, 3),
(9, 4, 6, 3),
(10, 5, 7, 3),
(11, 2, 4, 5),
(12, 2, 5, 5),
(13, 4, 7, 5),
(14, 4, 9, 5),
(15, 1, 10, 5),
(16, 1, 11, 7),
(17, 1, 16, 7),
(18, 5, 21, 7),
(19, 5, 25, 7),
(20, 4, 21, 7),
(21, 3, 2, 9),
(22, 3, 21, 9),
(23, 4, 21, 9),
(24, 1, 16, 9),
(25, 4, 16, 9),
(26, 1, 12, 11),
(27, 3, 14, 11),
(28, 5, 19, 11),
(29, 1, 18, 11),
(30, 2, 17, 11),
(31, 5, 4, 13),
(32, 2, 24, 13),
(33, 4, 14, 13),
(34, 4, 18, 13),
(35, 2, 7, 13),
(36, 1, 17, 15),
(37, 1, 17, 15),
(38, 1, 17, 15);

-- --------------------------------------------------------

--
-- Estrutura para tabela `zona`
--

CREATE TABLE `zona` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `zona`
--

INSERT INTO `zona` (`id`, `numero`) VALUES
(1, 37),
(2, 39),
(3, 42);

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `candidato_prefeito`
--
ALTER TABLE `candidato_prefeito`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_candiPrefeito1` (`id_partido`),
  ADD KEY `fk_candiPrefeito2` (`id_cargo`);

--
-- Índices de tabela `candidato_vereador`
--
ALTER TABLE `candidato_vereador`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_candiVereador1` (`id_partido`),
  ADD KEY `fk_candiVereador2` (`id_cargo`);

--
-- Índices de tabela `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `eleitor`
--
ALTER TABLE `eleitor`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_eleitor` (`id_titulo`);

--
-- Índices de tabela `funcao`
--
ALTER TABLE `funcao`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_funcionario1` (`id_funcao`),
  ADD KEY `fk_funcionario2` (`id_secao`);

--
-- Índices de tabela `partido`
--
ALTER TABLE `partido`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `secao`
--
ALTER TABLE `secao`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_secao` (`id_zona`);

--
-- Índices de tabela `titulo`
--
ALTER TABLE `titulo`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_titulo` (`id_secao`);

--
-- Índices de tabela `urna`
--
ALTER TABLE `urna`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_urna` (`id_secao`);

--
-- Índices de tabela `voto`
--
ALTER TABLE `voto`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_voto1` (`id_candiPrefeito`),
  ADD KEY `fk_voto2` (`id_candiVereador`),
  ADD KEY `fk_voto3` (`id_urna`);

--
-- Índices de tabela `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `candidato_prefeito`
--
ALTER TABLE `candidato_prefeito`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `candidato_vereador`
--
ALTER TABLE `candidato_vereador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `eleitor`
--
ALTER TABLE `eleitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `funcao`
--
ALTER TABLE `funcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT de tabela `partido`
--
ALTER TABLE `partido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `secao`
--
ALTER TABLE `secao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `titulo`
--
ALTER TABLE `titulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT de tabela `urna`
--
ALTER TABLE `urna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `voto`
--
ALTER TABLE `voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de tabela `zona`
--
ALTER TABLE `zona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `candidato_prefeito`
--
ALTER TABLE `candidato_prefeito`
  ADD CONSTRAINT `fk_candiPrefeito1` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id`),
  ADD CONSTRAINT `fk_candiPrefeito2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`);

--
-- Restrições para tabelas `candidato_vereador`
--
ALTER TABLE `candidato_vereador`
  ADD CONSTRAINT `fk_candiVereador1` FOREIGN KEY (`id_partido`) REFERENCES `partido` (`id`),
  ADD CONSTRAINT `fk_candiVereador2` FOREIGN KEY (`id_cargo`) REFERENCES `cargo` (`id`);

--
-- Restrições para tabelas `eleitor`
--
ALTER TABLE `eleitor`
  ADD CONSTRAINT `fk_eleitor` FOREIGN KEY (`id_titulo`) REFERENCES `titulo` (`id`);

--
-- Restrições para tabelas `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `fk_funcionario1` FOREIGN KEY (`id_funcao`) REFERENCES `funcao` (`id`),
  ADD CONSTRAINT `fk_funcionario2` FOREIGN KEY (`id_secao`) REFERENCES `secao` (`id`);

--
-- Restrições para tabelas `secao`
--
ALTER TABLE `secao`
  ADD CONSTRAINT `fk_secao` FOREIGN KEY (`id_zona`) REFERENCES `zona` (`id`);

--
-- Restrições para tabelas `titulo`
--
ALTER TABLE `titulo`
  ADD CONSTRAINT `fk_titulo` FOREIGN KEY (`id_secao`) REFERENCES `secao` (`id`);

--
-- Restrições para tabelas `urna`
--
ALTER TABLE `urna`
  ADD CONSTRAINT `fk_urna` FOREIGN KEY (`id_secao`) REFERENCES `secao` (`id`);

--
-- Restrições para tabelas `voto`
--
ALTER TABLE `voto`
  ADD CONSTRAINT `fk_voto1` FOREIGN KEY (`id_candiPrefeito`) REFERENCES `candidato_prefeito` (`id`),
  ADD CONSTRAINT `fk_voto2` FOREIGN KEY (`id_candiVereador`) REFERENCES `candidato_vereador` (`id`),
  ADD CONSTRAINT `fk_voto3` FOREIGN KEY (`id_urna`) REFERENCES `urna` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
