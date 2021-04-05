
import 'package:concept_loft_webpage/common_widgets/app_bar_concept.dart';
import 'package:concept_loft_webpage/common_widgets/floating_button.dart';
import 'package:concept_loft_webpage/screens/home/body_main_page.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: FloatingButton(),
      body: BodyMainPage()
    );
  }
}
