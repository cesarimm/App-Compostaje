import 'package:flutter/material.dart';
import 'package:learnig_app/bloc/bloc-prov.dart';
import 'package:learnig_app/screens/welcome/components/body.dart';
import 'package:learnig_app/bloc/example-bloc.dart';
import 'package:learnig_app/tools/appbar.dart';


class WelcomeScreen extends StatefulWidget {
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  ExampleBloc exampleBloc;

  @override
  void initState() {
    super.initState();

    exampleBloc = ExampleBloc();
  }

  @override
  void dispose() {
    exampleBloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: exampleBloc,
      child: Scaffold(
        appBar:  appBarbuild(context),
        body: Body(),
      ),
    );
  }
}




