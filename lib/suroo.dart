class Suroo {
  const Suroo(
      {required this.text, required this.images, required this.jooptor});

  final String text;
  final String images;
  final List<Joop> jooptor;
}

class Joop {
  const Joop({
    required this.text,
    this.isTrue = false,
  });

  final String text;
  final bool isTrue;
}

List<Suroo> europaQuestions = [
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

const s1 = Suroo(text: 'Англия', images: 'London', jooptor: [
  Joop(text: 'Лондон', isTrue: true),
  Joop(text: 'Мадрид'),
  Joop(text: 'Минск'),
  Joop(text: 'Париж')
]);

const s2 = Suroo(text: 'Германия', images: 'berlin', jooptor: [
  Joop(text: 'Будапешт'),
  Joop(text: 'Вена'),
  Joop(text: 'Берлин', isTrue: true),
  Joop(text: 'Варшава'),
]);

const s3 = Suroo(text: 'Италия', images: 'rim', jooptor: [
  Joop(text: 'Рим', isTrue: true),
  Joop(text: 'Монако'),
  Joop(text: 'Лондон'),
  Joop(text: 'София'),
]);

const s4 = Suroo(text: 'Венгрия', images: 'budapest', jooptor: [
  Joop(text: 'Варшава'),
  Joop(text: 'Ватикан'),
  Joop(text: 'Дублин'),
  Joop(text: 'Будапешт', isTrue: true),
]);

const s5 = Suroo(text: 'Польша', images: 'warszawa', jooptor: [
  Joop(text: 'Киев'),
  Joop(text: 'Таллин'),
  Joop(text: 'Рига'),
  Joop(text: 'Варшава', isTrue: true),
]);

const s6 = Suroo(text: 'Греция', images: 'afiny', jooptor: [
  Joop(text: 'Монако'),
  Joop(text: 'Афины', isTrue: true),
  Joop(text: 'Осло'),
  Joop(text: 'Люксембург'),
]);

const s7 = Suroo(text: 'Швеция', images: 'shvesia', jooptor: [
  Joop(text: 'Рим'),
  Joop(text: 'Стокгольм', isTrue: true),
  Joop(text: 'Приштина'),
  Joop(text: 'Афины'),
]);

const s8 = Suroo(text: 'Франция', images: 'parij', jooptor: [
  Joop(text: 'Лондон'),
  Joop(text: 'Париж', isTrue: true),
  Joop(text: 'Осло'),
  Joop(text: 'Афины'),
]);

const s9 = Suroo(text: 'Белоруссия', images: 'belarus', jooptor: [
  Joop(text: 'Ватикан'),
  Joop(text: 'Минск', isTrue: true),
  Joop(text: 'Мадрид'),
  Joop(text: 'Москва'),
]);

const s10 = Suroo(text: 'Чехия ', images: 'chehia', jooptor: [
  Joop(text: 'Прага', isTrue: true),
  Joop(text: 'Таллин'),
  Joop(text: 'Афины'),
  Joop(text: 'Варшава'),
]);
