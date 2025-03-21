import 'package:flutter/material.dart';

class Filters extends StatefulWidget {
  const Filters({super.key});

  @override
  State<Filters> createState() {
    return _FiltersState();
  }
}

class _FiltersState extends State<Filters> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 64, 22, 1),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 64, 22, 1),
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        title: Text("Vos Filtres", style: TextStyle(color: Colors.white)),
      ),
      body: Column(
        children: [
          ListTile(
            title: Text("Enfant", style: TextStyle(color: Colors.white)),
            trailing: Checkbox(value: false, onChanged: (b) {}),
          ),
          ListTile(
            title: Text(
              "Femme enceinte",
              style: TextStyle(color: Colors.white),
            ),
            trailing: Checkbox(value: false, onChanged: (b) {}),
          ),
          ListTile(
            title: Text("Débutant", style: TextStyle(color: Colors.white)),
            trailing: Checkbox(value: false, onChanged: (b) {}),
          ),
        ],
      ),
    );
  }
}
