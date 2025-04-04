import 'package:flutter/material.dart';
import 'package:flutter_sport/model/sport.dart';


class SportCard extends StatelessWidget {
  const SportCard({super.key, required this.sport, required this.onSelectDetail});

  final Sport sport;
  final void Function() onSelectDetail;

  @override
  Widget build(BuildContext context) {
    var text = sport.name;

    String img;
    if (text == 'escalade') {
      img = "assets/images/escalade.jpg";
    } else if (text == 'ski') {
      img = "assets/images/ski.jpg";
    } else if (text == 'surf') {
      img = "assets/images/surf.jpg";
    } else if (text == 'yoga') {
      img = "assets/images/yoga.jpg";
    } else {
      img = "assets/images/skate.jpg";
    }

    return GestureDetector(
      onTap: onSelectDetail,
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(img, width: 360, height: 250, fit: BoxFit.cover),
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
      ),
    );
  }
}
