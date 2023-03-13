// ignore_for_file: file_names, prefer_const_constructors

import 'package:flutter/material.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: Colors.grey[200],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        //=============Footer icons=================
        children: [
          IconButton(
            icon: Icon(Icons.home),
            onPressed: () {
              // navigate to home screen
            },
          ),
          IconButton(
            icon: Icon(Icons.person),
            onPressed: () {
              // navigate to profile screen
            },
          ),
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // navigate to cart screen
            },
          ),
          IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {
              // navigate to favorites screen
            },
          ),
        ],
      ),
    );
  }
}
