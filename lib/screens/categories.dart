import 'package:flutter/material.dart';
import 'package:flutter_sport/data/data.dart';
import 'package:flutter_sport/model/Saison.dart';
import 'package:flutter_sport/screens/activities.dart';
import 'package:flutter_sport/widgets/category.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    void _selectedCategory(BuildContext context, Saison saison) {
      final typeDeSports =
          sports.where((sport) {
            return sport.saisons.contains(saison.name);
          }).toList();


      Navigator.of(context).push(
        MaterialPageRoute(builder: (ctx) => Activities(type: typeDeSports)),
      );
    }

    return Scaffold(
      backgroundColor: Color.fromARGB(255, 254, 102, 0),
      appBar: AppBar(
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
              onSelect: () {
                _selectedCategory(
                  context, Saison(
                    name: 'Été',
                  ),
                );
              },
              saison: Saison(name: 'Été'),
            ),
            SizedBox(height: 20),
            Category(
              onSelect: () {
                _selectedCategory(context, Saison(name: 'Hiver'));
              },
              saison: Saison(name: 'Hiver'),
            ),
          ],
        ),
      ),
    );
  }
}
