import 'package:flutter/material.dart';

void main() {
  runApp(Pizza());
}

class Pizza extends StatelessWidget {
  Pizza({Key? key}) : super(key: key);

  final List<String> imageList = [
    "images/piza1.jpg",
    "images/piza2.jpg",
    "images/piza3.png"
  ];

  final List<String> textList = [
    "Vegetables_Pizza",
    "Chicken pizza",
    "Cheese pizza"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Menu Pizza'),
          centerTitle: true, // Set the title of the app bar
          backgroundColor: Color.fromARGB(
              255, 39, 4, 1), // Set the background color of the app bar
        ),
        backgroundColor: Color.fromARGB(
            255, 170, 151, 151), // Set the background color of the page
        // backgroundColor: Colors.red,
        body: SafeArea(
          child: ListView.builder(
            itemCount: 3,
            itemBuilder: (context, index) {
              return Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                margin: EdgeInsets.all(10.0),
                color: Color.fromARGB(255, 19, 6, 3),
                child: Row(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.0),
                      child: Image.asset(
                        imageList[index],
                        width: 100.0,
                        height: 100.0,
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Text(
                      textList[index],
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 30.0,
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
