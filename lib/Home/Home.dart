import 'package:flutter/material.dart';

class Home_Page extends StatelessWidget {
  const Home_Page({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catalog App'),
      centerTitle: true,),
      body: const Center(
          child: Text('Welcome To 30 Days of Code!!!!'),
        ),
      drawer: const Drawer(),
    );
  }
}
