import 'package:dimash_diploma/core/models/diagnoz.dart';
import 'package:dimash_diploma/core/models/question.dart';

List<Diagnoz> listOfDiagnos = [
  Diagnoz(name: 'Бронхит', symtoms: [
    'Кашель',
    'Температура',
    'Макрота'
  ], questions: [
    Question(question: 'Как давно у вас начались симпотмы?', answers: [
      '1-2 дня',
      '1-2 неделя',
      'почти месяц',
      'больше месяца',
    ]),
    Question(question: 'Кашель сухой?', answers: [
      'да',
      'нет',
      'не уверен',
    ]),
    Question(
        question: 'чувствуете ли вы боль в горле во время глотка?',
        answers: [
          'резкая боль',
          'тупая боль до глотка',
          'тупая боль после глотка',
          'не болит',
        ])
  ]),
  Diagnoz(name: 'Отравление', symtoms: [
    'Жидкие какашки',
    'Рвота',
  ], questions: [
    Question(question: 'Как давно у вас начались симпотмы?', answers: [
      '1-2 дня',
      '1-2 неделя',
      'почти месяц',
      'больше месяца',
    ]),
    Question(question: 'Болит ли у вас живот?', answers: [
      'да',
      'нет',
      'не уверен',
    ]),
    Question(question: 'Имеют ли кал необычный цвет?', answers: [
      'с кровью',
      'желтоватый',
      'темный',
      'не имеют',
    ])
  ])
];
