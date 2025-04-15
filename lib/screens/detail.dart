import 'package:flutter/material.dart';
import 'package:flutter_sport/model/sport.dart';

class Detail extends StatelessWidget {
  const Detail({super.key, required this.sport});

  final Sport sport;

  @override
  Widget build(BuildContext context) {
    Future<void> date() async {
      final selectedDate = await showDatePicker(
        context: context,
        firstDate: DateTime.now(),
        lastDate: DateTime(2026),
      );
      if (selectedDate != null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Center(child: Text('Session réservée !')),
            duration: Duration(seconds: 2),
          ),
        );
      }
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
        title: Text("Réservation", style: TextStyle(color: Colors.white)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Center(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/${sport.name}.jpg',
                  width: 360,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              sport.description,
              style: TextStyle(color: Colors.white, fontSize: 17),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 100),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Veuillez sélectionner une date : ",
                  style: TextStyle(color: Colors.white, fontSize: 17),
                ),
                IconButton(
                  icon: Icon(Icons.edit_calendar),
                  color: Colors.white,
                  onPressed: () {
                    date();
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
