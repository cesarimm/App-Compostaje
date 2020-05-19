import 'package:flutter/widgets.dart';
import 'package:learnig_app/screens/Informatives/informative1/informativescreen.dart';
import 'package:learnig_app/screens/Informatives/mesuresGuide/mesuresscreen.dart';
import 'package:learnig_app/screens/detail/detailscreen.dart';
import 'package:learnig_app/screens/forms/view1/view.dart';
import 'package:learnig_app/screens/forms/view2/view.dart';
import 'package:learnig_app/screens/forms/view3/view.dart';
import 'package:learnig_app/screens/forms/view4/view.dart';
import 'package:learnig_app/screens/forms/view5/view.dart';
import 'package:learnig_app/screens/home/homescreen.dart';
import 'package:learnig_app/screens/welcome/welcomescreen.dart';


final Map<String, WidgetBuilder> routes = <String, WidgetBuilder>{
  "/Home": (BuildContext context) => HomeScreen(),
  "/Welcome": (BuildContext context) => WelcomeScreen(),
  "/Informative": (BuildContext context) => ExScreen2(),
  "/CompostDetail": (BuildContext context) => DetailScreen(),
  "/NewCompost": (BuildContext context) => ViewForm1(),
  "/NewCompost2": (BuildContext context) => ViewForm2(),
  "/NewCompost3": (BuildContext context) => ViewForm3(),
  "/NewCompost4": (BuildContext context) => ViewForm4(),
  "/NewCompost5": (BuildContext context) => ViewForm5(),
  "/MeasuresGuide": (BuildContext context) => MeasuresScreen(),
};
