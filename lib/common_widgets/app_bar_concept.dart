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
          SizedBox(
            height: 20,
          ),
          SizedBox(
            width: width>700?width*0.5:width,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Expanded(
                  child: InkWell(
                    highlightColor: Colors.brown[400],
                    enableFeedback: true,
                    borderRadius: BorderRadius.circular(10),
                    focusColor: Colors.brown[400],
                    splashColor: Colors.brown[400],
                    onTap: () => Navigator.pushNamed(context, '/'),
                    child: Text(
                      'Inicio',
                      textAlign: TextAlign.center,
                      maxLines: 1,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    highlightColor: Colors.brown[400],
                    enableFeedback: true,
                    focusColor: Colors.brown[400],
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.brown[400],
                    onTap: () =>
                        Navigator.pushNamed(context, '/services'),
                    child: Text(
                      'Nuestros Productos',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    highlightColor: Colors.brown[400],
                    enableFeedback: true,
                    focusColor: Colors.brown[400],
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.brown[400],
                    onTap: () => network.launchBlog(),
                    child: Text(
                      'Catálogo',
                      textAlign: TextAlign.center,
                      maxLines: 2,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    highlightColor: Colors.brown[400],
                    enableFeedback: true,
                    focusColor: Colors.brown[400],
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.brown[400],
                    onTap: () =>
                        Navigator.pushNamed(context, '/contact'),
                    child: Text(
                      'Contactanos',
                      maxLines: 1,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w100,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: InkWell(
                    highlightColor: Colors.brown[400],
                    enableFeedback: true,
                    focusColor: Colors.brown[400],
                    borderRadius: BorderRadius.circular(10),
                    splashColor: Colors.brown[400],
                    onTap: () => Navigator.pushNamed(context, '/form'),
                    child: Text(
                      'Acerca de Nosotros',
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: width * 0.015,
                        fontWeight: FontWeight.w100,
                      ),
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
