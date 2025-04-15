import 'package:flutter/material.dart';
import 'package:flutter_sport/model/sport.dart';
import 'package:flutter_sport/screens/detail.dart';
import 'package:flutter_sport/widgets/sport_card.dart';

class Activities extends StatelessWidget {
  const Activities({super.key, required this.type});

  final List<Sport> type;

  @override
  Widget build(BuildContext context) {
    void _selectedCategory(BuildContext context, Sport sport) {
      final filteredSport = sport.name;

      Navigator.of(
        context,
      ).push(MaterialPageRoute(builder: (ctx) => Detail(sport: sport)));
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
        title: Text("Activités", style: TextStyle(color: Colors.white)),
      ),
      body: ListView.builder(
        itemCount: type.length,
        itemBuilder:
            (ctx, index) => SportCard(
              sport: type[index],
              onSelectDetail: () {
                _selectedCategory(
                  context,
                  Sport(
                    name: type[index].name,
                    saisons: type[index].saisons,
                    isForChildren: type[index].isForChildren,
                    isForPregnantWomen: type[index].isForPregnantWomen,
                    isForbeginner: type[index].isForbeginner,
                    description: type[index].description,
                  ),
                );
              },
            ),
      ),
    );
  }
}
