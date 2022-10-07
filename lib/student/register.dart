import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  // final List<TextEditingController> _controller = [];
  // final List<String> controllerLabels = ["First Name","Last Name","Email Address","Phone Number","Date of Birth","Student ID","Controller1","Controller2","Controller3","Controller4"];
  
  final _firstName = TextEditingController();
  final _lastName = TextEditingController();
  final _emailAddress = TextEditingController();
  final _phoneNumber = TextEditingController();
  final _dateOfBirth = TextEditingController();
  final _studentID = TextEditingController();
  final _controller1 = TextEditingController();
  final _controller2 = TextEditingController();
  final _controller3 = TextEditingController();
  final _controller4 = TextEditingController();

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
        child:
        // ListView.builder(
        //   itemBuilder: (context, index) {
        //     return TextField(
        //       controller: _controller[index],
        //       decoration: const InputDecoration(
        //         border: OutlineInputBorder(),
        //         labelText: controllerLabels[index],
        //       ),
        //     );
        //   },
        //   itemCount: controllerLabels.length,
        // ),
        
        SafeArea(
          minimum: EdgeInsets.fromLTRB(20, padding.top+20, 20, padding.bottom+20),
          child: ListView(
              scrollDirection: Axis.vertical,
              physics: const ClampingScrollPhysics(),
              children: [
                const Text("Student",textAlign: TextAlign.center,),
                TextField(
                  controller: _firstName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "First Name",
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _lastName,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Last Name",
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _emailAddress,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email Address",
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _phoneNumber,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Phone Number",
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _dateOfBirth,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Date of Birth",
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _studentID,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Student ID",
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _controller1,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _controller2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _controller3,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 20,),
                TextField(
                  controller: _controller4,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ],
            ),
        ),
        ),
    );
  }
}