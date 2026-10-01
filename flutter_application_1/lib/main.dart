import 'package:flutter/material.dart';

void main() {
  runApp(const HiWorldApp());
}

class HiWorldApp extends StatelessWidget {
  const HiWorldApp({super.key});

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

@override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();

WidgetsBinding.instance.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: const Text('Hi World'),
            content: const Text('Welcome to the app!'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: const Text('OK'),
              ),
            ],
          );
        },
      );
    });
  }

@override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Hi World'),
      ),
    );
  }
}