import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
  final screenWidth = MediaQuery.of(context).size.width;
  final screenHeight = MediaQuery.of(context).size.height;
  final padding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            repeat: ImageRepeat.repeat,
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/new_background.jpg"),
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, padding.top+20, 20, padding.bottom+20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text("Faculty"),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
              TextField(),
            ],
          ),
        ),
      ),
    );
  }
}