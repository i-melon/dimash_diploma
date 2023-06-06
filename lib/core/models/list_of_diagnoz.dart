import 'dart:convert';

import 'package:dimash_diploma/core/models/answer.dart';
import 'package:dimash_diploma/core/models/diagnoz.dart';
import 'package:dimash_diploma/core/models/question.dart';

import 'db.dart';

// final List<Map<String, dynamic>> jsonList =
//     List<Map<String, dynamic>>.from(jsonDecode(json as String));
// final List<Diagnoz> diagnoses =
//     jsonList.map((json) => Diagnoz.fromJson(json)).toList();

List<Diagnoz> listOfDiagnos = [
  Diagnoz(name: 'Бронхит', symptoms: [
    'Кашель',
    'Температура',
    'Макрота'
  ], questions: [
    Question(question: 'Как давно у вас начались симпотмы?', answers: [
      Answer(name: '1-2 дня', point: 4),
      Answer(name: '1-2 неделя', point: 5),
      Answer(name: 'почти месяц', point: 2),
      Answer(name: 'больше месяца', point: 1)
    ]),
    Question(question: 'Кашель сухой?', answers: [
      Answer(name: 'да', point: 5),
      Answer(name: 'нет', point: 4),
      Answer(name: 'не уверен', point: 3)
    ]),
    Question(
        question: 'чувствуете ли вы боль в горле во время глотка?',
        answers: [
          Answer(name: 'резкая боль', point: 5),
          Answer(name: 'тупая боль до глотка', point: 4),
          Answer(name: 'тупая боль после глотка', point: 4),
          Answer(name: 'не болит', point: 2)
        ])
  ]),
  Diagnoz(name: 'Отравление', symptoms: [
    'Жидкие какашки',
    'Рвота',
  ], questions: [
    Question(question: 'Как давно у вас начались симпотмы?', answers: [
      Answer(name: '1-2 дня', point: 4),
      Answer(name: '1-2 неделя', point: 5),
      Answer(name: 'почти месяц', point: 2),
      Answer(name: 'больше месяца', point: 1)
    ]),
    Question(question: 'Болит ли у вас живот?', answers: [
      Answer(name: 'да', point: 5),
      Answer(name: 'нет', point: 1),
      Answer(name: 'не уверен', point: 3),
    ]),
    Question(question: 'Имеют ли кал необычный цвет?', answers: [
      Answer(name: 'с кровью', point: 2),
      Answer(name: 'желтоватый', point: 5),
      Answer(name: 'темный', point: 4),
      Answer(name: 'не имеют', point: 1)
    ])
  ]),
  Diagnoz(name: "Грипп", symptoms: [
    "Кашель",
    "Высокая температура",
    "Боль в горле"
  ], questions: [
    Question(question: "Как долго длится ваш кашель?", answers: [
      Answer(name: "Менее недели", point: 4),
      Answer(name: "Несколько недель", point: 3),
      Answer(name: 'больше месяца', point: 5)
    ]),
    Question(question: "Какая у вас температура?", answers: [
      Answer(name: "37-38°C", point: 5),
      Answer(name: "38-39°C", point: 1),
      Answer(name: "Более 39°C", point: 3),
    ]),
    Question(
        question: "У вас есть затруднение глотания?",
        answers: [Answer(name: "Да", point: 4), Answer(name: "Нет", point: 1)])
  ]),
  Diagnoz(name: "Диабет", symptoms: [
    "Частое мочеиспускание",
    "Сильная жажда",
    "Усталость"
  ], questions: [
    Question(question: "Как часто вы ходите мочиться?", answers: [
      Answer(name: "3-5 раз в день", point: 4),
      Answer(name: "Реже 3 раз в день", point: 3),
      Answer(name: "Чаще 5 раз в день", point: 5)
    ]),
    Question(question: "У вас часто возникает жажда?", answers: [
      Answer(name: "Да", point: 5),
      Answer(name: "Нет", point: 1),
    ]),
    Question(
        question: "Вы быстро утомляетесь?",
        answers: [Answer(name: "Да", point: 4), Answer(name: "Нет", point: 1)])
  ]),
  Diagnoz(name: "Острый гастрит", symptoms: [
    "Боль в желудке",
    "Тошнота",
    "Рвота"
  ], questions: [
    Question(question: "Как давно у вас возникла боль в желудке?", answers: [
      Answer(name: "3-5 раз в день", point: 4),
      Answer(name: "Несколько недель", point: 3),
      Answer(name: "Более месяца", point: 5)
    ]),
    Question(question: "Часто ли у вас возникает тошнота?", answers: [
      Answer(name: "Да", point: 5),
      Answer(name: "Нет", point: 1),
    ]),
    Question(
        question: "Бывает ли у вас рвота?",
        answers: [Answer(name: "Да", point: 4), Answer(name: "Нет", point: 1)])
  ]),
  Diagnoz(name: "Артрит", symptoms: [
    "Боль в суставах",
    "Отек суставов",
    "Ограничение подвижности"
  ], questions: [
    Question(question: "Как давно у вас появилась боль в суставах?", answers: [
      Answer(name: "Несколько недель", point: 4),
      Answer(name: "Менее недели", point: 3),
      Answer(name: "Более месяца", point: 5)
    ]),
    Question(question: "У вас есть отек суставов?", answers: [
      Answer(name: "Да", point: 5),
      Answer(name: "Нет", point: 1),
    ]),
    Question(
        question: "Вы испытываете ограничение подвижности в суставах?",
        answers: [Answer(name: "Да", point: 4), Answer(name: "Нет", point: 1)])
  ]),
  Diagnoz(name: "Депрессия", symptoms: [
    "Пониженное настроение",
    "Утренняя тревога",
    "Потеря интереса к увлечениям"
  ], questions: [
    Question(question: "Вы испытываете пониженное настроение?", answers: [
      Answer(name: "Не уверен", point: 4),
      Answer(name: "Нет", point: 3),
      Answer(name: "Да", point: 5)
    ]),
    Question(question: "Вы чувствуете утреннюю тревогу?", answers: [
      Answer(name: "Да", point: 5),
      Answer(name: "Нет", point: 1),
    ]),
    Question(
        question: "Вы потеряли интерес к прежним увлечениям?",
        answers: [Answer(name: "Да", point: 4), Answer(name: "Нет", point: 1)])
  ]),
  Diagnoz(name: "Анемия", symptoms: [
    "Слабость",
    "Бледность кожи",
    "Утомляемость"
  ], questions: [
    Question(question: "Вы чувствуете слабость и усталость?", answers: [
      Answer(name: "Не уверен", point: 4),
      Answer(name: "Нет", point: 3),
      Answer(name: "Да", point: 5)
    ]),
    Question(question: "Ваша кожа имеет бледный оттенок?", answers: [
      Answer(name: "Да", point: 5),
      Answer(name: "Нет", point: 1),
    ]),
    Question(
        question: "Вы быстро утомляетесь?",
        answers: [Answer(name: "Да", point: 4), Answer(name: "Нет", point: 1)])
  ]),
  Diagnoz(name: "Остеохондроз", symptoms: [
    "Боль в спине",
    "Ограничение движения",
    "Шейная головная боль"
  ], questions: [
    Question(question: "У вас бывает боль в спине?", answers: [
      Answer(name: "Не уверен", point: 4),
      Answer(name: "Нет", point: 3),
      Answer(name: "Да", point: 5)
    ]),
    Question(question: "Вы ощущаете ограничение движения в спине?", answers: [
      Answer(name: "Да", point: 5),
      Answer(name: "Нет", point: 1),
    ]),
    Question(
        question: "У вас возникает головная боль в шейной области?",
        answers: [Answer(name: "Да", point: 4), Answer(name: "Нет", point: 1)])
  ]),
];
