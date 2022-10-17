import 'package:flutter/material.dart';
import 'package:project_gps_system/sign_in.dart';

void main() => runApp(MaterialApp(
  debugShowCheckedModeBanner: false,
  home: WelcomeScreen(),
));

class SnapScreenBtn extends StatelessWidget{
  final String title;
  const SnapScreenBtn({required this.title, Key? key}) : super(key: key);
  changeScreen(value,context) => Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn(title: title)));
  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () => changeScreen(title,context),
      child: Container(
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}

class WelcomeScreen extends StatelessWidget {
  WelcomeScreen({Key? key}) : super(key: key);
  final List<Widget> snapScreen = [
    Expanded(
      flex: 2,
      child: Center(
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.white,
          child: const Icon(
            Icons.android,
            size: 100,
            color: Colors.black,
          ),
        ),
      ),
    ),
    Expanded(
      flex: 1,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          SnapScreenBtn(title: "Student"),
          SizedBox(height: 20,),
          SnapScreenBtn(title: "Faculty"),
        ],
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: SafeArea(
          minimum: const EdgeInsets.all(20),
          child: OrientationBuilder(
            builder: (context, orientation) {
              if(orientation == Orientation.portrait){
                return Column(
                  children: [
                    const SizedBox(height: 20,),
                    ...snapScreen,
                  ],
                );
              }
              return Row(
                  children: [...snapScreen,],
              );
            }
          ),
        ),
      ),
    );
  }
}