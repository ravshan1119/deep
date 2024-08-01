import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

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
        title: const Text("Home"),
      ),
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(hintText: "Enter namber..."),
              controller: controller,
            ),
            ElevatedButton(
                onPressed: () {
                  GoRouter.of(context)
                      .go('/details/data/data2/${controller.text}');
                },
                child: const Text("button")),
            ElevatedButton(onPressed: () {}, child: const Text("button2")),
            GestureDetector(
                onTap: () {
                  _launchUrl(Uri.parse("https://go.idarmon.uz/details"));
                },
                child: const Text(
                  "https://go.idarmon.uz/details",
                  style: TextStyle(color: Colors.blue),
                ))
          ],
        ),
      ),
    );
  }
}

Future<void> _launchUrl(Uri _url) async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}
