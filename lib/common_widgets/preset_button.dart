import 'package:flutter/material.dart';

class PresetButton extends StatelessWidget {
  final String textInside;
  final Function onPressed;
  final bool alternateColor;
  PresetButton(
      {Key key,
      @required this.textInside,
      @required this.onPressed,
      alternateColor})
      : alternateColor = alternateColor ?? false,
        super(key: key);
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: this.alternateColor ? Color(0xff46a2db) : Colors.white,
      ),
      width: width*0.3,
      height: width>800?height * 0.08:height*0.06,
      alignment: Alignment.center,
      child: InkWell(
        onTap:  this.onPressed,
        child: Text(
          this.textInside,
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.w200,
            fontSize: width*0.02,
          ),
        ),
      ),
    );
  }
}
