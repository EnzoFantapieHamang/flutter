import 'package:flutter_sport/model/saison.dart';
import 'package:flutter_sport/model/sport.dart';

const lesSaisons = [
  Saison(name: 'Hiver'),
  Saison(name: 'Été')
];


const sports = [
  Sport(
    name: 'Escalade',
    saisons: ['Été'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
  ),
  Sport(
    name: 'Ski',
    saisons: ['Hiver'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
  ),
  Sport(
    name: 'Yoga',
    saisons: ['Été','Hiver'],
    isForChildren: true,
    isForPregnantWomen: true,
    isForbeginner: true,
  ),
  Sport(
    name: 'Skate',
    saisons: ['Été'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
  ),
  Sport(
    name: 'Surf',
    saisons:['Été'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: false,
  ),
];