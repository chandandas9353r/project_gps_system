import 'package:flutter/material.dart';
import 'package:project_gps_system/student/register.dart' as student;
import 'package:project_gps_system/faculty/register.dart' as faculty;

class SignIn extends StatefulWidget {
  final String value;
  const SignIn(this.value, {Key? key}) : super(key: key);
  @override
  State<SignIn> createState() => _SignInState(value);
}

class _SignInState extends State<SignIn> {
  final String value;
  _SignInState(this.value) : super();

  changeScreen(BuildContext context) =>
    (value=="Student")?
    (Navigator.of(context).push(MaterialPageRoute(builder: (context) => const student.Register()))):
    (Navigator.of(context).push(MaterialPageRoute(builder: (context) => const faculty.Register())));

  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final String mail = "";
  final String pass = "";
  @override
  Widget build(BuildContext context) {
  final screenHeight = MediaQuery.of(context).size.height;
  final screenWidth = MediaQuery.of(context).size.width;
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(height: 1,),
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: const Icon(Icons.android,size: 50,),
                  ),
                  const SizedBox(height: 10,),
                  const Text("Sign In",style: TextStyle(color: Colors.white,fontSize: 25),),
                ],
              ),
              Column(
                children: [
                  TextField(
                    controller: mailController,
                    decoration: const InputDecoration(  
                      border: OutlineInputBorder(),
                      labelText: "Email",
                    ),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 10,),
                  TextField(
                    controller: passController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                    ),
                  ),
                  const SizedBox(height: 50,),
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 20)),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('''Don't have an account?'''),
                  InkWell(
                    mouseCursor: SystemMouseCursors.click,
                    onTap: () => changeScreen(context),
                    child: Row(
                      children: const [
                        Text("Sign up"),
                        Icon(Icons.arrow_right_sharp),
                      ],
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