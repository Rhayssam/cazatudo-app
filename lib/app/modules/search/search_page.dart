import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          decoration:
              InputDecoration.collapsed(hintText: 'Procurar por um produto'),
        ),
      ),
      body: Container(),
    );
  }
}
