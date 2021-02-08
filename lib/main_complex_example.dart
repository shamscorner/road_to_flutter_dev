import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: Scaffold(
          appBar: AppBar(
            title: Text('Stateful widget demo'),
          ),
          body: Counter(),
        ));
  }
}

class CounterDisplay extends StatelessWidget {
  final int count;

  CounterDisplay({this.count});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0),
      child: Text('Count: $count'),
    );
  }
}

class CounterIncrement extends StatelessWidget {
  final VoidCallback onPressed;

  CounterIncrement({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      child: Icon(Icons.add),
      onPressed: onPressed,
    );
  }
}

class Counter extends StatefulWidget {
  @override
  _CounterState createState() => _CounterState();
}

class _CounterState extends State<Counter> {
  int _counter = 0;

  void _increment() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CounterDisplay(
            count: _counter,
          ),
          CounterIncrement(
            onPressed: _increment,
          )
        ],
      ),
    );
  }
}
