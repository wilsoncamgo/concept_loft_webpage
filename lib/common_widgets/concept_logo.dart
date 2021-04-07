import 'package:flutter/material.dart';

class ConceptLogo extends StatelessWidget {
  const ConceptLogo({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 11,
      width: width / 4,
      child: InkWell(
        onTap: () => Navigator.pushNamed(context, '/'),
        child: Image.asset(
          'assets/img/logo.png',
          alignment: Alignment.centerLeft,
        ),
      ),
    );
  }
}
