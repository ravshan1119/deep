import 'package:deep/FruitsPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final controller = TextEditingController(text: "12345");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(hintText: "Enter namber..."),
              controller: controller,
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context).go('/details/data/data2/${controller.text}');
                },
                child: Text("button")),
            ElevatedButton(
                onPressed: () {},
                child: Text("button2")),
          ],
        ),
      ),
    );
  }
}
