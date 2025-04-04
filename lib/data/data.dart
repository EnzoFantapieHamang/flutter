import 'package:flutter_sport/model/saison.dart';
import 'package:flutter_sport/model/sport.dart';

const lesSaisons = [
  Saison(name: 'Hiver'),
  Saison(name: 'Été')
];


const sports = [
  Sport(
    name: 'escalade',
    saisons: ['Été'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
    description: "Dans notre équipe, nous avons des grimpeurs professionnels diplômés du DE d'escalade qui organisent des sessions sur roche vers la frontière espagnole, à côté de Bielsa."
  ),
  Sport(
    name: 'ski',
    saisons: ['Hiver'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
    description: "Dans notre équipe, nous avons des moniteurs de ski et des champions de freeride qui organisent des sorties ski."
  ),
  Sport(
    name: 'yoga',
    saisons: ['Été','Hiver'],
    isForChildren: true,
    isForPregnantWomen: true,
    isForbeginner: true,
    description: "Dans notre équipe, nous avons des coachs de yoga qui proposent de temps en temps des cours."
  ),
  Sport(
    name: 'skate',
    saisons: ['Été'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: true,
    description: "Dans notre équipe, nous avons des skaters professionnels qui pourront vous apprendre et vous accompagner dans cette discipline."
  ),
  Sport(
    name: 'surf',
    saisons:['Été'],
    isForChildren: true,
    isForPregnantWomen: false,
    isForbeginner: false,
    description: "Dans notre équipe, nous avons des surfers professionnels qui organisent des sessions de surf vers la côte basque et les landes."
  ),
];