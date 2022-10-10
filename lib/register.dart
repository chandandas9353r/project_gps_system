import 'package:flutter/material.dart';

abstract class Register{
  late double screenWidth;
  late double screenHeight;
  late EdgeInsets screenPadding;
}

class FacultyRegister extends StatefulWidget {
  const FacultyRegister({Key? key}) : super(key: key);
  @override
  State<FacultyRegister> createState() => _FacultyRegisterState();
}

class _FacultyRegisterState extends State<FacultyRegister> implements Register {
  @override
  late double screenHeight;
  @override
  late  EdgeInsets screenPadding;
  @override
  late double screenWidth;
  final List<TextEditingController> _controller = [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];
  final List<String> _controllerLabels = ["First Name","Last Name","Email Address","Phone Number","Paper Code","Paper Name","Semester"];
  final List<int> _semesterList = [1,2,3,4,5,6];
  late int _dropDownItem = _semesterList[0];
  bool _changedSelection = true;
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
                      ("Faculty",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20,),
                  (_controllerLabels[index]=="Semester")?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(_controllerLabels[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        const SizedBox(width: 20,),
                        DropdownButton(
                          iconSize: 30,
                          isDense: _changedSelection,
                          borderRadius: BorderRadius.circular(10),
                          value: _dropDownItem,
                          items: _semesterList.map((_semesterList){
                            return DropdownMenuItem(
                              value: _semesterList,
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                "$_semesterList",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) => setState((){
                            _dropDownItem = int.parse(value.toString());
                            _changedSelection = false;
                          }),
                        ),
                      ],
                    ):
                    TextField(
                      controller: _controller[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
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
                        labelText: _controllerLabels[index],
                        labelStyle: const TextStyle(color: Colors.white,),
                      ),
                    ),
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

class StudentRegister extends StatefulWidget {
  const StudentRegister({Key? key}) : super(key: key);
  @override
  State<StudentRegister> createState() => _StudentRegisterState();
}

class _StudentRegisterState extends State<StudentRegister> implements Register {
  @override
  late double screenHeight;
  @override
  late double screenWidth;
  @override
  late EdgeInsets screenPadding;
  final List<TextEditingController> _controller = [TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController(),TextEditingController()];
  final List<String> _controllerLabels = ["First Name","Last Name","Email Address","Phone Number","Student ID","Course","Semester","Roll Number"];
  final List<int> _semesterList = [1,2,3,4,5,6];
  late int _dropDownItem = _semesterList[0];
  bool _changedSelection = true;
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
                  (_controllerLabels[index]=="Semester")?
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(_controllerLabels[index],style: const TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                        ),
                        const SizedBox(width: 20,),
                        DropdownButton(
                          iconSize: 30,
                          isDense: _changedSelection,
                          borderRadius: BorderRadius.circular(10),
                          value: _dropDownItem,
                          items: _semesterList.map((_semesterList){
                            return DropdownMenuItem(
                              value: _semesterList,
                              child: Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Text(
                                "$_semesterList",
                                style: const TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20,
                                ),),
                              ),
                            );
                          }).toList(),
                          onChanged: (value) => setState((){
                            _dropDownItem = int.parse(value.toString());
                            _changedSelection = false;
                          }),
                        ),
                      ],
                    ):
                    TextField(
                      controller: _controller[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
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
                        labelText: _controllerLabels[index],
                        labelStyle: const TextStyle(color: Colors.white,),
                      ),
                    ),
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