import 'package:concept_loft_webpage/common_widgets/concept_logo.dart';
import 'package:concept_loft_webpage/common_widgets/networks.dart';
import 'package:flutter/material.dart';

class AppBarConcept extends StatelessWidget {
  const AppBarConcept({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final network = Networks();
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ConceptLogo(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Inicio",
                style: TextStyle(
                  fontSize: width * 0.02,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
              Text(
                "Nuestros Productos",
                style: TextStyle(
                  fontSize: width * 0.02,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
              Text(
                "Catálogo",
                style: TextStyle(
                  fontSize: width * 0.02,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
              Text(
                "Acerca de Nosotros",
                style: TextStyle(
                  fontSize: width * 0.02,
                  fontWeight: FontWeight.w100,
                  color: Colors.black,
                ),
              ),
              
            ],
          )
        ],
      ),
    );
  }
}
