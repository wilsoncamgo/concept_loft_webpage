import 'package:concept_loft_webpage/common_widgets/app_bar_concept.dart';
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
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
             AppBarConcept(),
             width > 800
                  ? SizedBox(
                      width: width * 0.5,
                      height: height * 0.5,
                      child: Image.asset(
                        'assets/img/pendant_light.png',
                        alignment: Alignment.center,
                      ),
                    )
                  : SizedBox(
                    ),
          ],
        ),
       
      ],
    );
  }
}