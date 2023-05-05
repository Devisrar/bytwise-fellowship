import 'dart:math';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Likescreen.dart';

class AnimatedContainerExample extends StatefulWidget {
  const AnimatedContainerExample({super.key});

  @override
  _AnimatedContainerExampleState createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  final _rng = Random();
  double _height = 100;
  double _width = 100;
  double _borderRadius = 8;
  Color _color = Colors.blue;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff34495E),
      appBar: AppBar(
        title: Center(child: const Text('Animations ')),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Center(
              child: Text('Hi,Its Animated Container Designed \n by my Muhammad israr',
                  style: GoogleFonts.aBeeZee(
                      fontSize: 20,
                      color: Colors.white,
                      fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 30,),
            AnimatedContainer(
              margin: const EdgeInsets.all(8),
              // Use the properties stored in the State class.
              width: this._width,
              height: this._height,
              decoration: BoxDecoration(
                color: this._color,
                borderRadius: BorderRadius.circular(this._borderRadius),
              ),
              duration: const Duration(seconds: 1),
              curve: Curves.fastOutSlowIn,
              child: const FlutterLogo(),
            ),
            ElevatedButton.icon(
              icon: const Icon(Icons.update),
              label: const Text('Press and see the Magic'),
              onPressed: () => setState(
                    () {
                  // Generate a random width and height.
                  _width = _rng.nextInt(100).toDouble() + 50;
                  _height = _rng.nextInt(100).toDouble() + 50;
                  _borderRadius = _rng.nextInt(50).toDouble();
                  // Generate a random color.
                  _color = Color.fromRGBO(
                    _rng.nextInt(256),
                    _rng.nextInt(256),
                    _rng.nextInt(256),
                    1,
                  );
                },
              ),
            ),
            SizedBox(height: 10,),
            InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LikeButtonExample()));
              },
              child: Container(

                child: Center(

                    child: Text(
                      'Rate us by giving like',
                      style: TextStyle(color: Colors.white),
                    )),
                height: 40,
                width: 150,
                decoration: BoxDecoration(
                  color: Color(0xff05668d),
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}