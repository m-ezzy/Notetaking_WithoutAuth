import 'package:flutter/material.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Notetaking Client Flutter',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink[200]!),
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Home Page'),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.title});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("Notetaking Client Flutter"),
      ),
      body: Container(
        color: Theme.of(context).colorScheme.primary,
        // constraints: BoxConstraints.expand(),
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Text(
              'Hello World',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
        },
        tooltip: 'Create Note',
        child: const Icon(Icons.add),
      ),
    );
  }
}
