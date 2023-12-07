import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    final EdgeInsets _screenPadding = MediaQuery.of(context).padding;
    return Expanded(
      child: SafeArea(
        minimum: EdgeInsets.fromLTRB(
          _screenPadding.left + 20,
          _screenPadding.top + 20,
          _screenPadding.right + 20,
          _screenPadding.bottom + 20,
        ),
        child: Container(
          height: double.infinity,
          alignment: Alignment.center,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            boxShadow: const [
              BoxShadow(
                color: Colors.orangeAccent,
                blurRadius: 10,
                blurStyle: BlurStyle.inner,
                spreadRadius: 3,
              )
            ],
            gradient: const SweepGradient(
              center: Alignment.topCenter,
              colors: [
                Colors.amber,
                Colors.blue,
                Colors.lightGreenAccent,
                Colors.deepPurpleAccent,
              ],
            ),
          ),
          child: const Text(
            "Profile",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
            textScaleFactor: 2,
          ),
        ),
      ),
    );
  }
}
