import 'package:flutter/material.dart';
import 'package:staggered_grid/pages/home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Staggered Grid',
        theme: ThemeData.dark(),
        home: MyHomePage(),
      );
}
