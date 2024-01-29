-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Creato il: Gen 29, 2024 alle 12:21
-- Versione del server: 10.4.22-MariaDB
-- Versione PHP: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `verificainventariozanon`
--

-- --------------------------------------------------------

--
-- Struttura della tabella `prodotti`
--

CREATE TABLE `prodotti` (
  `Id` int(11) NOT NULL,
  `CodiceFarnell` varchar(50) NOT NULL,
  `Descrizione` varchar(300) NOT NULL,
  `Produttore` varchar(50) NOT NULL,
  `CodiceProduttore` varchar(50) NOT NULL,
  `Quantità` varchar(50) NOT NULL,
  `Prezzo` decimal(20,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dump dei dati per la tabella `prodotti`
--

INSERT INTO `prodotti` (`Id`, `CodiceFarnell`, `Descrizione`, `Produttore`, `CodiceProduttore`, `Quantità`, `Prezzo`) VALUES
(1, '4208547', 'RIVELATORE; Tipo di Sviluppatore:Sviluppatore Positivo; Applicazioni Developer:-; Metodo di Erogazio', 'CIF', 'AR45', '10', '2.00'),
(2, '2907957', 'USB CABLE, 2.0 PLUG A-MICRO B, 6FT, BLK; Da Connettore a Connettore:Da spina tipo A a micro spina ti', 'MULTICOMP', 'MC002734', '50', '1.00'),
(3, '4148009', 'CLORURO FERRICO, 36C, 2.5L TANICA; Metodo di Erogazione:Barattolo; Gamma Prodotti:-; Sostanze Estrem', 'CIF\r\n', 'AR412', '5', '23.00'),
(4, '1123696', 'INTERR., A 2 POLI, 6 POS, 0,15A, 250V; Num. Di Posizioni Interruttore:6 Posizioni; N° di Poli:2 Poli', 'LORLIN\r\n', 'CK1050', '50', '1.00'),
(5, '3117069', 'IC, OP AMP, DUAL, 0.3V/US, 3000UV, PDIP8; Numero di Amplificatori:2 Amplificatori; Larghezza di Band', 'TEXAS INSTRUMENTS\r\n', 'LM358AP', '100', '0.24'),
(6, '2627992', 'REGOL. TENS. LIN. FISSA, 15V, 1A, TO-220; Tipo di Uscita:Fisso; Tensione di Ingresso Min:23V; Tensio', 'ON SEMICONDUCTOR\r\n', 'NCP7815TG', '50', '0.49'),
(7, '1716993', 'TERMINAL BLOCK, WIRE TO BRD, 2POS, 16AWG; Gamma Prodotti:CTB1202 Series; No. di Contatti:2Contatti; ', 'CAMDENBOSS\r\n', 'CTB1202/2BK', '100', '0.22'),
(8, '1716996', 'TERMINAL BLOCK, WIRE TO BRD, 5POS, 16AWG; Gamma Prodotti:CTB1202 Series; No. di Contatti:5Contatti; ', 'CAMDENBOSS\r\n', 'CTB1202/5BK', '20', '0.72'),
(9, '2346522', 'CON. 1000µF, 35V, 20%; Capacità:1000µF; Tensione Nominale:35V; Gamma Prodotti:Serie PK; Tolleranza C', 'RUBYCON\r\n', '35PK1000MEFCT810X20', '50', '0.41'),
(10, '2668407', 'PRESA DIP, 8POS, 2FILE, 2.54MM, TH; No. di Contatti:8Contatti; Tipo di Connettore:Presa DIP; Distanz', 'AMPHENOL FCI\r\n', 'DILB8P-223TLF', '100', '0.13'),
(11, '9470212', 'RES, 80K6, 1%, 600MW, AXIAL, METAL FILM; Resistenza:80.6kohm; Gamma Prodotti:Serie MRS25; Livello di', 'VISHAY', 'MRS25000C8062FCT00', '100', '0.06'),
(12, '9469915', 'RES, 71K5, 1%, 600MW, AXIAL, METAL FILM; Resistenza:71.5kohm; Gamma Prodotti:Serie MRS25; Livello di', 'VISHAY', 'MRS25000C7152FCT00', '100', '0.06'),
(13, '2329641', 'RESISTORE, CARBON , 20K, 0.33W, 5%; Resistenza:20kohm; Gamma Prodotti:Serie CFR; Livello di Potenza:', 'TE CONNECTIVITY / NEOHM', 'CFR25J20K', '100', '0.01'),
(14, '9469788', 'RES, 6K49, 1%, 600MW, AXIAL, METAL FILM; Resistenza:6.49kohm; Gamma Prodotti:Serie MRS25; Livello di', 'VISHAY', 'MRS25000C6491FCT00', '100', '0.06'),
(15, '2329501', 'RESISTORE, CARBON , 22K, 0,25W, 5%; Resistenza:22kohm; Gamma Prodotti:Serie CFR; Livello di Potenza:', 'TE CONNECTIVITY / NEOHM', 'CFR16J22K', '100', '0.01'),
(16, '2329947', 'RESISTORE, METAL , 4K7, 0,25W, 1%; Resistenza:4.7kohm; Gamma Prodotti:Serie LR; Livello di Potenza:2', 'TE CONNECTIVITY / NEOHM', 'LR0204F4K7', '100', '0.01'),
(17, '3399665', 'RES, 1K5, 0.25W, FILM CARBONIO; ', 'TE CONNECTIVITY / NEOHM', 'CFR16J1K5.', '100', '0.01'),
(18, '9466746', 'RES, 2K32, 1%, 600MW, AXIAL, METAL FILM; Resistenza:2.32kohm; Gamma Prodotti:Serie MRS25; Livello di', 'VISHAY', 'MRS25000C2321FCT00', '100', '0.06'),
(19, '2329866', 'RESISTORE, METAL , 130K, 0,25W, 1%; Resistenza:130kohm; Gamma Prodotti:Serie LR; Livello di Potenza:', 'TE CONNECTIVITY / NEOHM', 'LR0204F130K', '100', '0.01');

--
-- Indici per le tabelle scaricate
--

--
-- Indici per le tabelle `prodotti`
--
ALTER TABLE `prodotti`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT per le tabelle scaricate
--

--
-- AUTO_INCREMENT per la tabella `prodotti`
--
ALTER TABLE `prodotti`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
