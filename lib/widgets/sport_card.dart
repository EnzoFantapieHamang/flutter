import 'package:flutter/material.dart';
import 'package:flutter_sport/model/sport.dart';

class SportCard extends StatelessWidget {
  const SportCard({super.key, required this.sport});

  final Sport sport;

  @override
  Widget build(BuildContext context) {
    var text = sport.name;

    String img;
    if (text == 'Escalade') {
      img = "assets/images/escalade.jpg";
    } else if (text == 'Ski') {
      img = "assets/images/ski.jpg";
    } else if (text == 'Surf') {
      img = "assets/images/surf.jpg";
    } else if (text == 'Yoga') {
      img = "assets/images/yoga.jpg";
    } else {
      img = "assets/images/skate.jpg";
    }

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(img, width: 360, fit: BoxFit.cover),
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 221, 221, 221),
              ),
            ),
          ],
        ),
        SizedBox(height: 20,),
      ],
    );
  }
}
