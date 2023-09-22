-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 02-Jun-2019 às 00:52
-- Versão do servidor: 10.1.37-MariaDB
-- versão do PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_quiz`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `jogador`
--

CREATE TABLE `jogador` (
  `jog_id` int(11) NOT NULL,
  `jog_login` varchar(45) NOT NULL,
  `jog_senha` varchar(45) NOT NULL,
  `jog_nickname` varchar(45) NOT NULL,
  `jog_acertos` int(11) NOT NULL,
  `jog_erros` int(11) NOT NULL,
  `jog_acfacil` int(11) NOT NULL,
  `jog_acmedio` int(11) NOT NULL,
  `jog_acdificil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `jogador`
--

INSERT INTO `jogador` (`jog_id`, `jog_login`, `jog_senha`, `jog_nickname`, `jog_acertos`, `jog_erros`, `jog_acfacil`, `jog_acmedio`, `jog_acdificil`) VALUES
(1, 'marcel', '123', 'DEADBOONIE_BR', 33, 12, 10, 8, 15),
(4, 'rodrigo', '123', 'TheBestTerrariaFan123', 0, 0, 0, 0, 0),
(5, 'teste', '123', 'TESTAAAAANDOOOOO', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `nivel`
--

CREATE TABLE `nivel` (
  `niv_id` int(11) NOT NULL,
  `niv_nivel` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `nivel`
--

INSERT INTO `nivel` (`niv_id`, `niv_nivel`) VALUES
(1, 'Fácil'),
(2, 'Médio'),
(3, 'Difícil');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pergunta`
--

CREATE TABLE `pergunta` (
  `per_id` int(11) NOT NULL,
  `per_perg1` varchar(255) NOT NULL,
  `per_perg2` varchar(255) NOT NULL,
  `per_perg3` varchar(255) NOT NULL,
  `per_perg4` varchar(255) NOT NULL,
  `per_perg5` varchar(255) NOT NULL,
  `per_niv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `pergunta`
--

INSERT INTO `pergunta` (`per_id`, `per_perg1`, `per_perg2`, `per_perg3`, `per_perg4`, `per_perg5`, `per_niv_id`) VALUES
(4, 'Respectivamente, quais são os itens iniciais que o jogador recebe ao criar um novo personagem?', 'Qual é o primeiro chefão?', 'Quais são os 2 tipos de corrupção que podem surgir no mundo? ', 'Qual é o primeiro NPC (not playable character) que surge no mundo?', 'Quanto vale uma moeda de ouro?', 1),
(5, 'Qual é o minério mais forte antes antes do hardmode?', 'Qual é nome da espada encontrada nas ilhas voadoras?', 'Quantos chefões existem para ser derrotado no total (Sem contar mini-chefs)', 'Qual é a espada mais forte antes do hardmode?', 'Qual é o evento onde é possível adquirir a espada Influx waver?', 2),
(6, 'Quanto custa o \"company cube\" vendido pelo viajante?', 'Quais são os 2 itens mágicos endgame dropados pelo chefão Moon Lord?', 'Qual é o nome da armadura endgame ranged mais forte do jogo?', 'Qual desses itens é o mais raro de conseguir no jogo?', 'Qual é o item mágico abaixo mais forte?', 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `resposta`
--

CREATE TABLE `resposta` (
  `res_id` int(11) NOT NULL,
  `res_num` char(1) NOT NULL,
  `res_resp1` varchar(255) NOT NULL,
  `res_resp2` varchar(255) NOT NULL,
  `res_resp3` varchar(255) NOT NULL,
  `res_resp4` varchar(255) NOT NULL,
  `res_rescorreta` varchar(255) NOT NULL,
  `res_niv_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `resposta`
--

INSERT INTO `resposta` (`res_id`, `res_num`, `res_resp1`, `res_resp2`, `res_resp3`, `res_resp4`, `res_rescorreta`, `res_niv_id`) VALUES
(1, '1', 'Martelo, espada curta e picareta.', 'Martelo, espada curta e machado.', 'Espada curta, picareta e machado.', 'Espada longa, picareta e arco.', 'Espada curta, picareta e machado.', 1),
(2, '2', 'King Slime (Geléia rei).', 'Eye of cthulhu (Olho de cthulhu).', 'Eskeletron.', 'Queen Bee (Abelha rainha)', 'King Slime (Geléia rei).', 1),
(3, '3', 'Corruption & Trhuffle.', 'Crismon & Corruption.', 'Crismon & Hallow.', 'Trhuffle & Crismon.', 'Crismon & Corruption.', 1),
(4, '4', 'O mercador.', 'A mecânica.', 'A Steampunk.', 'O guia.', 'O guia.', 1),
(5, '5', '100 moedas de platina.', '100 moedas de prata.', '100 moedas de cobre.', '100 moedas de ouro.', '100 moedas de prata.', 1),
(6, '1', 'Crintane.', 'Platina.', 'Hellstone.', 'Ouro.', 'Hellstone.', 2),
(7, '2', 'Starfury.', 'Skybreak.', 'Cloudpunch.', 'Arkhaliss.', 'Starfury.', 2),
(8, '3', '12.', '11.', '15.', '17.', '15.', 2),
(9, '4', 'Night\'s Edge.', 'Molten Fury.', 'Muramassa.', 'Blood Butcherer.', 'Night\'s Edge.', 2),
(10, '5', 'Slime Rain.', 'Blood Moon.', 'Eclipse.', 'Martian Madness.', 'Martian Madness.', 2),
(11, '1', '1 moedas de platina.', '5 moedas de platina.', '10 moedas de platina.', '5 moedas de ouro.', '5 moedas de platina.', 3),
(12, '2', 'Last Prism & Lunas Flare.', 'Terrarian & Meowmere.', 'Rainbow Crystal Staff & Celebration.', 'Last Prism & Star wrath.', 'Last Prism & Lunas Flare.', 3),
(13, '3', 'Nebula.', 'Vortex.', 'Solar.', 'Stardust.', 'Vortex.', 3),
(14, '4', 'Coin gun.', 'Hero\'s broken sword.', 'Portal gun.', 'Rod of Discord.', 'Rod of Discord.', 3),
(15, '5', 'Last Prism.', 'Nebula Arcanum.', 'Wand of Sparking.', 'Tome of Infinite Wisdom.', 'Last Prism.', 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jogador`
--
ALTER TABLE `jogador`
  ADD PRIMARY KEY (`jog_id`);

--
-- Indexes for table `nivel`
--
ALTER TABLE `nivel`
  ADD PRIMARY KEY (`niv_id`);

--
-- Indexes for table `pergunta`
--
ALTER TABLE `pergunta`
  ADD PRIMARY KEY (`per_id`),
  ADD KEY `per_niv_id` (`per_niv_id`);

--
-- Indexes for table `resposta`
--
ALTER TABLE `resposta`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `res_id` (`res_id`),
  ADD KEY `res_per_id` (`res_niv_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jogador`
--
ALTER TABLE `jogador`
  MODIFY `jog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `nivel`
--
ALTER TABLE `nivel`
  MODIFY `niv_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pergunta`
--
ALTER TABLE `pergunta`
  MODIFY `per_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `resposta`
--
ALTER TABLE `resposta`
  MODIFY `res_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
