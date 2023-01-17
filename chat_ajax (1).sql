-- phpMyAdmin SQL Dump
-- version 5.1.2
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Янв 17 2023 г., 00:49
-- Версия сервера: 5.7.24
-- Версия PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `chat_ajax`
--

-- --------------------------------------------------------

--
-- Структура таблицы `chatrooms`
--

CREATE TABLE `chatrooms` (
  `Id` int(11) NOT NULL,
  `Chat` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `chatrooms`
--

INSERT INTO `chatrooms` (`Id`, `Chat`) VALUES
(23, 'sdfgasdfasdfasdfasdf'),
(24, 'sfdgsdfgsdfg');

-- --------------------------------------------------------

--
-- Структура таблицы `messages`
--

CREATE TABLE `messages` (
  `Id` int(11) NOT NULL,
  `FromUser` int(100) NOT NULL,
  `ToChat` int(100) NOT NULL,
  `Message` varchar(1000) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `messages`
--

INSERT INTO `messages` (`Id`, `FromUser`, `ToChat`, `Message`) VALUES
(49, 19, 23, 'adsfasdf'),
(50, 19, 23, 'adsfasdfasdf'),
(51, 20, 23, 'asdfasdfasdf'),
(52, 21, 23, 'adsfadsfasdf'),
(53, 22, 24, 'sfdgsdfgsdfgsdfg'),
(54, 22, 24, 'sfdgsdfgsdfg');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `Id` int(11) NOT NULL,
  `User` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`Id`, `User`) VALUES
(7, 'asdfasdf'),
(8, 'asdfasdf'),
(9, 'dfghdfghdfggh'),
(10, 'adsfasdfadsf'),
(11, 'zxcvzxcv'),
(12, 'cgvncfgh'),
(13, 'adfasdfasdf'),
(14, 'adfasdf'),
(15, 'adsfasfdadsf'),
(16, 'adfasdfasdf'),
(17, 'asdfasdfasdf'),
(19, 'adfasdfasdf'),
(20, 'adsfasdfasdf'),
(21, 'wertwert'),
(22, 'xdsfgsfdg');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `chatrooms`
--
ALTER TABLE `chatrooms`
  ADD PRIMARY KEY (`Id`);

--
-- Индексы таблицы `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`Id`),
  ADD KEY `FromUser` (`FromUser`),
  ADD KEY `ToUser` (`ToChat`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `chatrooms`
--
ALTER TABLE `chatrooms`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT для таблицы `messages`
--
ALTER TABLE `messages`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `messages`
--
ALTER TABLE `messages`
  ADD CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`FromUser`) REFERENCES `users` (`Id`),
  ADD CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`ToChat`) REFERENCES `chatrooms` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
