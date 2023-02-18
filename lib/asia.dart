import 'package:game_test/suroo.dart';

List<Suroo> asiaQuestions = [
  s1,
  s2,
  s3,
  s4,
  s5,
  s6,
  s7,
  s8,
  s9,
  s10,
];

const s1 = Suroo(text: 'Казахстан', images: 'kazak', jooptor: [
  Joop(text: 'Астана', isTrue: true),
  Joop(text: 'Амман'),
  Joop(text: 'Дакка'),
  Joop(text: 'Дили')
]);

const s2 = Suroo(text: 'Таиланд', images: 'tailand', jooptor: [
  Joop(text: 'Бейрут'),
  Joop(text: 'Бангок', isTrue: true),
  Joop(text: 'Дели'),
  Joop(text: 'Кабул'),
]);

const s3 = Suroo(text: 'Индия', images: 'india', jooptor: [
  Joop(text: 'Нью-Дели', isTrue: true),
  Joop(text: 'Монако'),
  Joop(text: 'Пекин'),
  Joop(text: 'Сана'),
]);

const s4 = Suroo(text: 'Узбекистан', images: 'uzbek', jooptor: [
  Joop(text: 'Душанбе'),
  Joop(text: 'Ватикан'),
  Joop(text: 'Тегеран'),
  Joop(text: 'Ташкент', isTrue: true),
]);

const s5 = Suroo(text: 'Турция', images: 'tursia', jooptor: [
  Joop(text: 'Стамбул'),
  Joop(text: 'Анкара', isTrue: true),
  Joop(text: 'Рига'),
  Joop(text: 'Бангок'),
]);

const s6 = Suroo(text: 'Катар', images: 'katar', jooptor: [
  Joop(text: 'Монако'),
  Joop(text: 'Доха', isTrue: true),
  Joop(text: 'Осло'),
  Joop(text: 'Ереван'),
]);

const s7 = Suroo(text: 'Израиль', images: 'izrail', jooptor: [
  Joop(text: 'Рим'),
  Joop(text: 'Исламабад'),
  Joop(text: 'Приштина'),
  Joop(text: 'Иерусалим', isTrue: true),
]);

const s8 = Suroo(text: 'Индонезия', images: 'parij', jooptor: [
  Joop(text: 'Манила'),
  Joop(text: 'Бегаван'),
  Joop(text: 'Джакарта', isTrue: true),
  Joop(text: 'Бейрут'),
]);

const s9 = Suroo(text: 'Сингапур', images: 'belarus', jooptor: [
  Joop(text: 'Ватикан'),
  Joop(text: 'Сингапур', isTrue: true),
  Joop(text: 'Мадрид'),
  Joop(text: 'Тегеран'),
]);

const s10 = Suroo(text: 'Кипр ', images: 'chehia', jooptor: [
  Joop(text: 'Прага'),
  Joop(text: 'Таллин'),
  Joop(text: 'Никосия', isTrue: true),
  Joop(text: 'Мале'),
]);
