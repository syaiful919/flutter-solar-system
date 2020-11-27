import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:solarsystem/common/styles.dart';
import 'package:solarsystem/data/model/planet_model.dart';

class DetailScreen extends StatefulWidget {
  final PlanetModel planet;

  const DetailScreen({Key key, this.planet}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  double appbarOpacity;
  ScrollController mainScroll = ScrollController();

  @override
  void initState() {
    super.initState();
    appbarOpacity = 0.0;
    mainScroll.addListener(() {
      changeAppbarOpacity(mainScroll.offset);
    });
  }

  void changeAppbarOpacity(double offset) {
    double limit = MediaQuery.of(context).size.width / 2;
    if (offset >= 0 && offset <= limit) {
      setState(() {
        appbarOpacity = offset / limit;
      });
    } else if (offset > limit) {
      if (appbarOpacity != 1) {
        setState(() {
          appbarOpacity = 1;
        });
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: ProjectColor.black1,
        body: Stack(
          children: <Widget>[
            ListView(
              controller: mainScroll,
              padding: EdgeInsets.zero,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      8, AppBar().preferredSize.height, 8, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Hero(
                          tag: widget.planet.name,
                          child: Image.asset(widget.planet.thumbnail)),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          widget.planet.name,
                          style: TextStyle(
                            color: ProjectColor.white1,
                            fontSize: 32,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                    decoration: BoxDecoration(
                        color: ProjectColor.black2,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(32),
                          topRight: Radius.circular(32),
                        )),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 16),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: DetailItem(
                                  property: "Diameter",
                                  value: widget.planet.diameter.toString(),
                                  unit: "KM",
                                  iconPath: "assets/icons/radius.svg",
                                ),
                              ),
                              Expanded(
                                child: DetailItem(
                                  property: "Jarak ke matahari",
                                  value: widget.planet.distance.toString(),
                                  unit: "juta KM",
                                  iconPath: "assets/icons/distance.svg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, bottom: 16),
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: DetailItem(
                                  property: "Rotasi",
                                  value: widget.planet.rotation.toString(),
                                  unit: "jam",
                                  iconPath: "assets/icons/rotation.svg",
                                ),
                              ),
                              Expanded(
                                child: DetailItem(
                                  property: "Revolusi",
                                  value: widget.planet.revolution.toString(),
                                  unit: widget.planet.revolutionUnit,
                                  iconPath: "assets/icons/revolution.svg",
                                ),
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: ProjectColor.grey1,
                        ),
                        SizedBox(height: 16),
                        Text(
                          widget.planet.description,
                          style: TextStyle(
                            color: ProjectColor.grey1,
                            fontSize: 16,
                          ),
                        )
                      ],
                    )),
              ],
            ),
            Align(
              alignment: Alignment.topCenter,
              child: SizedBox(
                height: AppBar().preferredSize.height,
                child: AppBar(
                  title: Text(
                    widget.planet.name,
                    style: TextStyle(
                        color: ProjectColor.white1.withOpacity(appbarOpacity)),
                  ),
                  backgroundColor:
                      ProjectColor.black1.withOpacity(appbarOpacity),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DetailItem extends StatelessWidget {
  final String property;
  final String value;
  final String unit;
  final String iconPath;

  const DetailItem({
    Key key,
    this.property,
    this.value,
    this.unit,
    this.iconPath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        SvgPicture.asset(
          iconPath,
          height: 30,
          width: 30,
          color: ProjectColor.white1.withOpacity(0.8),
        ),
        SizedBox(width: 16),
        Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              property,
              style: TextStyle(color: ProjectColor.grey1, fontSize: 12),
            ),
            Text("$value $unit",
                style: TextStyle(color: ProjectColor.white1, fontSize: 20))
          ],
        ),
      ],
    );
  }
}
