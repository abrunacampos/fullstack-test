-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 16/05/2019 às 15:49
-- Versão do servidor: 10.1.39-MariaDB
-- Versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `test`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `usuario`
--

CREATE TABLE `usuario` (
  `nome` varchar(20) CHARACTER SET armscii8 COLLATE armscii8_bin NOT NULL,
  `dataNascimento` date NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 NOT NULL,
  `telefone` int(11) NOT NULL,
  `regiao` varchar(20) CHARACTER SET latin1 NOT NULL,
  `unidade` varchar(20) CHARACTER SET latin1 NOT NULL,
  `pontuacao` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Despejando dados para a tabela `usuario`
--

INSERT INTO `usuario` (`nome`, `dataNascimento`, `email`, `telefone`, `regiao`, `unidade`, `pontuacao`, `id`) VALUES
('Bruna Campos', '1993-08-22', 'bruna@campos.com', 12345678, 'Sudeste', 'SÃ£o Paulo', 10, 49),
('Maria Silva', '1980-10-10', 'maria@silva.com', 123123, 'Sul', 'Porto Alegre', 8, 50),
('Pedro Paulo', '2010-11-20', 'pedro@paulo.com', 10203040, 'Sudeste', 'Rio De Janeiro', 4, 51),
('Gabriel Silva', '1920-01-10', 'gab@silva.com', 123123, 'Centro-Oeste', 'Brasilia', 4, 52),
('Amanda Barros', '1989-02-04', 'amanda@barros.com', 234234, 'Nordeste', 'Recife', 6, 53),
('Olavo Junior', '1917-01-23', 'olavo@junior.com', 234234, 'Sudeste', 'SÃ£o Paulo', 5, 55),
('Bruna Teste', '1993-08-22', 'bruna@campos.com', 123123, 'Sudeste', 'SÃ£o Paulo', 10, 60),
('Bruna Arruda', '1993-08-22', 'bruna@arruda.com', 121212, 'Sul', 'Porto Alegre', 8, 61),
('Maria Silva', '2010-10-10', 'maria@silva.com', 10203, 'Sudeste', 'Rio De Janeiro', 4, 62),
('Bruna Teste', '1993-08-22', 'bruna@teste.com', 2147483647, 'Sudeste', 'SÃ£o Paulo', 10, 66),
('b???? ??', '1993-08-22', 'bru@bru.com', 2147483647, 'Sul', 'Porto Alegre', 8, 67),
('bruna Testando 2', '2002-04-23', 'bruna@teste.com', 2147483647, 'Centro-Oeste', 'BrasÃ­lia', 2, 69),
('bru n', '1993-08-22', 'bruna@n.com', 2147483647, 'Centro-Oeste', 'BrasÃ­lia', 7, 70),
('Bruna Arruda', '1999-01-23', 'bru@bru.com', 2147483647, 'Centro-Oeste', 'BrasÃ­lia', 7, 71),
('bru b', '1980-08-22', 'bru@bru.com', 2147483647, 'Sul', 'Porto Alegre', 8, 72),
('Bruna Arruda', '1993-08-22', 'bru@bruna.com', 2147483647, 'Sul', 'Curitiba', 8, 73),
('Bruna Arruda', '1993-08-22', 'bru@bruna.com', 2147483647, 'Sul', 'Curitiba', 8, 74),
('Bru Bruna', '1993-08-22', 'bruna@bruna.com', 2147483647, 'Sudeste', 'SÃ£o Paulo', 10, 75);

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de tabelas apagadas
--

--
-- AUTO_INCREMENT de tabela `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
