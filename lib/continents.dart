import 'package:flutter/animation.dart';
import 'package:game_test/app_text.dart';
import 'package:game_test/asia.dart';
import 'package:game_test/suroo.dart';

class Continents {
  const Continents({
    required this.name,
    required this.icon,
    required this.color,
    this.suro,
  });
  final String name;
  final String icon;
  final Color color;
  final List<Suroo>? suro;
}

const africa = Continents(
  name: AppText.africa,
  icon: 'africa',
  color: Color(0xFFFEEF35),
);

final asia = Continents(
  name: AppText.asia,
  icon: 'asia',
  color: const Color(0xFFFE8181),
  suro: asiaQuestions,
);

const australia = Continents(
  name: AppText.australia,
  icon: 'australia',
  color: Color(0xFF60F783),
);

final europe = Continents(
  name: AppText.europe,
  icon: 'europe',
  color: const Color(0xFF81A2FE),
  suro: europaQuestions,
);

const northAmerica = Continents(
  name: AppText.nothAmerica,
  icon: 'north_america',
  color: Color(0xFF60F783),
);

const southAmerica = Continents(
  name: AppText.southAmerica,
  icon: 'south_america',
  color: Color(0xFFE5AAE5),
);

List<Continents> continents = [
  europe,
  asia,
  northAmerica,
  southAmerica,
  africa,
  australia,
];
