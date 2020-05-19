import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

Widget buildDialog(BuildContext context) {
  final dialogContent = new Stack(
    children: <Widget>[
      Container(
        padding: EdgeInsets.only(
          top: Consts.avatarRadius + Consts.padding,
          bottom: Consts.padding,
          left: Consts.padding,
          right: Consts.padding,
        ),
        margin: EdgeInsets.only(top: Consts.avatarRadius),
        decoration: new BoxDecoration(
          color: Colors.white,
          shape: BoxShape.rectangle,
          borderRadius: BorderRadius.circular(Consts.padding),
          boxShadow: [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10.0,
              offset: const Offset(0.0, 10.0),
            ),
          ],
        ),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min, // To make the card compact
            children: <Widget>[
              Text(
                "title",
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w700,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                "We are using a Container and BoxDecoration for making the card and since the half of circular avatar should be on the card, we add padding and margin accordingly with the attribute Consts.avatarRadius We are using a Container and BoxDecoration for making the card and since the half of circular avatar should be on the card, we add padding and margin accordingly with the attribute Consts.avatarRadiusWe are using a Container and BoxDecoration for making the card and since the half of circular avatar should be on the card, we add padding and margin accordingly with the attribute Consts.avatarRadiusWe are using a Container and BoxDecoration for making the card and since the half of circular avatar should be on the card, we add padding and margin accordingly with the attribute Consts.avatarRadiusWe are using a Container and BoxDecoration for making the card and since the half of circular avatar should be on the card, we add padding and margin accordingly with the attribute Consts.avatarRadius",
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(height: 24.0),
              Align(
                alignment: Alignment.bottomRight,
                child: FlatButton(
                  onPressed: () {
                    Navigator.of(context).pop(); // To close the dialog
                  },
                  child: Text("buttonText"),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        left: Consts.padding,
        right: Consts.padding,
        child: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          radius: Consts.avatarRadius,
        ),
      ),
    ],
  );

  return Dialog(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(Consts.padding),
    ),
    elevation: 0.0,
    backgroundColor: Colors.transparent,
    child: dialogContent,
  );
}

class Consts {
  Consts._();

  static const double padding = 16.0;
  static const double avatarRadius = 66.0;
}
