import 'package:flutter/material.dart';
import 'package:flutter_sport/model/Saison.dart';

class Category extends StatelessWidget {
  const Category({super.key, required this.saison, required this.onSelect});

  final Saison saison;
  final void Function() onSelect;

  @override
  Widget build(BuildContext context) {


    var text = saison.name;

    String img;
    if(text == 'Été'){
      img = "assets/images/ski.jpg";
    } else {
      img = "assets/images/escalade.jpg";
    }

    return GestureDetector(
      onTap: onSelect,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.asset(
              img,
              width: 360,
              fit: BoxFit.cover,
            ),
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
    );
  }
}