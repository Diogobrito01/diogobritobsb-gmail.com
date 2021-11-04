-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 04-Nov-2021 às 02:55
-- Versão do servidor: 10.4.21-MariaDB
-- versão do PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dbr13`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `calcado`
--

CREATE TABLE `calcado` (
  `idcalcado` int(11) NOT NULL,
  `idtipocalcado` int(11) DEFAULT NULL,
  `idmarca` int(11) DEFAULT NULL,
  `faixa` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `genero` varchar(10) COLLATE latin1_general_ci DEFAULT NULL,
  `codigoEan` varchar(13) COLLATE latin1_general_ci DEFAULT NULL,
  `precoCusto` double DEFAULT NULL,
  `precoVenda` double DEFAULT NULL,
  `modelo` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `q1718` int(11) DEFAULT 0,
  `q1920` int(11) DEFAULT 0,
  `q2122` int(11) DEFAULT 0,
  `q2324` int(11) DEFAULT 0,
  `q2526` int(11) DEFAULT 0,
  `q2728` int(11) DEFAULT 0,
  `q2930` int(11) DEFAULT 0,
  `q3132` int(11) DEFAULT 0,
  `q3334` int(11) DEFAULT 0,
  `q3536` int(11) DEFAULT 0,
  `q3738` int(11) DEFAULT 0,
  `q3940` int(11) DEFAULT 0,
  `q4142` int(11) DEFAULT 0,
  `q4344` int(11) DEFAULT 0,
  `q4546` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `calcado`
--

INSERT INTO `calcado` (`idcalcado`, `idtipocalcado`, `idmarca`, `faixa`, `genero`, `codigoEan`, `precoCusto`, `precoVenda`, `modelo`, `q1718`, `q1920`, `q2122`, `q2324`, `q2526`, `q2728`, `q2930`, `q3132`, `q3334`, `q3536`, `q3738`, `q3940`, `q4142`, `q4344`, `q4546`) VALUES
(1, 3, 6, 'ADULTO', 'MASCULINO', '7898053750033', 9.59, 17.59, 'TREND', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2),
(2, 3, 2, 'ADULTO', 'FEMININO', '7898053750392', 5.99, 12.99, 'CASUAL', 0, 0, 0, 0, 0, 0, 0, 0, 0, 2, 2, 2, 2, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `calcadocor`
--

CREATE TABLE `calcadocor` (
  `idCalcadoCor` int(11) NOT NULL,
  `idcalcado` int(11) DEFAULT NULL,
  `idcor` int(11) DEFAULT NULL,
  `estoque` int(11) DEFAULT NULL,
  `estAprovisionado` int(11) DEFAULT NULL,
  `dataUltEntrada` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `calcadocor`
--

INSERT INTO `calcadocor` (`idCalcadoCor`, `idcalcado`, `idcor`, `estoque`, `estAprovisionado`, `dataUltEntrada`) VALUES
(1, 1, 1, 1188, 96, '2016-07-03'),
(2, 1, 3, 1200, 48, '2016-07-03'),
(3, 2, 2, 0, 0, '2016-07-04'),
(4, 2, 3, 0, 0, '2016-07-04');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idCliente` int(11) NOT NULL,
  `cnpj_cpf` varchar(14) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tipoCliente` varchar(15) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `nomeFantasia` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `razao_nome` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `cep` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `telefone1` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `telefone2` varchar(11) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `assinatura` varchar(8) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `inscEstadual` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL,
  `dataCadastro` date DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `statusCliente` varchar(30) CHARACTER SET latin1 COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idCliente`, `cnpj_cpf`, `tipoCliente`, `nomeFantasia`, `razao_nome`, `cep`, `numero`, `email`, `telefone1`, `telefone2`, `assinatura`, `inscEstadual`, `rg`, `dataCadastro`, `idFuncionario`, `statusCliente`) VALUES
