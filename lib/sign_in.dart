import 'package:flutter/material.dart';
import 'package:project_gps_system/register.dart';

class SignIn extends StatelessWidget {
  SignIn(this.value,{Key? key}) : super(key: key);
  
  final TextEditingController mailController = TextEditingController();
  final TextEditingController passController = TextEditingController();
  final String mail = "";
  final String pass = "";
  final String value;

  changeScreen(context) => (value=="Student")?
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => StudentRegister())):
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => FacultyRegister()));

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
          maintainBottomViewPadding: true,
          minimum: EdgeInsets.fromLTRB(20, padding.top+20, 20, padding.bottom+20),
          child: SizedBox(
            width: screenWidth-40,
            height: screenHeight-padding.top-padding.bottom-40,
            child: ListView(
            children: [
              SizedBox(height: (screenHeight-padding.top-padding.bottom-40)*0.08,),
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
              SizedBox(height: (screenHeight-padding.top-padding.bottom-40)*0.2,),
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
                  const SizedBox(height: 20,),
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
              SizedBox(height: (screenHeight-padding.top-padding.bottom-40)*0.2,),
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
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
        ),),
      ),
    );
  }
}