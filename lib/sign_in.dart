import 'package:flutter/material.dart';
import 'package:project_gps_system/register.dart';
import 'package:project_gps_system/student/user_page.dart' as StudentPage;
import 'package:project_gps_system/faculty/user_page.dart' as FacultyPage;

class PortraitWidget extends StatefulWidget{
  final String title;
  const PortraitWidget(this.title,{super.key});
  @override
  State<PortraitWidget> createState() => _PortraitWidgetState();
}

class _PortraitWidgetState extends State<PortraitWidget> {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  userSignIn(title,context){
    if(_mailController.text=="faculty@login" && _passController.text=="login"){
      Navigator.push(context, MaterialPageRoute(builder: (context) => const FacultyPage.UserPage()));
    }
  }

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    _mailController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Center(
            child: Column(
              children: [
                Expanded(
                  flex: 4,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        color: Colors.white,
                        child: const Icon(
                          Icons.android,
                          size: 100,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ),
                const Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Flexible(
                child: TextField(
                  controller: _mailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress
                ),
              ),
              Flexible(
                child: TextField(
                  controller: _passController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),
              ),
              Flexible(
                child: GestureDetector(
                  onTap: () => userSignIn(widget.title,context),
                  child: Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: const Text("Sign in",
                        style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 1,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('''Don't have an account?'''),
              InkWell(
                mouseCursor: SystemMouseCursors.click,
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Register(title: widget.title))),
                child: Row(
                  children: const [
                    Text("Sign up"),
                    Icon(Icons.arrow_right_sharp),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class LandscapeWidget extends StatelessWidget {
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  LandscapeWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  color: Colors.white,
                  padding: const EdgeInsets.all(10),
                  child: const Icon(
                    Icons.android,
                    size: 100,
                    color: Colors.black,
                  ),
                ),
              ),
              const Flexible(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        Expanded(
          flex: 4,
          child: Column(
            children: [
              Expanded(
                flex: 1,
                child: TextField(
                  controller: _mailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Email",
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
              Expanded(
                flex: 1,
                child: TextField(
                  controller: _passController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: "Password",
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        const Text('''Don't have an account?'''),
                        Row(
                          children: const [
                            Text("Sign Up"),
                            Icon(Icons.arrow_right_sharp),
                          ],
                        ),
                      ],
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.deepPurpleAccent,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: const Text("Sign in",
                          style: TextStyle(color: Colors.white, fontSize: 20)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SignIn extends StatelessWidget {
  final String title;
  const SignIn({required this.title, Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenPadding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            repeat: ImageRepeat.repeat,
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(
              20, screenPadding.top + 20, 20, screenPadding.bottom + 20),
          child: OrientationBuilder(
            builder: (context, orientation) {
              return (orientation == Orientation.portrait)
                  ? PortraitWidget(title)
                  : LandscapeWidget();
            },
          ),
        ),
      ),
    );
  }
}
