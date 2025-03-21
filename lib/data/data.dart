import 'package:flutter_f/model/saison.dart';
import 'package:flutter_f/model/sport.dart';

const lesSaisons = [
  Saison(name: 'Hiver'),
  Saison(name: 'Été')
];


const sports = [
  Sport(
    name: 'Escalade',
    saisons: [
      Saison(name: 'Été'),
      ],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
  ),
  Sport(
    name: 'Ski',
    saisons: [
      Saison(name: 'Hiver'),
      ],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
  ),
  Sport(
    name: 'Wingsuit',
    saisons: [
      Saison(name: 'Été'),
      Saison(name: 'Hiver'),
      ],
    isForChildren: false,
    isForPregnantWomen: false,
    isForbeginner: false,
  ),
  Sport(
    name: 'Yoga',
    saisons: [
      Saison(name: 'Été'),
      Saison(name: 'Été'),
      ],
    isForChildren: true,
    isForPregnantWomen: true,
    isForbeginner: true,
  ),
  Sport(
    name: 'Skate',
    saisons: [
      Saison(name: 'Été'),
      ],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
  ),
  Sport(
    name: 'DH',
    saisons: [
      Saison(name: 'Été'),
      ],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: false,
  ),
];