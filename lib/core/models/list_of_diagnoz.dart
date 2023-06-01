import 'package:dimash_diploma/core/models/answer.dart';
import 'package:dimash_diploma/core/models/diagnoz.dart';
import 'package:dimash_diploma/core/models/question.dart';

List<Diagnoz> listOfDiagnos = [
  Diagnoz(name: 'Бронхит', symtoms: [
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
  Diagnoz(name: 'Отравление', symtoms: [
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
  ])
];
