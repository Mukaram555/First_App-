import 'package:flutter/material.dart';
import 'package:untitled/main.dart';

void main() => PracticeDo();

class PracticeDo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First App'),
          centerTitle: true,
        ),
        drawer: Drawer(),
        body: Center(
          child: Container(
            child: Text('Hello World!!!!!!'),
          ),
        ),
      ),
      routes: {"/": (context)=>},
    );
  }
}
class Login_Page extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.red,
      child:
        column(
          Childern[
            Image.asset('Assests/Images/Capture.PNG',fit: BoxFit.cover,)
          Container(
            child: Center(
            Text('What is Your Name : ',
        ,
        )
        ),
          ],
        ),
    );
  }
}

