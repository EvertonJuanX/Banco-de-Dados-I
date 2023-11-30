-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/11/2023 às 02:39
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
-- Banco de dados: `worldcup`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `arbitro`
--

CREATE TABLE `arbitro` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `arbitro`
--

INSERT INTO `arbitro` (`ID`, `Nome`) VALUES
(1, 'Árbitro 1'),
(2, 'Árbitro 2'),
(3, 'Árbitro 3'),
(4, 'Árbitro 4'),
(5, 'Árbitro 5'),
(6, 'Árbitro 6'),
(7, 'Árbitro 7'),
(8, 'Árbitro 8'),
(9, 'Árbitro 9'),
(10, 'Árbitro 10');

-- --------------------------------------------------------

--
-- Estrutura para tabela `atleta`
--

CREATE TABLE `atleta` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `DataNasc` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_Posicao` int(11) DEFAULT NULL,
  `ID_Pais` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `atleta`
--

INSERT INTO `atleta` (`ID`, `Nome`, `DataNasc`, `ID_Posicao`, `ID_Pais`) VALUES
(1, 'Atleta 1', '2023-10-30 23:22:42', 1, 1),
(2, 'Atleta 2', '2023-10-30 23:22:49', 2, 2),
(3, 'Atleta 3', '2023-10-30 23:22:59', 3, 3),
(4, 'Atleta 4', '2023-10-30 23:23:08', 4, 4),
(5, 'Atleta 5', '2023-10-30 23:23:15', 5, 5),
(6, 'Atleta 6', '2023-10-30 23:23:22', 3, 6),
(7, 'Atleta 7', '2023-10-30 23:23:31', 1, 7),
(8, 'Atleta 8', '2023-10-30 23:23:40', 4, 8),
(9, 'Atleta 9', '2023-10-30 23:23:47', 5, 9),
(10, 'Atleta 10', '2023-10-30 23:23:55', 2, 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `estadio`
--

CREATE TABLE `estadio` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `estadio`
--

INSERT INTO `estadio` (`ID`, `Nome`) VALUES
(1, 'Estádio do Maracanã'),
(2, 'Estádio Camp Nou'),
(3, 'Estádio Santiago Bernabéu'),
(4, 'Estádio Old Trafford'),
(5, 'Estádio Allianz Arena'),
(6, 'Estádio San Siro'),
(7, 'Estádio Wembley'),
(8, 'Estádio Anfield'),
(9, 'Estádio Signal Iduna Park'),
(10, 'Estádio Emirates');

-- --------------------------------------------------------

--
-- Estrutura para tabela `gol`
--

CREATE TABLE `gol` (
  `ID` int(11) NOT NULL,
  `Gols` int(11) DEFAULT NULL,
  `ID_Atleta` int(11) DEFAULT NULL,
  `ID_Jogo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `gol`
--

INSERT INTO `gol` (`ID`, `Gols`, `ID_Atleta`, `ID_Jogo`) VALUES
(127, 2, 1, 1),
(128, 1, 2, 1),
(129, 3, 3, 1),
(130, 1, 4, 2),
(131, 2, 5, 2),
(132, 1, 6, 3),
(133, 1, 7, 3),
(134, 2, 8, 4),
(135, 1, 9, 4),
(136, 1, 10, 5),
(137, 2, 1, 5),
(138, 1, 2, 5),
(139, 3, 3, 4),
(140, 1, 4, 4),
(141, 2, 5, 4);

-- --------------------------------------------------------

--
-- Estrutura para tabela `jogo`
--

