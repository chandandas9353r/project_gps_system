import 'package:flutter/material.dart';

abstract class Register{
  late double screenWidth;
  late double screenHeight;
  late EdgeInsets screenPadding;
}

class FacultyRegister extends StatelessWidget implements Register {

  FacultyRegister({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    screenPadding = MediaQuery.of(context).padding;
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
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, screenPadding.top+20, 20, screenPadding.bottom+20),
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
  
  @override
  late double screenHeight;
  
  @override
  late EdgeInsets screenPadding;
  
  @override
  late double screenWidth;
}

class StudentRegister extends StatelessWidget implements Register {

  final List<TextEditingController> _controller = [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];
  final List<String> controllerLabels = ["First Name","Last Name","Email Address","Phone Number","Date of Birth","Student ID","Controller1","Controller2","Controller3","Controller4"];

  StudentRegister({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenWidth = MediaQuery.of(context).size.width;
    screenPadding = MediaQuery.of(context).padding;
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
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, screenPadding.top+20, 20, screenPadding.bottom+20),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  if(index==0)Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: const Text
                      ("Student",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextField(
                    controller: _controller[index],
                    decoration: InputDecoration(
                      border: const OutlineInputBorder(),
                      labelText: controllerLabels[index],
                    ),
                  ),
                ],
              );
            },
            itemCount: controllerLabels.length,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
          ),          
        ),
      ),
    );
  }
  
  @override
  late double screenHeight;
  
  @override
  late EdgeInsets screenPadding;
  
  @override
  late double screenWidth;
}