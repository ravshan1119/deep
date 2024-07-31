import 'package:flutter/material.dart';

class Detail1 extends StatefulWidget {
  const Detail1({super.key, this.id});
  final int? id;

  @override
  State<Detail1> createState() => _Detail1State();
}

class _Detail1State extends State<Detail1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail1"),
      ),
      body: Center(
        child: Text("Detail1: ${widget.id}"),
      ),
    );
  }
}
