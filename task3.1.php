<!doctype html>
<html lang=ru>
<head>

    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Задание 3.1</title>
</head>
<body>
<h1>Задание 3.1 </h1>
    <?php
    $db = new PDO("mysql:host=task;dbname=work", "root", "");
    $stmt = $db->query(' SELECT `task_for_group_students_lesson`.`id`, `task_for_group_students_lesson`.`task_id`, `task_for_group_students_lesson`.`student_id`
FROM `task_for_group_students_lesson`;');
    //Установка fetch mode
    $stmt->setFetchMode(PDO::FETCH_ASSOC);
    while($row = $stmt->fetch())
    {
        echo $names = 'id   id задания   id студента' ;
        echo "<p>" . $row['id'] .  "&emsp;" . "&emsp;" . $row['task_id']  . "&emsp;" . "&emsp;" . $row['student_id'] . "</p>";



    }
    ?>
</body>

</html>
