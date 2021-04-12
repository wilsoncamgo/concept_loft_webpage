import 'package:concept_loft_webpage/common_widgets/app_bar_concept.dart';
import 'package:concept_loft_webpage/common_widgets/preset_button.dart';
import 'package:concept_loft_webpage/screens/contact_us/sample_contact_us.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarConcept(
                mainPage: true,
              ),
              width > 700
                  ? SizedBox(
                      width: width * 0.5,
                      height: height * 0.3,
                      child: Image.asset(
                        'assets/img/pendant_light.png',
                        alignment: Alignment.center,
                      ),
                    )
                  : SizedBox(),
            ],
          ),
          width > 700
              ? SizedBox(
                  height: 20,
                )
              : SizedBox(),
          SizedBox(
            height: width > 700 ? height * 0.6 : height * 0.4,
            width: width,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                        maxHeight: width * 0.6, maxWidth: width * 0.6),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF804000).withAlpha(63),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                      padding: EdgeInsets.symmetric(
                          vertical: height * 0.05, horizontal: width * 0.05),
                      //width: width * 0.6,
                      //height: width > 700 ? height * 0.55 : height * 0.30,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Text(
                                "Diseños Modernos",
                                style: GoogleFonts.raleway(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                              Text(
                                "para Tiempos Modernos",
                                style: GoogleFonts.raleway(
                                  fontSize: width * 0.04,
                                  fontWeight: FontWeight.w300,
                                  color: Colors.black,
                                ),
                                textAlign: TextAlign.center,
                              ),
                            ],
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
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            "Conoce más de nuestra colección 2021-22",
            style: GoogleFonts.zillaSlabHighlight(
              fontSize: width * 0.04,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            "Reinventando el espacio interior de tu hogar",
            style: TextStyle(
              fontSize: width * 0.03,
              fontWeight: FontWeight.w100,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: width * 0.3,
                child: Image.asset(
                  'assets/img/chair.png',
                  alignment: Alignment.center,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF804000).withAlpha(63),
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.05, horizontal: width * 0.05),
                child: Text(
                  "Diseños con las últimas tendencias",
                  style: TextStyle(
                    fontSize: width * 0.02,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF804000).withAlpha(63),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                padding: EdgeInsets.symmetric(
                    vertical: height * 0.05, horizontal: width * 0.05),
                child: Text(
                  "Diseño, Elegancia, Practicidad",
                  style: TextStyle(
                    fontSize: width * 0.02,
                    fontWeight: FontWeight.w100,
                    color: Colors.black,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                width: width * 0.5,
                child: Image.asset(
                  'assets/img/couch.png',
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                flex: 2,
                child: SizedBox(
                  width: width * 0.65,
                  child: Image.asset(
                    'assets/img/dinning_room_2.png',
                    alignment: Alignment.center,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    color: Color(0xFF804000).withAlpha(63),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      topLeft: Radius.circular(20),
                    ),
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: height * 0.05, horizontal: width * 0.05),
                  child: Text(
                    "Rediseña tus espacios",
                    style: TextStyle(
                      fontSize: width * 0.02,
                      fontWeight: FontWeight.w100,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ],
          ),
          SampleContactUs(),
        ],
      ),
    );
  }
}
