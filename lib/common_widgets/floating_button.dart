
import 'package:concept_loft_webpage/common_widgets/networks.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key key, this.width}) : super(key: key);
  final width;
  

  @override
  Widget build(BuildContext context) {
    final net = Networks();
    return Container(
      child: FractionallySizedBox(
        widthFactor: width > 800 ? 0.083 : 0.166,
        heightFactor: width > 800 ? 0.1458 : 0.316,
        child: FittedBox(
          fit: BoxFit.contain,
          child: FloatingActionButton(
            onPressed: () {
              net.launchWhatsapp();
            },
            child: Image.asset(
              "assets/img/whatsapp.png",
              width: 30,
              height: 30,
              color: Colors.white,
            ),
            backgroundColor: Color(0xFF46a2db),
          ),
        ),
      ),
    );
  }
}
