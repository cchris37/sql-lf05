-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Erstellungszeit: 28. Sep 2020 um 14:53
-- Server-Version: 10.4.14-MariaDB
-- PHP-Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Datenbank: `krautundrueben`
--

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `allergene`
--

CREATE TABLE `allergene` (
  `allergie_id` int(11) NOT NULL,
  `Laktose` tinyint(1) DEFAULT NULL,
  `Gluten` tinyint(1) DEFAULT NULL,
  `Nuss` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `allergene`
--

INSERT INTO `allergene` (`allergie_id`, `Laktose`, `Gluten`, `Nuss`) VALUES
(1, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellung`
--

CREATE TABLE `bestellung` (
  `BESTELLNR` int(11) NOT NULL,
  `KUNDENNR` int(11) DEFAULT NULL,
  `BESTELLDATUM` date DEFAULT NULL,
  `RECHNUNGSBETRAG` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bestellung`
--

INSERT INTO `bestellung` (`BESTELLNR`, `KUNDENNR`, `BESTELLDATUM`, `RECHNUNGSBETRAG`) VALUES
(1, 2001, '2020-07-01', '6.21'),
(2, 2002, '2020-07-08', '32.96'),
(3, 2003, '2020-08-01', '24.08'),
(4, 2004, '2020-08-02', '19.90'),
(5, 2005, '2020-08-02', '6.47'),
(6, 2006, '2020-08-10', '6.96'),
(7, 2007, '2020-08-10', '2.41'),
(8, 2008, '2020-08-10', '13.80'),
(9, 2009, '2020-08-10', '8.67'),
(10, 2007, '2020-08-15', '17.98'),
(11, 2005, '2020-08-12', '8.67'),
(12, 2003, '2020-08-13', '20.87');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `bestellungzutat`
--

CREATE TABLE `bestellungzutat` (
  `BESTELLNR` int(11) NOT NULL,
  `ZUTATENNR` int(11) NOT NULL,
  `MENGE` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `bestellungzutat`
--

INSERT INTO `bestellungzutat` (`BESTELLNR`, `ZUTATENNR`, `MENGE`) VALUES
(1, 1001, 5),
(1, 1002, 3),
(1, 1004, 3),
(1, 1006, 2),
(2, 1003, 4),
(2, 1005, 5),
(2, 6408, 5),
(2, 9001, 10),
(3, 3001, 5),
(3, 6300, 15),
(4, 3003, 2),
(4, 5001, 7),
(5, 1001, 5),
(5, 1002, 4),
(5, 1004, 5),
(6, 1010, 5),
(7, 1009, 9),
(8, 1008, 7),
(8, 1012, 5),
(9, 1007, 4),
(9, 1012, 5),
(10, 1011, 7),
(10, 4001, 7),
(11, 1012, 5),
(11, 5001, 2),
(12, 1010, 15);

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `kunde`
--

CREATE TABLE `kunde` (
  `KUNDENNR` int(11) NOT NULL,
  `NACHNAME` varchar(50) DEFAULT NULL,
  `VORNAME` varchar(50) DEFAULT NULL,
  `GEBURTSDATUM` date DEFAULT NULL,
  `STRASSE` varchar(50) DEFAULT NULL,
  `HAUSNR` varchar(6) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `ORT` varchar(50) DEFAULT NULL,
  `TELEFON` varchar(25) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `kunde`
--

INSERT INTO `kunde` (`KUNDENNR`, `NACHNAME`, `VORNAME`, `GEBURTSDATUM`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES
(2001, 'Wellensteyn', 'Kira', '1990-05-05', 'Eppendorfer Landstrasse', '104', '20249', 'Hamburg', '040/443322', 'k.wellensteyn@yahoo.de'),
(2002, 'Foede', 'Dorothea', '2000-03-24', 'Ohmstraße', '23', '22765', 'Hamburg', '040/543822', 'd.foede@web.de'),
(2003, 'Leberer', 'Sigrid', '1989-09-21', 'Bilser Berg', '6', '20459', 'Hamburg', '0175/1234588', 'sigrid@leberer.de'),
(2004, 'Soerensen', 'Hanna', '1974-04-03', 'Alter Teichweg', '95', '22049', 'Hamburg', '040/634578', 'h.soerensen@yahoo.de'),
(2005, 'Schnitter', 'Marten', '1964-04-17', 'Stübels', '10', '22835', 'Barsbüttel', '0176/447587', 'schni_mart@gmail.com'),
(2006, 'Maurer', 'Belinda', '1978-09-09', 'Grotelertwiete', '4a', '21075', 'Hamburg', '040/332189', 'belinda1978@yahoo.de'),
(2007, 'Gessert', 'Armin', '1978-01-29', 'Küstersweg', '3', '21079', 'Hamburg', '040/67890', 'armin@gessert.de'),
(2008, 'Haessig', 'Jean-Marc', '1982-08-30', 'Neugrabener Bahnhofstraße', '30', '21149', 'Hamburg', '0178-67013390', 'jm@haessig.de'),
(2009, 'Urocki', 'Eric', '1999-12-04', 'Elbchaussee', '228', '22605', 'Hamburg', '0152-96701390', 'urocki@outlook.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `lieferant`
--

CREATE TABLE `lieferant` (
  `LIEFERANTENNR` int(11) NOT NULL,
  `LIEFERANTENNAME` varchar(50) DEFAULT NULL,
  `STRASSE` varchar(50) DEFAULT NULL,
  `HAUSNR` varchar(6) DEFAULT NULL,
  `PLZ` varchar(5) DEFAULT NULL,
  `ORT` varchar(50) DEFAULT NULL,
  `TELEFON` varchar(25) DEFAULT NULL,
  `EMAIL` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `lieferant`
--

INSERT INTO `lieferant` (`LIEFERANTENNR`, `LIEFERANTENNAME`, `STRASSE`, `HAUSNR`, `PLZ`, `ORT`, `TELEFON`, `EMAIL`) VALUES
(101, 'Bio-Hof Müller', 'Dorfstraße', '74', '24354', 'Weseby', '04354-9080', 'mueller@biohof.de'),
(102, 'Obst-Hof Altes Land', 'Westerjork 74', '76', '21635', 'Jork', '04162-4523', 'info@biohof-altesland.de'),
(103, 'Molkerei Henning', 'Molkereiwegkundekunde', '13', '19217', 'Dechow', '038873-8976', 'info@molkerei-henning.de');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rezept`
--

CREATE TABLE `rezept` (
  `id` int(11) NOT NULL,
  `rezeptbezeichnung` varchar(20) DEFAULT NULL,
  `rezeptanweisung` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `rezept`
--

INSERT INTO `rezept` (`id`, `rezeptbezeichnung`, `rezeptanweisung`) VALUES
(1, 'gekochtes EI', 'TU dasEI für mind. 5MIN in gekochtes Was');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `rezeptzutat`
--

CREATE TABLE `rezeptzutat` (
  `rezept_id` int(11) NOT NULL,
  `zutat_id` int(11) NOT NULL,
  `menge` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `rezeptzutat`
--

INSERT INTO `rezeptzutat` (`rezept_id`, `zutat_id`, `menge`) VALUES
(1, 1003, '60g');

-- --------------------------------------------------------

--
-- Tabellenstruktur für Tabelle `zutat`
--

CREATE TABLE `zutat` (
  `ZUTATENNR` int(11) NOT NULL,
  `BEZEICHNUNG` varchar(50) DEFAULT NULL,
  `EINHEIT` varchar(25) DEFAULT NULL,
  `NETTOPREIS` decimal(10,2) DEFAULT NULL,
  `BESTAND` int(11) DEFAULT NULL,
  `LIEFERANT` int(11) DEFAULT NULL,
  `KALORIEN` int(11) DEFAULT NULL,
  `KOHLENHYDRATE` decimal(10,2) DEFAULT NULL,
  `PROTEIN` decimal(10,2) DEFAULT NULL,
  `allergiezugehörigkeit_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Daten für Tabelle `zutat`
--

INSERT INTO `zutat` (`ZUTATENNR`, `BEZEICHNUNG`, `EINHEIT`, `NETTOPREIS`, `BESTAND`, `LIEFERANT`, `KALORIEN`, `KOHLENHYDRATE`, `PROTEIN`, `allergiezugehörigkeit_id`) VALUES
(1001, 'Zucchini', 'Stück', '0.89', 100, 101, 19, '2.00', '1.60', NULL),
(1002, 'Zwiebel', 'Stück', '0.15', 50, 101, 28, '4.90', '1.20', NULL),
(1003, 'Tomate', 'Stück', '0.45', 50, 101, 18, '2.60', '1.00', NULL),
(1004, 'Schalotte', 'Stück', '0.20', 500, 101, 25, '3.30', '1.50', NULL),
(1005, 'Karotte', 'Stück', '0.30', 500, 101, 41, '10.00', '0.90', NULL),
(1006, 'Kartoffel', 'Stück', '0.15', 1500, 101, 71, '14.60', '2.00', NULL),
(1007, 'Rucola', 'Bund', '0.90', 10, 101, 27, '2.10', '2.60', NULL),
(1008, 'Lauch', 'Stück', '1.20', 35, 101, 29, '3.30', '2.10', NULL),
(1009, 'Knoblauch', 'Stück', '0.25', 250, 101, 141, '28.40', '6.10', NULL),
(1010, 'Basilikum', 'Bund', '1.30', 10, 101, 41, '5.10', '3.10', NULL),
(1011, 'Süßkartoffel', 'Stück', '2.00', 200, 101, 86, '20.00', '1.60', NULL),
(1012, 'Schnittlauch', 'Bund', '0.90', 10, 101, 28, '1.00', '3.00', NULL),
(2001, 'Apfel', 'Stück', '1.20', 750, 102, 54, '14.40', '0.30', NULL),
(3001, 'Vollmilch. 3.5%', 'Liter', '1.50', 50, 103, 65, '4.70', '3.40', 1),
(3002, 'Mozzarella', 'Packung', '3.50', 20, 103, 241, '1.00', '18.10', NULL),
(3003, 'Butter', 'Stück', '3.00', 50, 103, 741, '0.60', '0.70', NULL),
(4001, 'Ei', 'Stück', '0.40', 300, 102, 137, '1.50', '11.90', NULL),
(5001, 'Wiener Würstchen', 'Paar', '1.80', 40, 101, 331, '1.20', '9.90', NULL),
(6300, 'Kichererbsen', 'Dose', '1.00', 400, 103, 150, '21.20', '9.00', NULL),
(6408, 'Couscous', 'Packung', '1.90', 15, 102, 351, '67.00', '12.00', NULL),
(7043, 'Gemüsebrühe', 'Würfel', '0.20', 4000, 101, 1, '0.50', '0.50', NULL),
(9001, 'Tofu-Würstchen', 'Stück', '1.80', 20, 103, 252, '7.00', '17.00', NULL);

--
-- Indizes der exportierten Tabellen
--

--
-- Indizes für die Tabelle `allergene`
--
ALTER TABLE `allergene`
  ADD PRIMARY KEY (`allergie_id`);

--
-- Indizes für die Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  ADD PRIMARY KEY (`BESTELLNR`),
  ADD KEY `KUNDENNR` (`KUNDENNR`);

--
-- Indizes für die Tabelle `bestellungzutat`
--
ALTER TABLE `bestellungzutat`
  ADD PRIMARY KEY (`BESTELLNR`,`ZUTATENNR`),
  ADD KEY `ZUTATENNR` (`ZUTATENNR`);

--
-- Indizes für die Tabelle `kunde`
--
ALTER TABLE `kunde`
  ADD PRIMARY KEY (`KUNDENNR`);

--
-- Indizes für die Tabelle `lieferant`
--
ALTER TABLE `lieferant`
  ADD PRIMARY KEY (`LIEFERANTENNR`);

--
-- Indizes für die Tabelle `rezept`
--
ALTER TABLE `rezept`
  ADD PRIMARY KEY (`id`);

--
-- Indizes für die Tabelle `rezeptzutat`
--
ALTER TABLE `rezeptzutat`
  ADD KEY `rezept_id` (`rezept_id`),
  ADD KEY `zutat_id` (`zutat_id`);

--
-- Indizes für die Tabelle `zutat`
--
ALTER TABLE `zutat`
  ADD PRIMARY KEY (`ZUTATENNR`),
  ADD KEY `LIEFERANT` (`LIEFERANT`),
  ADD KEY `allergiezugehörigkeit_id` (`allergiezugehörigkeit_id`);

--
-- AUTO_INCREMENT für exportierte Tabellen
--

--
-- AUTO_INCREMENT für Tabelle `allergene`
--
ALTER TABLE `allergene`
  MODIFY `allergie_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT für Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  MODIFY `BESTELLNR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT für Tabelle `rezept`
--
ALTER TABLE `rezept`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints der exportierten Tabellen
--

--
-- Constraints der Tabelle `bestellung`
--
ALTER TABLE `bestellung`
  ADD CONSTRAINT `bestellung_ibfk_1` FOREIGN KEY (`KUNDENNR`) REFERENCES `kunde` (`KUNDENNR`);

--
-- Constraints der Tabelle `bestellungzutat`
--
ALTER TABLE `bestellungzutat`
  ADD CONSTRAINT `bestellungzutat_ibfk_1` FOREIGN KEY (`BESTELLNR`) REFERENCES `bestellung` (`BESTELLNR`),
  ADD CONSTRAINT `bestellungzutat_ibfk_2` FOREIGN KEY (`ZUTATENNR`) REFERENCES `zutat` (`ZUTATENNR`);

--
-- Constraints der Tabelle `rezeptzutat`
--
ALTER TABLE `rezeptzutat`
  ADD CONSTRAINT `rezeptzutat_ibfk_1` FOREIGN KEY (`rezept_id`) REFERENCES `rezept` (`id`),
  ADD CONSTRAINT `rezeptzutat_ibfk_2` FOREIGN KEY (`zutat_id`) REFERENCES `zutat` (`ZUTATENNR`);

--
-- Constraints der Tabelle `zutat`
--
ALTER TABLE `zutat`
  ADD CONSTRAINT `zutat_ibfk_1` FOREIGN KEY (`LIEFERANT`) REFERENCES `lieferant` (`LIEFERANTENNR`),
  ADD CONSTRAINT `zutat_ibfk_2` FOREIGN KEY (`allergiezugehörigkeit_id`) REFERENCES `allergene` (`allergie_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
