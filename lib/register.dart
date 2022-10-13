import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  final String value;
  const Register({required this.value, Key? key}) : super(key: key);
  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final List<TextEditingController> _controller;
  late final Size _screenSize;
  late final EdgeInsets _screenPadding;
  _RegisterState();
  _RegisterState.setValue(length, context) {
    _controller = List.generate(length, (index) => TextEditingController());
    _screenSize = MediaQuery.of(context).size;
    _screenPadding = MediaQuery.of(context).padding;
  }
  changeScreen() {}
  @override
  Widget build(BuildContext context) {
    return (widget.value == "Student")
        ? StudentRegister(value: widget.value)
        : FacultyRegister(value: widget.value);
  }
}

class TextFieldWidget extends StatelessWidget {
  final _RegisterState objState;
  final List<String> controllerLabels;
  final int index;
  const TextFieldWidget(this.index,
      {required this.objState, required this.controllerLabels, Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: objState._controller[index],
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.amberAccent,
            style: BorderStyle.solid,
            width: 5,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: controllerLabels[index],
        labelStyle: const TextStyle(color: Colors.white),
      ),
    );
  }
}

class StudentRegister extends StatefulWidget {
  final String value;
  const StudentRegister({required this.value, Key? key}) : super(key: key);
  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> {
  final List<String> _controllerLabels = [
    "First Name",
    "Last Name",
    "Email Address",
    "Phone Number",
    "Student ID",
    "Course",
    "Semester",
    "Roll Number"
  ];
  @override
  Widget build(BuildContext context) {
    _RegisterState objState =
        _RegisterState.setValue(_controllerLabels.length, context);
    return Scaffold(
      body: Container(
        width: objState._screenSize.width,
        height: objState._screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, objState._screenPadding.top + 20, 20,
              objState._screenPadding.bottom + 20),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  if(index==0) Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text
                      (widget.value,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextFieldWidget(
                      objState: objState,
                      controllerLabels: _controllerLabels,
                      index),
                ],
              );
            },
            itemCount: _controllerLabels.length,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
          ),
        ),
      ),
    );
  }
}

class FacultyRegister extends StatefulWidget {
  final String value;
  const FacultyRegister({required this.value, Key? key}) : super(key: key);
  @override
  State<FacultyRegister> createState() => _FacultyRegisterState();
}

class _FacultyRegisterState extends State<FacultyRegister> {
  final List<String> _controllerLabels = [
    "First Name",
    "Last Name",
    "Email Address",
    "Phone Number",
    "Paper Code",
    "Paper Name",
    "Semester"
  ];
  @override
  Widget build(BuildContext context) {
    _RegisterState objState =
        _RegisterState.setValue(_controllerLabels.length, context);
    return Scaffold(
      body: Container(
        width: objState._screenSize.width,
        height: objState._screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, objState._screenPadding.top + 20, 20,
              objState._screenPadding.bottom + 20),
          child: ListView.builder(
            itemBuilder: (context, index) {
              return Column(
                children: [
                  if(index==0) Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Text
                      (widget.value,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  TextFieldWidget(
                      objState: objState,
                      controllerLabels: _controllerLabels,
                      index),
                ],
              );
            },
            itemCount: _controllerLabels.length,
            scrollDirection: Axis.vertical,
            physics: const ClampingScrollPhysics(),
          ),
        ),
      ),
    );
  }
}