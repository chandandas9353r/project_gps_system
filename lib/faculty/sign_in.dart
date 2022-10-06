import 'package:flutter/material.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();
  final String mail = "";
  final String pass = "";
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final padding = MediaQuery.of(context).padding;
    return Scaffold(
      backgroundColor: Colors.orange,
      body: SafeArea(
        minimum: EdgeInsets.fromLTRB(20, padding.top+20, 20, padding.bottom+20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
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
            SizedBox(height: screenHeight*0.01,),
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
                Row(
                  children: [
                    Container(
                      child: Text("Sign up"),
                    ),
                    const Icon(Icons.arrow_right_sharp),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}