import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(buildContext context) {
    const appTitle = 'Opacity Demo';
    return const MaterialApp(
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

// the statefulwidget's job is to take data and create a State class.
// in this case, the widget takes a titlem and creates a _MyHomePageState.
class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  State<MyHomePage> createState() => _MyhomePageState();
}

// the state class is responsible for two thins: holding some data you can
// update and building the UI using that data.
class _MyHomePageState extends State<MyHomePage> {
  // wether the green box should be visible
  bool _visible = true;

  @override
  Widget build(buildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        // #docregion AnimatedOpacity
        child: AnimatedOpacity(
          // if the widget is visible, animate to 0.0 (invisible).
          // if the widget is hidden, animate to 1.0 (fully visible).
          
        )
      )
    )
  }
}