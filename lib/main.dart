import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: MyWidget(),
    ),
  );
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(bottom: 28),
            child: Container(
              width: double.infinity,
              height: 150,
              color: Color.fromRGBO(55, 55, 55, 0.2),
              padding: EdgeInsets.all(15),
              child: Text(
                  'Any container with bottom padding with half size of the FAB'),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 10,
            child: FloatingActionButton(
              child: Icon(
                Icons.play_arrow,
                size: 40,
              ),
              onPressed: () => print('Button pressed!'),
            ),
          ),
        ],
      ),
    );
  }
}