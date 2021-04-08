import 'package:concept_loft_webpage/common_widgets/app_bar_concept.dart';
import 'package:concept_loft_webpage/common_widgets/floating_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AboutFurniture extends StatefulWidget {
  AboutFurniture({Key key}) : super(key: key);

  @override
  _AboutFurnitureState createState() => _AboutFurnitureState();
}

class _AboutFurnitureState extends State<AboutFurniture> {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      floatingActionButton: FloatingButton(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AppBarConcept(
              mainPage: false,
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              "Hacemos más que muebles",
              style: GoogleFonts.raleway(
                fontSize: width * 0.04,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Fabricamos sueños y materializamos tus ideas",
              style: GoogleFonts.raleway(
                fontSize: width * 0.04,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),
            ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: width > 700 ? height * 0.5 : height,
                maxWidth: width,
              ),
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: width * 0.1,
                ),
                child: Flex(
                  direction: width > 700 ? Axis.horizontal : Axis.vertical,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Expanded(
                      child: Flex(
                        direction:
                            width > 700 ? Axis.vertical : Axis.horizontal,
                        children: [
                          Expanded(
                            child: Image.asset('assets/img/eco.png'),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  "Cuidamos el medio ambiente",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width > 700
                                        ? width * 0.02
                                        : width * 0.03,
                                  ),
                                ),
                                Text(
                                  "Muebles fabricados con procesos amigables con el medio ambiente",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: width > 700
                                        ? width * 0.01
                                        : width * 0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                      height: height * 0.1,
                    ),
                    Expanded(
                      child: Flex(
                        direction:
                            width > 700 ? Axis.vertical : Axis.horizontal,
                        children: [
                          Expanded(
                            child: Image.asset('assets/img/medal.png'),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  "Lo mejor en maderas canadienses",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width > 700
                                        ? width * 0.02
                                        : width * 0.03,
                                  ),
                                ),
                                Text(
                                  "Toda nuestra materia prima, es de la mejor calidad del mercado",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: width > 700
                                        ? width * 0.01
                                        : width * 0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                      height: height * 0.1,
                    ),
                    Expanded(
                      child: Flex(
                        direction:
                            width > 700 ? Axis.vertical : Axis.horizontal,
                        children: [
                          Expanded(
                            child: Image.asset('assets/img/sketch.png'),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  "Las medidas más precisas del mercado",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width > 700
                                        ? width * 0.02
                                        : width * 0.03,
                                  ),
                                ),
                                Text(
                                  "Hacemos muebles a tu medida",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: width > 700
                                        ? width * 0.01
                                        : width * 0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                      height: height * 0.1,
                    ),
                    Expanded(
                      child: Flex(
                        direction:
                            width > 700 ? Axis.vertical : Axis.horizontal,
                        children: [
                          Expanded(
                            child: Image.asset('assets/img/clock.png'),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  "Tiempos de entrega rápidos",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width > 700
                                        ? width * 0.02
                                        : width * 0.03,
                                  ),
                                ),
                                Text(
                                  "El 90% de nuestros muebles está listo en menos de dos semanas",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: width > 700
                                        ? width * 0.01
                                        : width * 0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: width * 0.03,
                      height: height * 0.1,
                    ),
                    Expanded(
                      child: Flex(
                        direction:
                            width > 700 ? Axis.vertical : Axis.horizontal,
                        children: [
                          Expanded(
                            child: Image.asset('assets/img/diamond.png'),
                          ),
                          Expanded(
                            flex: 2,
                            child: Column(
                              children: [
                                Text(
                                  "La más alta calidad y el mejor diseño",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: width > 700
                                        ? width * 0.02
                                        : width * 0.03,
                                  ),
                                ),
                                Text(
                                  "Diseños exclusivos de lujo para tu hogar",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontWeight: FontWeight.w100,
                                    fontSize: width > 700
                                        ? width * 0.01
                                        : width * 0.02,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "Lo crees, lo creas",
              style: GoogleFonts.raleway(
                fontSize: width * 0.04,
                fontWeight: FontWeight.w300,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              "Obtén la sala de tus sueños",
              style: GoogleFonts.raleway(
                fontSize: width * 0.03,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              "Contamos con diferentes formas de financiación",
              style: GoogleFonts.raleway(
                fontSize: width * 0.03,
                fontWeight: FontWeight.w200,
                color: Colors.black,
              ),
              textAlign: TextAlign.center,
            ),
            Row(
              children: [
                Expanded(
                  child: Image.asset('assets/img/couch.png'),
                ),
                Expanded(
                  child: Image.asset('assets/img/chair.png'),
                ),
                Expanded(
                  child: Image.asset('assets/img/dinning_room_2.png'),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
