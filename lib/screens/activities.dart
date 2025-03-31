import 'package:flutter/material.dart';
import 'package:flutter_sport/model/sport.dart';
import 'package:flutter_sport/widgets/sport_card.dart';

class Activities extends StatelessWidget {
  const Activities({super.key, required this.type});

  final List<Sport> type;

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
        title: Text("Activités", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: type.length,
        itemBuilder: (ctx, index) => SportCard(sport: type[index]),
      ),
    );
  }
}
