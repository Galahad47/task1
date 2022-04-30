-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Май 01 2022 г., 01:54
-- Версия сервера: 5.7.33
-- Версия PHP: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `work`
--

-- --------------------------------------------------------

--
-- Структура таблицы `1lesson`
--

CREATE TABLE `1lesson` (
  `id` int(11) NOT NULL,
  `lesson` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `inspectors_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `1lesson`
--

INSERT INTO `1lesson` (`id`, `lesson`, `group_id`, `inspectors_id`) VALUES
(1, 6, 12, 5),
(2, 9, 12, 2),
(3, 7, 15, 3),
(4, 8, 11, 4),
(5, 10, 14, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `groups_number` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `people_in_group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `groups`
--

INSERT INTO `groups` (`id`, `groups_number`, `people_in_group_id`) VALUES
(11, '2030', 18),
(12, '2010', 20),
(13, '2040', 19),
(14, '2035', 22),
(15, '2010', 21);

-- --------------------------------------------------------

--
-- Структура таблицы `inspectors`
--

CREATE TABLE `inspectors` (
  `inspectors_id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `inspectors`
--

INSERT INTO `inspectors` (`inspectors_id`, `name`, `surname`, `lesson_id`) VALUES
(1, 'Раиса Павловна', 'Корнеева', 6),
(2, 'Дмитрий Александрович', 'Дадарео', 9),
(3, 'Екатерина Васильевна', 'Пахомова', 7),
(4, 'Евгения Сергеевна', 'Тарасова', 8),
(5, 'Николай Алексеевич', 'Тарасов', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `lessons`
--

CREATE TABLE `lessons` (
  `id` int(11) NOT NULL,
  `lesson_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `lessons`
--

INSERT INTO `lessons` (`id`, `lesson_name`) VALUES
(6, 'Матаематика'),
(7, 'Линейная алгебра'),
(8, 'Физика'),
(9, 'Инженерная графика'),
(10, 'РТЦ');

-- --------------------------------------------------------

--
-- Структура таблицы `people_in_group`
--

CREATE TABLE `people_in_group` (
  `id` int(11) NOT NULL,
  `people` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `people_in_group`
--

INSERT INTO `people_in_group` (`id`, `people`) VALUES
(18, '10 человек'),
(19, '15 человек'),
(20, '12 человек'),
(21, '11 человек'),
(22, '18 человек');

-- --------------------------------------------------------

--
-- Структура таблицы `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `surname` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_birthday` datetime NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `students`
--

INSERT INTO `students` (`id`, `name`, `surname`, `date_birthday`, `group_id`) VALUES
(11, 'Нина Григорьевна', 'Рыбакова', '2001-08-22 21:31:25', 12),
(12, '', '', '2003-10-03 21:31:25', 15),
(13, 'Алексей Денисович', 'Пахомов', '2002-06-17 21:31:54', 11),
(14, 'Екатерина Алексеевна', 'Семёнова', '2002-02-17 21:31:54', 14),
(15, 'Андрей Сергеевич', 'Ковалёв', '2002-12-13 21:31:54', 13);

-- --------------------------------------------------------

--
-- Структура таблицы `student_in_groups`
--

CREATE TABLE `student_in_groups` (
  `id` int(11) NOT NULL,
  `student` int(11) NOT NULL,
  `group` int(11) NOT NULL,
  `group1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `student_in_groups`
--

INSERT INTO `student_in_groups` (`id`, `student`, `group`, `group1`) VALUES
(1, 15, 15, 14),
(2, 14, 13, 15),
(3, 13, 15, 14),
(4, 11, 15, 13);

-- --------------------------------------------------------

--
-- Структура таблицы `student_tasks`
--

CREATE TABLE `student_tasks` (
  `id` int(11) NOT NULL,
  `student_tasks` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `student_task1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `student_tasks`
--

INSERT INTO `student_tasks` (`id`, `student_tasks`, `student_id`, `student_task1`) VALUES
(1, 2, 13, 1),
(2, 2, 15, 3),
(3, 1, 14, 4),
(4, 3, 11, 4);

-- --------------------------------------------------------

--
-- Структура таблицы `tasks`
--

CREATE TABLE `tasks` (
  `id` int(11) NOT NULL,
  `task_text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tasks`
--

INSERT INTO `tasks` (`id`, `task_text`, `lesson_id`) VALUES
(1, '01. Последовательности. Предел последовательности.\r\n02. Теория пределов последовательностей, арифметика пределов.\r\n03. Признаки существования предела последовательности, критерий Коши.\r\n04. Бесконечно малые и бесконечно большие последовательности.\r\n05. Классификация бесконечно больших величин.\r\n06. Предел функций, арифметика пределов, критерий Коши для функций.\r\n07. Функций, непрерывные в точке. Классификация разрывов.\r\n08. Замечательные пределы, число e.\r\n09. Свойства непрерывных функций, теорема о максимуме.\r\n10. Производная, ее геометрический и физический смысл. Техника дифференцирования.', 6),
(2, '11. Производные от элементарных функций, от сложной и обратной функций, от функций, заданных параметрически.\r\n12. Первый дифференциал, его геометрический смысл. Инвариантность дифференциала. Применение дифференциала в числовых задачах.\r\n13. Производные и дифференциалы высших порядков.\r\n14. Теоремы Ферма и Ролля.\r\n15. Теоремы Лагранжа и Коши.\r\n16. Правило Лопиталя.\r\n17. Теорема Тейлора.\r\n18. Монотонность функции и знак ее производной.\r\n19. Выпуклость функции и знак второй производной. Точки перегиба.\r\n20. Необходимое и достаточное условие локального максимума ( минимума ).', 6),
(3, '1. Форматы конструкторских документов.\r\n2. Масштабы изображений, и их обозначение на чертеже.\r\n3. Линии чертежа, их начертание и применение.\r\n4. Шрифты чертежные: типы, размеры, особенности начертания.\r\n5. Изображения: получение и подразделение в зависимости от содержания.\r\n6. Виды. Основные: назначение, правила выполнения и обозначения на чертежах.\r\n7. Виды. Дополнительные и местные: назначение, правила выполнения и обозначения\r\nна чертежах.\r\n8. Разрезы: назначение, правила выполнения и обозначения на чертежах.\r\n9. Сложные разрезы: назначение, правила выполнения и обозначения на чертежах.\r\n10. Местные разрезы: назначение, правила выполнения и обозначения на чертежах.', 9),
(4, '11. Сечения: назначение, правила выполнения и обозначения на чертежах.\r\n12. Выносные элементы: назначение, правила выполнения и обозначения на чертежах.\r\n13. Аксонометрические проекции. Аксонометрические оси. Коэффициенты искажения.\r\n14. Графические обозначения материалов и правила их нанесения на чертежах.\r\n15. Правила нанесения размеров на чертежах.\r\n16. Резьба. Правила изображения и обозначения резьбы на чертежах.\r\n17. Классификация резьб. Основные параметры и элементы.\r\n18. Виды изделий и конструкторских документов.\r\n19. Рабочий чертеж и эскиз детали.\r\n20. Сборочный чертеж.', 9),
(5, '\r\nПоле. Примеры полей. Поле остатков от деления на p.\r\n\r\nЛинейное пространство над полем. Его простейшие свойства.\r\n\r\nЛинейно зависимые и независимые системы векторов. Их свойства.\r\n\r\nПолные системы векторов. Их свойства.\r\n\r\nБазис линейного пространства. Единственность разложения по базису.\r\n\r\nЛемма Штейница и следствия из нее. Размерность линейного пространства.\r\n\r\nПодпространство линейного пространства. Сумма и пересечение подпространств.\r\n\r\nЛинейная оболочка совокупности векторов.\r\n\r\nРазмерность суммы подпространств.\r\n\r\nПодстановки. Количество инверсий. Транспозиции. Обратная подстановка.', 7),
(6, 'Подстановки. Количество инверсий. Транспозиции. Обратная подстановка.\r\n\r\nОперации над матрицами. Ассоциативность произведения матриц.\r\n\r\nОпределитель. Неизменность определителя при транспонировании матрицы. Линейность определителя.\r\n\r\nПерестановка строк (столбцов) определителя. Определитель с двумя одинаковыми строками (столбцами).\r\n\r\nОпределитель блочной матрицы.\r\n\r\nРазложение определителя по строке (столбцу).\r\n\r\nОпределитель произведения матриц.\r\n\r\nЭлементарные преобразования матриц. Приведение матрицы к ступенчатому виду.\r\n\r\nРанг матрицы. Теорема о базисном миноре.\r\n\r\nОбратная матрица: единственность, условие существования, методы вычисления.\r\n\r\nПравило Крамера.', 7),
(7, '1. Механическое движение, его относительность. Траектория движения. Путь и перемещение. Материальная точка. (ответ)\r\n\r\n2. Характеристики механического движения: перемещение, скорость, ускорение. Кинематические уравнения, связывающие перемещение, скорость и ускорение в векторной форме. (ответ)\r\n\r\n3. Прямолинейное равномерное движение. Скорость. Графическое представление движения. (ответ)\r\n\r\n4. Равнопеременное движение. Уравнения скорости и перемещения при равнопеременном движении. Графическое представление равнопеременного движения. (ответ)\r\n\r\n5. Взаимодействие тел. Понятие силы. Принцип суперпозиции. Сила упругости, силы трения. (ответ)\r\n\r\n6. Законы Ньютона. (ответ)\r\n\r\n7. Сила тяжести. Закон всемирного тяготения. Вес тела. Невесомость. (ответ)\r\n\r\n8. Импульс тела. Импульс силы. Закон сохранения импульса. (ответ)\r\n\r\n9. Механическая работа и мощность. Единицы измерения работы и мощности. (ответ)\r\n\r\n10. Кинетическая энергия. Потенциальная энергия тела поднятого над поверхностью Земли. Потенциальная энергия упруго деформированного тела. Закон сохранения полной механической энергии. (ответ)\r\n\r\n11. Механические колебания. Параметры колебательного движения.  Уравнение гармонического колебания.\r\n\r\n12. Математический и пружинный маятники. Периоды их колебаний. Превращение энергии при механических колебаниях.\r\n\r\n13. Механические волны. Поперечные и продольные волны. Понятие фронта и длины волны.\r\n\r\n14. Основные положения МКТ. Диффузия и броуновское движение.\r\n\r\n15. Размеры и масса молекул. Количество вещества. Молярная масса. Число Авогадро.\r\n\r\n16. Идеальный газ, его основные свойства. Давление газа, единицы давления.\r\n\r\n17. Парообразование и конденсация. Испарение. Кипение.\r\n\r\n18. Насыщенный пар и его свойства. Влажность воздуха и ее измерение.\r\n\r\n19. Поверхностное натяжение жидкости. Коэффициент поверхностного натяжения жидкости. Явления смачивания и не смачивания. Краевой угол.\r\n\r\n20. Понятия кристаллического и аморфного тел. Виды кристаллических решёток. Плавление и кристаллизация твёрдых тел.', 8),
(8, '1.Радиоканал и его основные элементы, понятие РТЦ.\r\n2.Классификация радиотехнических сигналов.\r\n3.Принцип  динамического  представленияи  элементарные стандартные (типовые) сигналы.\r\n4.Динанамическое  представление  сигналов  посредством  функции включения.\r\n5.Динанамическое  представление  сигналов  посредством  дельта-функции.\r\n6.Обобщенные функции.\r\n7.Векторное представление сигналов.\r\n8.Скалярное произведение, норма, метрикаи энергиявекторов.\r\n9.Ортонормированный базис.\r\n10.Основные свойства пространства сигналов.', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `task_for_group_students_lesson`
--

CREATE TABLE `task_for_group_students_lesson` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task_for_group_students_lesson`
--

INSERT INTO `task_for_group_students_lesson` (`id`, `task_id`, `group_id`, `student_id`, `lesson_id`) VALUES
(1, 7, 12, 1, 8),
(2, 3, 15, 1, 7),
(3, 8, 11, 1, 10),
(4, 5, 14, 2, 8);

-- --------------------------------------------------------

--
-- Структура таблицы `task_some_inspectors`
--

CREATE TABLE `task_some_inspectors` (
  `id` int(11) NOT NULL,
  `task_variant` int(11) NOT NULL,
  `inspector1_id` int(11) NOT NULL,
  `inspector2_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `task_some_inspectors`
--

INSERT INTO `task_some_inspectors` (`id`, `task_variant`, `inspector1_id`, `inspector2_id`) VALUES
(1, 1, 5, 2),
(2, 2, 5, 1);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `1lesson`
--
ALTER TABLE `1lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson` (`lesson`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `inspectors_id` (`inspectors_id`);

--
-- Индексы таблицы `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `people_in_group_id` (`people_in_group_id`);

--
-- Индексы таблицы `inspectors`
--
ALTER TABLE `inspectors`
  ADD PRIMARY KEY (`inspectors_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Индексы таблицы `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `people_in_group`
--
ALTER TABLE `people_in_group`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `group_id` (`group_id`);

--
-- Индексы таблицы `student_in_groups`
--
ALTER TABLE `student_in_groups`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student` (`student`),
  ADD KEY `group` (`group`),
  ADD KEY `group1` (`group1`);

--
-- Индексы таблицы `student_tasks`
--
ALTER TABLE `student_tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `student_tasks` (`student_tasks`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `student_task1` (`student_task1`);

--
-- Индексы таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Индексы таблицы `task_for_group_students_lesson`
--
ALTER TABLE `task_for_group_students_lesson`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_id` (`task_id`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `student_id` (`student_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Индексы таблицы `task_some_inspectors`
--
ALTER TABLE `task_some_inspectors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `task_variant` (`task_variant`),
  ADD KEY `inspector1_id` (`inspector1_id`),
  ADD KEY `inspector2_id` (`inspector2_id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `1lesson`
--
ALTER TABLE `1lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `inspectors`
--
ALTER TABLE `inspectors`
  MODIFY `inspectors_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `lessons`
--
ALTER TABLE `lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `people_in_group`
--
ALTER TABLE `people_in_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT для таблицы `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT для таблицы `student_in_groups`
--
ALTER TABLE `student_in_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `student_tasks`
--
ALTER TABLE `student_tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `task_for_group_students_lesson`
--
ALTER TABLE `task_for_group_students_lesson`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `task_some_inspectors`
--
ALTER TABLE `task_some_inspectors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `1lesson`
--
ALTER TABLE `1lesson`
  ADD CONSTRAINT `1lesson_ibfk_1` FOREIGN KEY (`lesson`) REFERENCES `lessons` (`id`),
  ADD CONSTRAINT `1lesson_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `1lesson_ibfk_3` FOREIGN KEY (`inspectors_id`) REFERENCES `inspectors` (`inspectors_id`);

--
-- Ограничения внешнего ключа таблицы `groups`
--
ALTER TABLE `groups`
  ADD CONSTRAINT `groups_ibfk_1` FOREIGN KEY (`people_in_group_id`) REFERENCES `people_in_group` (`id`);

--
-- Ограничения внешнего ключа таблицы `inspectors`
--
ALTER TABLE `inspectors`
  ADD CONSTRAINT `inspectors_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Ограничения внешнего ключа таблицы `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `student_in_groups`
--
ALTER TABLE `student_in_groups`
  ADD CONSTRAINT `student_in_groups_ibfk_1` FOREIGN KEY (`student`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_in_groups_ibfk_2` FOREIGN KEY (`group`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `student_in_groups_ibfk_3` FOREIGN KEY (`group1`) REFERENCES `groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `student_tasks`
--
ALTER TABLE `student_tasks`
  ADD CONSTRAINT `student_tasks_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`),
  ADD CONSTRAINT `student_tasks_ibfk_2` FOREIGN KEY (`student_tasks`) REFERENCES `task_for_group_students_lesson` (`id`),
  ADD CONSTRAINT `student_tasks_ibfk_3` FOREIGN KEY (`student_task1`) REFERENCES `task_for_group_students_lesson` (`id`);

--
-- Ограничения внешнего ключа таблицы `tasks`
--
ALTER TABLE `tasks`
  ADD CONSTRAINT `tasks_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`);

--
-- Ограничения внешнего ключа таблицы `task_for_group_students_lesson`
--
ALTER TABLE `task_for_group_students_lesson`
  ADD CONSTRAINT `task_for_group_students_lesson_ibfk_2` FOREIGN KEY (`group_id`) REFERENCES `groups` (`id`),
  ADD CONSTRAINT `task_for_group_students_lesson_ibfk_3` FOREIGN KEY (`task_id`) REFERENCES `tasks` (`id`),
  ADD CONSTRAINT `task_for_group_students_lesson_ibfk_4` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`id`),
  ADD CONSTRAINT `task_for_group_students_lesson_ibfk_5` FOREIGN KEY (`student_id`) REFERENCES `student_in_groups` (`id`);

--
-- Ограничения внешнего ключа таблицы `task_some_inspectors`
--
ALTER TABLE `task_some_inspectors`
  ADD CONSTRAINT `task_some_inspectors_ibfk_1` FOREIGN KEY (`task_variant`) REFERENCES `task_for_group_students_lesson` (`id`),
  ADD CONSTRAINT `task_some_inspectors_ibfk_2` FOREIGN KEY (`inspector1_id`) REFERENCES `inspectors` (`inspectors_id`),
  ADD CONSTRAINT `task_some_inspectors_ibfk_3` FOREIGN KEY (`inspector2_id`) REFERENCES `inspectors` (`inspectors_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
