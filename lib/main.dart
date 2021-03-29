import 'package:flutter/material.dart';
import 'package:flutter_game/game.dart';
import 'package:flutter_icons/flutter_icons.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key key,
  }) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Game game = Game();
  String description = 'Вход';
  String bottom_string = 'Начало Игры';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        _buildTopBar(context),
        _buildBodyContent(),
      ]),
    );
  }

  Stack _buildTopBar(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity, // MediaQuery.of(context).size.width
          height: 140,
          decoration: BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('assets/a_dot_ham.jpeg'),
            ),
          ),
        ),
      ],
    );
  }

  Expanded _buildBodyContent() {
    return Expanded(
      child: Column(
        children: [
          Expanded(
              child: Container(
                child: Text(description),
                padding: EdgeInsets.symmetric(vertical: 20),
                alignment: Alignment.topCenter,
              ),
              flex: 3),
          Expanded(
              child: IconButton(
                icon: Icon(
                  FlutterIcons.caret_up_faw,
                  size: 100,
                ),
                tooltip: 'Up',
                onPressed: () {
                  setState(() {
                    bottom_string = 'Up';
                    description = game.level();
                  });
                },
                alignment: Alignment.center,
              ),
              flex: 1),
          Expanded(
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 120),
                    child: IconButton(
                      icon: Icon(
                        FlutterIcons.caret_left_faw,
                        size: 100,
                      ),
                      tooltip: 'Left',
                      onPressed: () {
                        setState(() {
                          bottom_string = 'Left';
                        });
                      },
                    ),
                  ),
                  /* SizedBox(
                    width: 100,
                    height: 0,
                  ),*/
                  Padding(
                    padding: const EdgeInsets.only(right: 100),
                    child: IconButton(
                      icon: Icon(
                        FlutterIcons.caret_right_faw,
                        size: 100,
                      ),
                      tooltip: 'Right',
                      onPressed: () {
                        setState(() {
                          bottom_string = 'Right';
                        });
                      },
                    ),
                  ),
                ],
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
              ),
              flex: 1),
          Expanded(
              child: IconButton(
                icon: Icon(
                  FlutterIcons.caret_down_faw,
                  size: 100,
                ),
                tooltip: 'Down',
                onPressed: () {
                  setState(() {
                    bottom_string = 'down';
                  });
                },
              ),
              flex: 1),
          Expanded(
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  child: Text(bottom_string),
                  padding: EdgeInsets.symmetric(vertical: 20),
                  alignment: Alignment.bottomCenter,
                ),
              ),
              flex: 1),
        ],
      ),
    );
  }
}
