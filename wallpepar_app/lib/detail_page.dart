import 'package:flutter/material.dart';

class DetailPage extends StatelessWidget {
  final String imageUrl;

  DetailPage({required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wallpaper Detail"),
      ),
      body: Center(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
