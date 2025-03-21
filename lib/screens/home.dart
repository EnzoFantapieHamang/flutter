import 'package:flutter/material.dart';
import 'package:flutter_f/screens/menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 219, 130, 26),
        leading: Builder(
          builder: (context) => IconButton(
            icon: Icon(Icons.menu, color: Colors.white),
            onPressed: () {
              Scaffold.of(context).openDrawer();
            },
          ),
        ),
        title: Text("ADVENTURIS", style: TextStyle(color: Colors.white)),
      ),
      drawer: Menu(),
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset("assets/images/surf.png", fit: BoxFit.cover),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                "ADVENTURIS est une association créée entre amis qui permet de faire du sport extrême. Vous pouvez choisir l’activité que vous désirez et réserver pour un créneau ! Have a good trip !!",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 16, color: Colors.white),
                softWrap: true,
                overflow: TextOverflow.visible,
              ),
            ),
          ),
        ],
      ),
    );
  }
}