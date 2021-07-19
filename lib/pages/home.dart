import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Staggered Grid"),
        ),
        body: Center(
          child: StaggeredGridView.countBuilder(
            crossAxisCount: 4,
            itemCount: 50,
            itemBuilder: (BuildContext context, int index) => Container(
                color: Colors.deepPurple[800],
                child: Center(
                  child: CircleAvatar(
                    radius: 30.0,
                    backgroundImage: NetworkImage(
                        'https://rickandmortyapi.com/api/character/avatar/${index + 1}.jpeg'),
                    backgroundColor: Colors.transparent,
                  ),
                )),
            staggeredTileBuilder: (int index) => StaggeredTile.count(2, index.isEven ? 2 : 1),
            //staggeredTileBuilder: (int index) => StaggeredTile.count(2, 2),
            mainAxisSpacing: 4.0,
            crossAxisSpacing: 4.0,
          ),
        ),
      );
}
