import 'package:flutter/material.dart';
import 'package:solarsystem/common/styles.dart';
import 'package:solarsystem/data/model/planet_model.dart';

import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ProjectColor.black1,
        body: Container(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(8, 16, 8, 24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Mengenal Planet",
                      style: TextStyle(
                        color: ProjectColor.white1,
                        fontSize: 32,
                      ),
                    ),
                    Text(
                      "di Tata Surya",
                      style: TextStyle(
                        color: ProjectColor.white1,
                        fontSize: 20,
                      ),
                    ),
                  ],
                ),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: planets.length,
                itemBuilder: (context, index) {
                  return PlanetListItem(
                    planet: planets[index],
                    onTap: (val) => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailScreen(
                          planet: planets[index],
                        );
                      }),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class PlanetListItem extends StatelessWidget {
  final PlanetModel planet;
  final Function(PlanetModel) onTap;

  const PlanetListItem({
    Key key,
    @required this.planet,
    @required this.onTap,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(planet),
      child: Container(
        margin: EdgeInsets.all(8),
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: ProjectColor.black2,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Hero(
              tag: planet.name,
              child: Image.asset(
                planet.thumbnail,
                width: 120,
              ),
            ),
            SizedBox(width: 8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    planet.name,
                    style: TextStyle(
                      color: ProjectColor.white1,
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 8),
                  Text(
                    planet.shortDescription,
                    style: TextStyle(
                      color: ProjectColor.grey1,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
