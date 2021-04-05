import 'package:concept_loft_webpage/common_widgets/networks.dart';
import 'package:flutter/material.dart';

class FloatingButton extends StatelessWidget {
  const FloatingButton({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final net = Networks();
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFF804000),
                ),
                height: height * 0.1,
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    "assets/img/instagram.png",
                    width: width * 0.2,
                    height: height * 0.1,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                  color: Color(0xFF804000),
                ),
                height: height * 0.1,
                padding: EdgeInsets.symmetric(
                  vertical: 10,
                ),
                child: FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    "assets/img/facebook.png",
                    width: width * 0.2,
                    height: height * 0.1,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(10),
                topLeft: Radius.circular(10),
              ),
              color: Color(0xFF804000),
            ),
            height: height * 0.1,
            padding: EdgeInsets.symmetric(
              vertical: 10,
            ),
            child: Row(
              children: [
                FittedBox(
                  fit: BoxFit.contain,
                  child: Image.asset(
                    "assets/img/whatsapp.png",
                    width: width * 0.1,
                    height: height * 0.1,
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Contáctanos",
                  style: TextStyle(
                    fontSize: width * 0.025,
                    color: Colors.white,
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