CREATE TABLE `jogo` (
  `ID` int(11) NOT NULL,
  `Data` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ID_Estadio` int(11) DEFAULT NULL,
  `ID_Pais1` int(11) DEFAULT NULL,
  `ID_Pais2` int(11) DEFAULT NULL,
  `ID_Arbitro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `jogo`
--

INSERT INTO `jogo` (`ID`, `Data`, `ID_Estadio`, `ID_Pais1`, `ID_Pais2`, `ID_Arbitro`) VALUES
(1, '2023-10-01 18:00:00', 1, 2, 3, 1),
(2, '2023-10-05 19:30:00', 2, 3, 4, 2),
(3, '2023-10-10 17:15:00', 3, 4, 5, 3),
(4, '2023-10-15 20:00:00', 4, 5, 6, 4),
(5, '2023-10-20 18:45:00', 5, 6, 7, 5);

-- --------------------------------------------------------

--
-- Estrutura para tabela `pais`
--

CREATE TABLE `pais` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL,
  `ID_Arbitro` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `pais`
--

INSERT INTO `pais` (`ID`, `Nome`, `ID_Arbitro`) VALUES
(1, 'Brasil', 1),
(2, 'Estados Unidos', 2),
(3, 'Canadá', 3),
(4, 'Reino Unido', 4),
(5, 'França', 5),
(6, 'Alemanha', 6),
(7, 'Itália', 7),
(8, 'Austrália', 8),
(9, 'Japão', 9),
(10, 'China', 10);

-- --------------------------------------------------------

--
-- Estrutura para tabela `posicao`
--

CREATE TABLE `posicao` (
  `ID` int(11) NOT NULL,
  `Nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Despejando dados para a tabela `posicao`
--

INSERT INTO `posicao` (`ID`, `Nome`) VALUES
(1, 'Goleiro'),
(2, 'Zagueiro'),
(3, 'Lateral Direito'),
(4, 'Lateral Esquerdo'),
(5, 'Meio-Campo'),
(6, 'Volante'),
(7, 'Atacante'),
(8, 'Ponta Direita'),
(9, 'Ponta Esquerda');

--
-- Índices para tabelas despejadas
--

--
-- Índices de tabela `arbitro`
--
ALTER TABLE `arbitro`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `atleta`
--
ALTER TABLE `atleta`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_atleta1` (`ID_Posicao`),
  ADD KEY `fk_atleta2` (`ID_Pais`);

--
-- Índices de tabela `estadio`
--
ALTER TABLE `estadio`
  ADD PRIMARY KEY (`ID`);

--
-- Índices de tabela `gol`
--
ALTER TABLE `gol`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_gol1` (`ID_Atleta`),
  ADD KEY `fk_gol2` (`ID_Jogo`);

--
-- Índices de tabela `jogo`
--
ALTER TABLE `jogo`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_jogo1` (`ID_Estadio`),
  ADD KEY `fk_jogo2` (`ID_Pais1`),
  ADD KEY `fk_jogo3` (`ID_Pais2`),
  ADD KEY `fk_jogo4` (`ID_Arbitro`);

--
-- Índices de tabela `pais`
--
ALTER TABLE `pais`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_pais` (`ID_Arbitro`);

--
-- Índices de tabela `posicao`
--
ALTER TABLE `posicao`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT para tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `arbitro`
--
ALTER TABLE `arbitro`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `atleta`
--
ALTER TABLE `atleta`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `estadio`
--
ALTER TABLE `estadio`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `gol`
--
ALTER TABLE `gol`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=142;

--
-- AUTO_INCREMENT de tabela `jogo`
--
ALTER TABLE `jogo`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `pais`
--
ALTER TABLE `pais`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de tabela `posicao`
--
ALTER TABLE `posicao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Restrições para tabelas despejadas
--

--
-- Restrições para tabelas `atleta`
--
ALTER TABLE `atleta`
  ADD CONSTRAINT `fk_atleta1` FOREIGN KEY (`ID_Posicao`) REFERENCES `posicao` (`ID`),
  ADD CONSTRAINT `fk_atleta2` FOREIGN KEY (`ID_Pais`) REFERENCES `pais` (`ID`);

--
-- Restrições para tabelas `gol`
--
ALTER TABLE `gol`
  ADD CONSTRAINT `fk_gol1` FOREIGN KEY (`ID_Atleta`) REFERENCES `atleta` (`ID`),
  ADD CONSTRAINT `fk_gol2` FOREIGN KEY (`ID_Jogo`) REFERENCES `jogo` (`ID`);

--
-- Restrições para tabelas `jogo`
--
ALTER TABLE `jogo`
  ADD CONSTRAINT `fk_jogo1` FOREIGN KEY (`ID_Estadio`) REFERENCES `estadio` (`ID`),
  ADD CONSTRAINT `fk_jogo2` FOREIGN KEY (`ID_Pais1`) REFERENCES `pais` (`ID`),
  ADD CONSTRAINT `fk_jogo3` FOREIGN KEY (`ID_Pais2`) REFERENCES `pais` (`ID`),
  ADD CONSTRAINT `fk_jogo4` FOREIGN KEY (`ID_Arbitro`) REFERENCES `arbitro` (`ID`);

--
-- Restrições para tabelas `pais`
--
ALTER TABLE `pais`
  ADD CONSTRAINT `fk_pais` FOREIGN KEY (`ID_Arbitro`) REFERENCES `arbitro` (`ID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
