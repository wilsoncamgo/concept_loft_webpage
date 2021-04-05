import 'package:auto_size_text/auto_size_text.dart';
import 'package:concept_loft_webpage/common_widgets/app_bar.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          AppBarConcept(),
          Align(
            alignment: Alignment(-1.1, 0.0),
            child: Row(
              children: [
                Container(
                  width: 700,
                  height: 363,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(13),
                    ),
                    color: Color(0xA1804000),
                  ),
                  padding: EdgeInsets.only(left: 200, right: 50),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AutoSizeText(
                        "Diseños Modernos\n Para Tiempos Modernos",
                        style: TextStyle(
                            fontWeight: FontWeight.w600, fontSize: 48),
                      ),
                      AutoSizeText(
                        "Obtén la sala que siempre deseaste al mejor precio del mercado, la quieres, la tienes.",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 21),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      InkWell(
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(12),
                            ),
                            color: Colors.white,
                          ),
                          width: 242,
                          height: 56,
                          child: Center(
                            child: AutoSizeText(
                              "Renueva tu Hogar",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 18,
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: Image.asset(
                    "img/living_room_example.png",
                    width: MediaQuery.of(context).size.width / 2,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
