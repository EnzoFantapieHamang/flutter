import 'package:flutter/material.dart';
import 'package:flutter_sport/model/Saison.dart';
import 'package:flutter_sport/widgets/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 102, 0),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 254, 102, 0),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Catégories", style: TextStyle(color: Colors.white)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Category(
              saison: Saison(
                name: 'Été',
                ),
              ),
            SizedBox(height: 20),
            Category(
              saison: Saison(
                name: 'Hiver',
                ),
              ),
          ],
        ),
      ),
    );
  }
}
