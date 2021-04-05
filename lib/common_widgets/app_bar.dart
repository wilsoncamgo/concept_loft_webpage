import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class AppBarConcept extends StatelessWidget {
  const AppBarConcept({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 30),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //Logo
          Image.asset(
            "img/concept_logo.png",
            width: 321,
            height: 62,
          ),
          SizedBox(
            height: 53,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(
                width: 30,
              ),
              InkWell(child: AutoSizeText("Inicio")),
              SizedBox(
                width: 30,
              ),
              InkWell(child: AutoSizeText("Nuestros Productos")),
              SizedBox(
                width: 30,
              ),
              InkWell(child: AutoSizeText("Catalogo")),
              SizedBox(
                width: 30,
              ),
              InkWell(child: AutoSizeText("Acerca de Nosotros")),
              SizedBox(
                width: 30,
              ),
            ],
          )
        ],
      ),
    );
  }
}
