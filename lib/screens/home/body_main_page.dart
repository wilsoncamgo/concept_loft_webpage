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
    return Column(
      children: [
        AppBarConcept(),
      ],
    );
  }
}