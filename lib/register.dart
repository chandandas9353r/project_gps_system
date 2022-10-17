import 'package:flutter/material.dart';
import 'package:project_gps_system/student/user_page.dart';

class Register extends StatelessWidget {
  final String title;
  late final List<TextEditingController> _controller;
  late final Size _screenSize;
  late final EdgeInsets _screenPadding;
  final List<int> _semesterList = [1, 2, 3, 4, 5, 6];
  final List<String> _courseList = [];
  Register({required this.title, Key? key}) : super(key: key);
  Register.setValue(this.title, int length, BuildContext context, {Key? key})
      : super(key: key) {
    _controller = List.generate(length, (index) => TextEditingController());
    _screenSize = MediaQuery.of(context).size;
    _screenPadding = MediaQuery.of(context).padding;
  }
  changePrefix(int index, List<String> controllerLabels) =>
      (controllerLabels[index] == "Phone Number") ? "+91" : "";
  @override
  Widget build(BuildContext context) {
    return (title == "Student")
        ? StudentRegister(title)
        : FacultyRegister(title);
  }
}

class PortraitWidget extends StatelessWidget {
  final Register object;
  final List<String> _controllerLabels;
  const PortraitWidget(this.object, this._controllerLabels, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.fromLTRB(20, object._screenPadding.top + 20, 20,
          object._screenPadding.bottom + 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              if (index == 0)
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Text(
                    object.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              TextField(
                controller: object._controller[index],
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  isDense: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    backgroundColor: Colors.transparent,
                    overflow: TextOverflow.clip,
                  ),
                  prefixText: object.changePrefix(index, _controllerLabels),
                  prefixStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: _controllerLabels[index],
                  labelStyle: const TextStyle(color: Colors.white),
                ),
              ),
              if (index == _controllerLabels.length - 1)
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const UserPage(),
                    ),
                  ),
                  child: Container(
                    margin: const EdgeInsets.only(top: 50.0),
                    padding: const EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.yellow.shade700,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: const Text(
                      "Register",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
            ],
          );
        },
        itemCount: _controllerLabels.length,
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
      ),
    );
  }
}

class LandscapeWidget extends StatelessWidget {
  final Register object;
  final List<String> _controllerLabels;
  const LandscapeWidget(this.object, this._controllerLabels, {Key? key})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      minimum: EdgeInsets.fromLTRB(20, object._screenPadding.top + 20, 20,
          object._screenPadding.bottom + 20),
      child: ListView.builder(
        itemBuilder: (context, index) {
          return Column(
            children: [
              if (index == 0)
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white,
                  ),
                  child: Text(
                    object.title,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
              const SizedBox(height: 20),
              TextField(
                controller: object._controller[index],
                style: const TextStyle(color: Colors.white),
                decoration: InputDecoration(
                  isDense: true,
                  floatingLabelAlignment: FloatingLabelAlignment.center,
                  floatingLabelBehavior: FloatingLabelBehavior.always,
                  floatingLabelStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    backgroundColor: Colors.transparent,
                    overflow: TextOverflow.clip,
                  ),
                  prefixText: object.changePrefix(index, _controllerLabels),
                  prefixStyle: const TextStyle(color: Colors.black),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: _controllerLabels[index],
                  labelStyle: const TextStyle(color: Colors.white),
                ),
              ),
            ],
          );
        },
        itemCount: _controllerLabels.length,
        scrollDirection: Axis.vertical,
        physics: const ClampingScrollPhysics(),
      ),
    );
  }
}

class RegistrationWidget extends StatelessWidget {
  final String title;
  final List<String> controllerLabels;
  const RegistrationWidget(
      {required this.title, required this.controllerLabels, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    Register object =
        Register.setValue(title, controllerLabels.length, context);
    return Scaffold(
      body: Container(
        width: object._screenSize.width,
        height: object._screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: OrientationBuilder(
          builder: (context, orientation) {
            return (orientation == Orientation.portrait)
                ? PortraitWidget(object, controllerLabels)
                : LandscapeWidget(object, controllerLabels);
          },
        ),
      ),
    );
  }
}

class StudentRegister extends StatelessWidget {
  final String title;
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
  StudentRegister(this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RegistrationWidget(
      title: title,
      controllerLabels: _controllerLabels,
    );
  }
}

class FacultyRegister extends StatelessWidget {
  final String title;
  final List<String> _controllerLabels = [
    "First Name",
    "Last Name",
    "Email Address",
    "Phone Number",
    "Semester",
    "Course",
  ];
  FacultyRegister(this.title, {Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return RegistrationWidget(
      title: title,
      controllerLabels: _controllerLabels,
    );
  }
}