(2, '42858021000192', 'PJ', 'CALCADOS', 'CALCADOS LTDA', '71996365', 35, 'diogobritobsb@gmail.com', '61998115453', '', 'moises', '19186265', '', '2021-11-03', 6, 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `compra`
--

CREATE TABLE `compra` (
  `idcompra` int(11) NOT NULL,
  `dataCompra` date DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `idFuncionario` int(11) DEFAULT NULL,
  `idFornecedor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contaspagar`
--

CREATE TABLE `contaspagar` (
  `idcontaPagar` int(11) NOT NULL,
  `dataEmissao` date DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `parcela` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `formaPagamento` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `dataPagamento` date DEFAULT NULL,
  `idcompra` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `contasreceber`
--

CREATE TABLE `contasreceber` (
  `idContaReceber` int(11) NOT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `vencimento` date DEFAULT NULL,
  `formaPagamento` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `valor` double DEFAULT NULL,
  `parcela` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `dataEmissao` date DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `dataPagamento` date DEFAULT NULL,
  `idcliente` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `contasreceber`
--

INSERT INTO `contasreceber` (`idContaReceber`, `idpedido`, `vencimento`, `formaPagamento`, `valor`, `parcela`, `dataEmissao`, `status`, `dataPagamento`, `idcliente`) VALUES
(19, 7, '2021-11-18', 'BOLETO', 105.54, '1/2', '2021-11-03', 'EM ABERTO', '2021-11-18', 2),
(20, 7, '2021-12-03', 'BOLETO', 105.54, '2/2', '2021-11-03', 'EM ABERTO', '2021-12-03', 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `cor`
--

CREATE TABLE `cor` (
  `idcor` int(11) NOT NULL,
  `cor` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `cor`
--

INSERT INTO `cor` (`idcor`, `cor`) VALUES
(2, 'AZUL'),
(3, 'BRANCA'),
(4, 'MARROM'),
(1, 'PRETO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `cep` varchar(8) COLLATE latin1_general_ci NOT NULL,
  `tipologradouro` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `bairro` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `cidade` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `uf` varchar(2) COLLATE latin1_general_ci DEFAULT NULL,
  `logradouro` varchar(100) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`cep`, `tipologradouro`, `bairro`, `cidade`, `uf`, `logradouro`) VALUES
('', NULL, '', '', '', ''),
('54510680', 'Rua', 'Centro', 'Cabo de Santo Agostinho', 'PE', 'João Farias Evangelista'),
('60542100', NULL, 'Bonsucesso', 'Fortaleza', 'CE', 'Travessa Ceres'),
('71996365', NULL, 'Setor Habitacional Arniqueira (Ãguas Claras)', 'BrasÃ­lia', 'DF', 'SHA Conjunto 6 ChÃ¡cara 477'),
('72120100', 'Quadra', 'Taguatinga Norte', 'Taguatinga', 'DF', 'QND 10'),
('72548208', 'Quadra', 'Santa Maria', 'Santa Maria', 'DF', 'CL 118 Bloco H'),
('72548508', 'Quadra', 'Santa Maria', 'Santa Maria', 'DF', 'Quadra QR 218 Conjunto H'),
('72548510', 'Quadra', 'Santa Maria', 'Santa Maria', 'DF', 'Quadra QR 218 Conjunto J'),
('72548512', 'Quadra', 'Santa Maria', 'Santa Maria', 'DF', 'Quadra QR 218 Conjunto L'),
('72548514', NULL, 'Santa Maria', 'BrasÃ­lia', 'DF', 'QR 218 Conjunto N');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idFornecedor` int(11) NOT NULL,
  `cnpj_cpf` varchar(14) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `tipoFornecedor` varchar(15) COLLATE latin1_general_ci DEFAULT NULL,
  `nomeFantasia` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `razao_nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `cep` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `numero` int(11) DEFAULT NULL,
  `telefone1` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `telefone2` varchar(11) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `nomeContato` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `incEstadual` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `rg` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idFornecedor`, `cnpj_cpf`, `tipoFornecedor`, `nomeFantasia`, `razao_nome`, `cep`, `numero`, `telefone1`, `telefone2`, `email`, `nomeContato`, `incEstadual`, `rg`, `status`) VALUES
(2, '00985310000102', 'PJ', 'SANDALIAS KOC PITT', 'JEOVA SOUZA DA SILVA ME', '72548512', 11, '30122298', '81311163', 'kp@hotmail.com', 'JEOVA', '07362666600129', '', 'ATIVO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedorcalcado`
--

CREATE TABLE `fornecedorcalcado` (
  `idFornecedorCalcado` int(11) NOT NULL,
  `idfornecedor` int(11) DEFAULT NULL,
  `idcalcado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `fornecedorcalcado`
--

INSERT INTO `fornecedorcalcado` (`idFornecedorCalcado`, `idfornecedor`, `idcalcado`) VALUES
(1, 2, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idFuncionario` int(11) NOT NULL,
  `cpf` varchar(11) COLLATE latin1_general_ci NOT NULL DEFAULT '',
  `nome` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `login` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `senha` varchar(8) COLLATE latin1_general_ci DEFAULT NULL,
  `email` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `status` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `comissao` double DEFAULT 0,
  `idperfil` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idFuncionario`, `cpf`, `nome`, `login`, `senha`, `email`, `status`, `comissao`, `idperfil`) VALUES
(6, '22233344455', 'DIOGO BRITO', 'diogo', '123456', 'diogobritobsb@gmail.com', 'ATIVO', 0, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itemcompra`
--

CREATE TABLE `itemcompra` (
  `idItem` int(11) NOT NULL,
  `idcompra` int(11) DEFAULT NULL,
  `idCalcadoCor` int(11) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `preco` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `itempedido`
--

CREATE TABLE `itempedido` (
  `idItem` int(11) NOT NULL,
  `idCalcadoCor` int(11) DEFAULT NULL,
  `idpedido` int(11) DEFAULT NULL,
  `quant` int(11) DEFAULT NULL,
  `precoTabela` double DEFAULT NULL,
  `precoVendido` double DEFAULT NULL,
  `desconto` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `itempedido`
--

INSERT INTO `itempedido` (`idItem`, `idCalcadoCor`, `idpedido`, `quant`, `precoTabela`, `precoVendido`, `desconto`) VALUES
(14, 1, 7, 12, 17.59, 17.59, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `marca`
--

CREATE TABLE `marca` (
  `idmarca` int(11) NOT NULL,
  `marca` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `marca`
--

INSERT INTO `marca` (`idmarca`, `marca`) VALUES
(7, 'DUPÉ'),
(6, 'HAVAIANAS'),
(2, 'KOC PITT'),
(5, 'RIDER');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pedido`
--

CREATE TABLE `pedido` (
  `idpedido` int(11) NOT NULL,
  `dataPedido` date DEFAULT NULL,
  `tipoPedido` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `dataEntrega` date DEFAULT NULL,
  `idCliente` int(11) DEFAULT 0,
  `vendedor` int(11) DEFAULT 0,
  `autorizador` int(11) DEFAULT 0,
  `entregador` int(11) DEFAULT 0,
  `condicaoPag` varchar(30) COLLATE latin1_general_ci DEFAULT '',
  `formaPag` varchar(30) COLLATE latin1_general_ci DEFAULT '',
  `percComissao` double DEFAULT NULL,
  `valorComissao` double DEFAULT 0,
  `statusComissao` varchar(11) COLLATE latin1_general_ci DEFAULT '',
  `statusPedido` varchar(30) COLLATE latin1_general_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `pedido`
--

INSERT INTO `pedido` (`idpedido`, `dataPedido`, `tipoPedido`, `dataEntrega`, `idCliente`, `vendedor`, `autorizador`, `entregador`, `condicaoPag`, `formaPag`, `percComissao`, `valorComissao`, `statusComissao`, `statusPedido`) VALUES
(6, '2021-11-03', 'VENDA', '2021-11-03', 2, 6, 6, 6, '', '', 0, 0, '', 'SUGESTAO'),
(7, '2021-11-03', 'VENDA', '2021-11-03', 2, 6, 6, 6, 'A PRAZO', 'BOLETO', 0, 0, '', 'SUGESTAO');

-- --------------------------------------------------------

--
-- Estrutura da tabela `perfil`
--

CREATE TABLE `perfil` (
  `idperfil` int(11) NOT NULL,
  `perfil` varchar(30) COLLATE latin1_general_ci DEFAULT NULL,
  `mant_func` tinyint(1) DEFAULT NULL,
  `cons_func` tinyint(1) DEFAULT NULL,
  `mant_perfil` tinyint(1) DEFAULT NULL,
  `cons_perfil` tinyint(1) DEFAULT NULL,
  `mant_client` tinyint(1) DEFAULT NULL,
  `cons_client` tinyint(1) DEFAULT NULL,
  `mant_forn` tinyint(1) DEFAULT NULL,
  `cons_forn` tinyint(1) DEFAULT NULL,
  `man_tipocalc` tinyint(1) DEFAULT NULL,
  `List_calc` tinyint(1) DEFAULT NULL,
  `mant_marc` tinyint(1) DEFAULT NULL,
  `list_marc` tinyint(1) DEFAULT NULL,
  `mant_cor` tinyint(1) DEFAULT NULL,
  `list_cor` tinyint(1) DEFAULT NULL,
  `mant_calc` tinyint(1) DEFAULT NULL,
  `cons_calc` tinyint(1) DEFAULT NULL,
  `mant_ped` tinyint(1) DEFAULT NULL,
  `aut_ped` tinyint(1) DEFAULT NULL,
  `remet_entreg` tinyint(1) DEFAULT NULL,
  `regist_entreg` tinyint(1) DEFAULT NULL,
  `solicit_altera` tinyint(1) DEFAULT NULL,
  `assin_ped` tinyint(1) DEFAULT NULL,
  `canc_ped` tinyint(1) DEFAULT NULL,
  `mant_item_ped` tinyint(1) DEFAULT NULL,
  `cons_item_ped` tinyint(1) DEFAULT NULL,
  `regist_pag_cont_rec` tinyint(1) DEFAULT NULL,
  `realiz_comp` tinyint(1) DEFAULT NULL,
  `regist_pag_cont_pag` tinyint(1) DEFAULT NULL,
  `mant_item_comp` tinyint(1) DEFAULT NULL,
  `cons_item_comp` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `perfil`
--

INSERT INTO `perfil` (`idperfil`, `perfil`, `mant_func`, `cons_func`, `mant_perfil`, `cons_perfil`, `mant_client`, `cons_client`, `mant_forn`, `cons_forn`, `man_tipocalc`, `List_calc`, `mant_marc`, `list_marc`, `mant_cor`, `list_cor`, `mant_calc`, `cons_calc`, `mant_ped`, `aut_ped`, `remet_entreg`, `regist_entreg`, `solicit_altera`, `assin_ped`, `canc_ped`, `mant_item_ped`, `cons_item_ped`, `regist_pag_cont_rec`, `realiz_comp`, `regist_pag_cont_pag`, `mant_item_comp`, `cons_item_comp`) VALUES
(1, 'ADMINISTRADOR', 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1),
(2, 'VENDEDOR', 0, 0, 0, 0, 1, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0),
(3, 'AUXILIAR ADMINISTRATIVO', 1, 1, 0, 0, 0, 1, 1, 1, 0, 0, 0, 0, 0, 0, 1, 1, 0, 1, 0, 0, 0, 0, 1, 0, 0, 1, 1, 1, 0, 0),
(4, 'AUXILIAR DE EXPEDICAO', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(5, 'ENTREGADOR', 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipocalcado`
--

CREATE TABLE `tipocalcado` (
  `idtipocalcado` int(11) NOT NULL,
  `tipocalcado` varchar(30) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Extraindo dados da tabela `tipocalcado`
--

INSERT INTO `tipocalcado` (`idtipocalcado`, `tipocalcado`) VALUES
(3, 'SANDALIA'),
(2, 'TENIS');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `calcado`
--
ALTER TABLE `calcado`
  ADD PRIMARY KEY (`idcalcado`),
  ADD KEY `idtipocalcado` (`idtipocalcado`),
  ADD KEY `idmarca` (`idmarca`);

--
-- Índices para tabela `calcadocor`
--
ALTER TABLE `calcadocor`
  ADD PRIMARY KEY (`idCalcadoCor`),
  ADD KEY `idcalcado` (`idcalcado`),
  ADD KEY `idcor` (`idcor`);

--
-- Índices para tabela `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idCliente`,`cnpj_cpf`),
  ADD KEY `cep` (`cep`),
  ADD KEY `cliente_ibfk_2` (`idFuncionario`);

--
-- Índices para tabela `compra`
--
ALTER TABLE `compra`
  ADD PRIMARY KEY (`idcompra`);

--
-- Índices para tabela `contaspagar`
--
ALTER TABLE `contaspagar`
  ADD PRIMARY KEY (`idcontaPagar`),
  ADD KEY `idcompra` (`idcompra`);

--
-- Índices para tabela `contasreceber`
--
ALTER TABLE `contasreceber`
  ADD PRIMARY KEY (`idContaReceber`),
  ADD KEY `idpedido` (`idpedido`),
  ADD KEY `contasreceber_ibfk_2` (`idcliente`);

--
-- Índices para tabela `cor`
--
ALTER TABLE `cor`
  ADD PRIMARY KEY (`idcor`),
  ADD UNIQUE KEY `cor` (`cor`);

--
-- Índices para tabela `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`cep`);

--
-- Índices para tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idFornecedor`,`cnpj_cpf`),
  ADD KEY `cep` (`cep`);

--
-- Índices para tabela `fornecedorcalcado`
--
ALTER TABLE `fornecedorcalcado`
  ADD PRIMARY KEY (`idFornecedorCalcado`),
  ADD KEY `idfornecedor` (`idfornecedor`),
  ADD KEY `idcalcado` (`idcalcado`);

--
-- Índices para tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idFuncionario`,`cpf`),
  ADD UNIQUE KEY `login` (`login`),
  ADD KEY `idperfil` (`idperfil`);

--
-- Índices para tabela `itemcompra`
--
ALTER TABLE `itemcompra`
  ADD PRIMARY KEY (`idItem`),
  ADD KEY `idcompra` (`idcompra`),
  ADD KEY `idCalcadoCor` (`idCalcadoCor`);

--
-- Índices para tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD PRIMARY KEY (`idItem`),
  ADD KEY `idCalcadoCor` (`idCalcadoCor`),
  ADD KEY `idpedido` (`idpedido`);

--
-- Índices para tabela `marca`
--
ALTER TABLE `marca`
  ADD PRIMARY KEY (`idmarca`),
  ADD UNIQUE KEY `marca` (`marca`);

--
-- Índices para tabela `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`idpedido`),
  ADD KEY `idCliente` (`idCliente`),
  ADD KEY `vendedor` (`vendedor`),
  ADD KEY `autorizador` (`autorizador`),
  ADD KEY `entregador` (`entregador`);

--
-- Índices para tabela `perfil`
--
ALTER TABLE `perfil`
  ADD PRIMARY KEY (`idperfil`);

--
-- Índices para tabela `tipocalcado`
--
ALTER TABLE `tipocalcado`
  ADD PRIMARY KEY (`idtipocalcado`),
  ADD UNIQUE KEY `tipocalcado` (`tipocalcado`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `calcado`
--
ALTER TABLE `calcado`
  MODIFY `idcalcado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `calcadocor`
--
ALTER TABLE `calcadocor`
  MODIFY `idCalcadoCor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `cliente`
--
ALTER TABLE `cliente`
  MODIFY `idCliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `compra`
--
ALTER TABLE `compra`
  MODIFY `idcompra` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contaspagar`
--
ALTER TABLE `contaspagar`
  MODIFY `idcontaPagar` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `contasreceber`
--
ALTER TABLE `contasreceber`
  MODIFY `idContaReceber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `cor`
--
ALTER TABLE `cor`
  MODIFY `idcor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `fornecedor`
--
ALTER TABLE `fornecedor`
  MODIFY `idFornecedor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `fornecedorcalcado`
--
ALTER TABLE `fornecedorcalcado`
  MODIFY `idFornecedorCalcado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `funcionario`
--
ALTER TABLE `funcionario`
  MODIFY `idFuncionario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `itemcompra`
--
ALTER TABLE `itemcompra`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `itempedido`
--
ALTER TABLE `itempedido`
  MODIFY `idItem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de tabela `marca`
--
ALTER TABLE `marca`
  MODIFY `idmarca` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `pedido`
--
ALTER TABLE `pedido`
  MODIFY `idpedido` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `perfil`
--
ALTER TABLE `perfil`
  MODIFY `idperfil` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tipocalcado`
--
ALTER TABLE `tipocalcado`
  MODIFY `idtipocalcado` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `calcado`
--
ALTER TABLE `calcado`
  ADD CONSTRAINT `calcado_ibfk_1` FOREIGN KEY (`idtipocalcado`) REFERENCES `tipocalcado` (`idtipocalcado`),
  ADD CONSTRAINT `calcado_ibfk_2` FOREIGN KEY (`idmarca`) REFERENCES `marca` (`idmarca`);

--
-- Limitadores para a tabela `calcadocor`
--
ALTER TABLE `calcadocor`
  ADD CONSTRAINT `calcadocor_ibfk_1` FOREIGN KEY (`idcalcado`) REFERENCES `calcado` (`idcalcado`),
  ADD CONSTRAINT `calcadocor_ibfk_2` FOREIGN KEY (`idcor`) REFERENCES `cor` (`idcor`);

--
-- Limitadores para a tabela `cliente`
--
ALTER TABLE `cliente`
  ADD CONSTRAINT `cliente_ibfk_1` FOREIGN KEY (`cep`) REFERENCES `endereco` (`cep`),
  ADD CONSTRAINT `cliente_ibfk_2` FOREIGN KEY (`idFuncionario`) REFERENCES `funcionario` (`idFuncionario`);

--
-- Limitadores para a tabela `contaspagar`
--
ALTER TABLE `contaspagar`
  ADD CONSTRAINT `contaspagar_ibfk_1` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`);

--
-- Limitadores para a tabela `contasreceber`
--
ALTER TABLE `contasreceber`
  ADD CONSTRAINT `contasreceber_ibfk_1` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`idpedido`),
  ADD CONSTRAINT `contasreceber_ibfk_2` FOREIGN KEY (`idcliente`) REFERENCES `cliente` (`idCliente`);

--
-- Limitadores para a tabela `fornecedorcalcado`
--
ALTER TABLE `fornecedorcalcado`
  ADD CONSTRAINT `fornecedorcalcado_ibfk_1` FOREIGN KEY (`idfornecedor`) REFERENCES `fornecedor` (`idFornecedor`),
  ADD CONSTRAINT `fornecedorcalcado_ibfk_2` FOREIGN KEY (`idcalcado`) REFERENCES `calcado` (`idcalcado`);

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`idperfil`) REFERENCES `perfil` (`idperfil`);

--
-- Limitadores para a tabela `itemcompra`
--
ALTER TABLE `itemcompra`
  ADD CONSTRAINT `itemcompra_ibfk_1` FOREIGN KEY (`idcompra`) REFERENCES `compra` (`idcompra`),
  ADD CONSTRAINT `itemcompra_ibfk_2` FOREIGN KEY (`idCalcadoCor`) REFERENCES `calcadocor` (`idCalcadoCor`);

--
-- Limitadores para a tabela `itempedido`
--
ALTER TABLE `itempedido`
  ADD CONSTRAINT `itempedido_ibfk_1` FOREIGN KEY (`idCalcadoCor`) REFERENCES `calcadocor` (`idCalcadoCor`),
  ADD CONSTRAINT `itempedido_ibfk_2` FOREIGN KEY (`idpedido`) REFERENCES `pedido` (`idpedido`);

--
-- Limitadores para a tabela `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`idCliente`) REFERENCES `cliente` (`idCliente`),
  ADD CONSTRAINT `pedido_ibfk_2` FOREIGN KEY (`vendedor`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `pedido_ibfk_3` FOREIGN KEY (`autorizador`) REFERENCES `funcionario` (`idFuncionario`),
  ADD CONSTRAINT `pedido_ibfk_4` FOREIGN KEY (`entregador`) REFERENCES `funcionario` (`idFuncionario`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
