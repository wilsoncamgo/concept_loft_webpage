import 'package:concept_loft_webpage/common_widgets/app_bar_concept.dart';
import 'package:concept_loft_webpage/common_widgets/preset_button.dart';
import 'package:flutter/material.dart';

class BodyMainPage extends StatefulWidget {
  BodyMainPage({Key key}) : super(key: key);

  @override
  _BodyMainPageState createState() => _BodyMainPageState();
}

class _BodyMainPageState extends State<BodyMainPage> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SingleChildScrollView(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarConcept(),
              width > 800
                  ? SizedBox(
                      width: width * 0.5,
                      height: height * 0.4,
                      child: Image.asset(
                        'assets/img/pendant_light.png',
                        alignment: Alignment.center,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
          width>800?SizedBox():SizedBox(height: 50,),
          SizedBox(
            height: width>800?height * 0.6:height*0.4,
            width: width,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xFF804000).withAlpha(63),
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(10),
                        topRight: Radius.circular(10),
                      ),
                    ),
                    padding: EdgeInsets.symmetric(
                      vertical: height*0.05,
                      horizontal: width*0.05
                    ),
                    width: width * 0.6,
                    height: width>800?height*0.5:height * 0.3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Diseños Modernos",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "para Tiempos Modernos",
                          style: TextStyle(
                            fontSize: width * 0.04,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          "Obten la sala que siempre deseaste al mejor precio del mercado, la quieres, la tienes.",
                          style: TextStyle(
                            fontSize: width * 0.015,
                            fontWeight: FontWeight.w100,
                            color: Colors.black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        PresetButton(
                          textInside: "Renueva tu Hogar",
                          onPressed: () => {},
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: SizedBox(
                    width: width * 0.5,
                    height: height * 0.5,
                    child: Image.asset(
                      'assets/img/dinning_room.png',
                      alignment: Alignment.center,
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
