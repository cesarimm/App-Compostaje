import 'package:flutter/material.dart';
import 'package:learnig_app/bloc/bloc-prov.dart';
import 'package:learnig_app/screens/home/components/body.dart';
import 'package:learnig_app/bloc/example-bloc.dart';
import 'package:learnig_app/tools/appbar.dart';
import 'package:learnig_app/tools/menu.dart';


class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  ExampleBloc example2Bloc;

  @override
  void initState() {
    super.initState();

    example2Bloc = ExampleBloc();
  }

  @override
  void dispose() {
    example2Bloc.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      bloc: ExampleBloc(),
      child: Scaffold(
        appBar: appBarbuild(context),
        floatingActionButton: boomMenuBuild(context),
        body: Body(),
      ),
    );
  }
}
