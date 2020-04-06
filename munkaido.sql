-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Gép: localhost:3306
-- Létrehozás ideje: 2020. Ápr 06. 10:00
-- Kiszolgáló verziója: 5.7.29-0ubuntu0.18.04.1
-- PHP verzió: 7.2.24-0ubuntu0.18.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `bdc`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vizsga_munkaido`
--

CREATE TABLE `vizsga_munkaido` (
  `id` int(11) NOT NULL,
  `munkatarsID` int(11) NOT NULL,
  `mettol` date NOT NULL,
  `meddig` date NOT NULL,
  `tulora` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vizsga_munkaido`
--

INSERT INTO `vizsga_munkaido` (`id`, `munkatarsID`, `mettol`, `meddig`, `tulora`) VALUES
(1, 1, '2020-04-05', '2020-04-07', 5),
(2, 1, '2020-04-08', '2020-04-10', 10),
(3, 2, '2020-04-01', '2020-04-03', 1),
(4, 2, '2020-04-05', '2020-04-08', 4);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `vizsga_munkatars`
--

CREATE TABLE `vizsga_munkatars` (
  `id` int(11) NOT NULL,
  `teljesnev` varchar(50) COLLATE utf8_hungarian_ci NOT NULL,
  `taj` varchar(9) COLLATE utf8_hungarian_ci NOT NULL,
  `adoszam` varchar(11) COLLATE utf8_hungarian_ci NOT NULL,
  `anyjanev` varchar(30) COLLATE utf8_hungarian_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `vizsga_munkatars`
--

INSERT INTO `vizsga_munkatars` (`id`, `teljesnev`, `taj`, `adoszam`, `anyjanev`) VALUES
(1, 'Nagy Zoárd', '012123235', '123456789', 'Kiss Jolánka'),
(2, 'Aromó', '345456567', '87654321', 'Nagy Ilike');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `vizsga_munkaido`
--
ALTER TABLE `vizsga_munkaido`
  ADD PRIMARY KEY (`id`),
  ADD KEY `munkatarsID` (`munkatarsID`);

--
-- A tábla indexei `vizsga_munkatars`
--
ALTER TABLE `vizsga_munkatars`
  ADD PRIMARY KEY (`id`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `vizsga_munkaido`
--
ALTER TABLE `vizsga_munkaido`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT a táblához `vizsga_munkatars`
--
ALTER TABLE `vizsga_munkatars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `vizsga_munkaido`
--
ALTER TABLE `vizsga_munkaido`
  ADD CONSTRAINT `vizsga_munkaido_ibfk_1` FOREIGN KEY (`munkatarsID`) REFERENCES `vizsga_munkatars` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
