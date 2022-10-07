import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final List<TextEditingController> _controller = [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];
  final List<String> controllerLabels = ["First Name","Last Name","Email Address","Phone Number","Date of Birth","Student ID","Controller1","Controller2","Controller3","Controller4"];
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
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, padding.top+20, 20, padding.bottom+20),
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
}