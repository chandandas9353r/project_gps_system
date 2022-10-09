import 'package:flutter/material.dart';
import 'package:project_gps_system/sign_in.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
  ));
}

class WelcomeScreen extends StatefulWidget{
  const WelcomeScreen({super.key});
  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>{
  @override
  Widget build(BuildContext context){
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        width: screenWidth,
        height: screenHeight,
        decoration: const BoxDecoration(
          image: DecorationImage(
            repeat: ImageRepeat.repeat,
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: Center(
          child: ListView(
            itemExtent: screenHeight*0.75,
            padding: const EdgeInsets.all(20),
            physics: const NeverScrollableScrollPhysics(),
            children: [
              SizedBox(
                    height: screenHeight/2,
                    child: 
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: const BoxDecoration(
                            color: Colors.white,
                          ),
                          child: const Icon(Icons.android,size: 100,),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn("Student"))),
                        mouseCursor: SystemMouseCursors.click,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Text("Student",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,),textScaleFactor: 2,),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => SignIn("Faculty"))),
                        mouseCursor: SystemMouseCursors.click,
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white,
                          ),
                          child: const Text("Faculty",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w700,),textScaleFactor: 2.2,),
                        ),
                      ),
                    ],
                  ),
            ],
          ),
        ),
      ),
    );
  }
}