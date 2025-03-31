import 'package:flutter_sport/model/saison.dart';

class Sport{
  const Sport({
    required this.name,
    required this.saisons,
    required this.isForChildren,
    required this.isForPregnantWomen,
    required this.isForbeginner
  });

  final String name;
  final List<String> saisons;
  final bool isForChildren;
  final bool isForPregnantWomen;
  final bool isForbeginner;
}