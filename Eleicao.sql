-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 30/11/2023 às 02:47
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

-- --------------------------------------------------------

--
-- Estrutura para tabela `cargo`
--

CREATE TABLE `cargo` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `funcao`
--

CREATE TABLE `funcao` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `partido`
--

CREATE TABLE `partido` (
  `id` int(11) NOT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `sigla` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `secao`
--

CREATE TABLE `secao` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_zona` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `titulo`
--

CREATE TABLE `titulo` (
  `id` int(11) NOT NULL,
  `numero` varchar(14) DEFAULT NULL,
  `id_secao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estrutura para tabela `urna`
--

CREATE TABLE `urna` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL,
  `id_secao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

-- --------------------------------------------------------

--
-- Estrutura para tabela `zona`
--

CREATE TABLE `zona` (
  `id` int(11) NOT NULL,
  `numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `candidato_vereador`
--
ALTER TABLE `candidato_vereador`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `cargo`
--
ALTER TABLE `cargo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `eleitor`
--
ALTER TABLE `eleitor`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcao`
--
ALTER TABLE `funcao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `partido`
--
ALTER TABLE `partido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `secao`
--
ALTER TABLE `secao`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `titulo`
--
ALTER TABLE `titulo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `urna`
--
ALTER TABLE `urna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `voto`
--
ALTER TABLE `voto`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `zona`
--
ALTER TABLE `zona`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

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
