import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 219, 130, 26),
          leading: Icon(Icons.menu),
          title: Text("ADVENTURIS"),
        ),
        body: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                "assets/images/surf.png",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 16.0), 
                child: Text(
                  "ADVENTURIS est une association créée entre amis qui permet de faire du sport extrême. Vous pouvez choisir l’activité que vous désirez et réserver pour un créneau ! Have a good trip !!",
                  style: TextStyle(fontSize: 16),
                  softWrap: true,  
                  overflow: TextOverflow.visible,  
                ),
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
