import 'package:flutter/material.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({super.key, this.id});
  final int? id;

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("FruitsPage"),
      ),
      body: Center(
        child: Text("id: ${widget.id}"),
      ),
    );
  }
}
