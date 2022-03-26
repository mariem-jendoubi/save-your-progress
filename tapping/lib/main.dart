import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'Hover.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:MyHomePage(title: 'tapping'),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
          children:[
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/1.jpg"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Center(
                child:AnimatedTextKit(
                  animatedTexts: [
                    TypewriterAnimatedText(
                               'SYP:SAVE YOUR PROGRESS\n'
                               'is a game that challenge one player to stop the spread of coronavirus\n'
                               'and so the player must understand group immunity and the need to vaccinate.\n'
                               'The game begins with people being infected with coronavirus, and the illness spreads.\n'
                               'Player try to contain the disease and save lives.\n'
                               'There are vulnerable people among the population noted in yellow\n'
                               'and these people(pregnant women, young babies, and those in frail health) cannot be vaccinated.\n',
                      textStyle: const TextStyle(
                        fontSize: 35.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      speed: const Duration(milliseconds: 100),
                    ),
                  ],

                  totalRepeatCount: 1,
                )
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: OnHover(builder: (isHovered) {
                return Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: const AssetImage('assets/next.png'),
                        fit: BoxFit.fill,
                      ),
                    ),
                  );
              }),
            ),

          ]
      ),
    );
  }
}
