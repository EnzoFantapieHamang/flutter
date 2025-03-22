import 'package:flutter/material.dart';
import 'package:flutter_f/screens/categories.dart';
import 'package:flutter_f/screens/filters.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(255, 64, 22, 1),
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: Color.fromARGB(255, 243, 122, 30)),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.surfing, size: 34, color: Colors.white),
                  SizedBox(height: 5),
                  Text(
                    'Adventures Trip',
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            leading: Icon(Icons.home),
            title: Text('Accueil'),
            onTap: () {
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            leading: Icon(Icons.category),
            title: Text('Catégories'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Categories()
                ),
              );
            },
          ),
          ListTile(
            textColor: Colors.white,
            iconColor: Colors.white,
            leading: Icon(Icons.settings),
            title: Text('Filtres'),
            onTap: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Filters()
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
