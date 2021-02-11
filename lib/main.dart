import 'package:flutter/material.dart';
void main (){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

      return MaterialApp(
        home: MyHomepage(),
      );
    }
  }
  class MyHomepage extends StatefulWidget {
  @override
  _MyHomepageState createState() => _MyHomepageState();
  }
class _MyHomepageState extends State<MyHomepage> {
  int number = 0; // Create state variable
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Count Number',),
      ),
      body: Center(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.center ,
      children: [Text('Press Button to Increase Number', style: TextStyle( fontSize: 20), ),
        Text(number.toString(),style: TextStyle(fontSize: 40),)],
      ),
      ),
    floatingActionButton: FloatingActionButton(
      onPressed: addNumber,
          child: Icon(Icons.add)),
    );
  }
  void addNumber() {
    setState(() {
      number++;
    });
  }
}