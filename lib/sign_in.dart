import 'package:flutter/material.dart';
import 'package:project_gps_system/register.dart';

class SignIn extends StatelessWidget {
  SignIn({required this.value,Key? key}) : super(key: key);
  
  final TextEditingController _mailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();
  final String value;

  @override
  Widget build(BuildContext context) {
  final _screenSize = MediaQuery.of(context).size;
  final _screenPadding = MediaQuery.of(context).padding;
    return Scaffold(
      body: Container(
        width: _screenSize.width,
        height: _screenSize.height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            repeat: ImageRepeat.repeat,
            fit: BoxFit.fill,
            image: AssetImage("lib/assets/images/background.jpeg"),
          ),
        ),
        child: SafeArea(
          minimum: EdgeInsets.fromLTRB(20, _screenPadding.top+20, 20, _screenPadding.bottom+20),
          child: Column(
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
                        keyboardType: TextInputType.emailAddress,
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
                      child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.deepPurpleAccent,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text("Sign in",style: TextStyle(color: Colors.white,fontSize: 20)),
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
                      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => Register(value: value))),
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
          ),
        ),
      ),
    );
  }
}