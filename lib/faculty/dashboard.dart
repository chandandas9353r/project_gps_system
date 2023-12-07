import 'package:flutter/material.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});
  classWidget(){
    return Container(
      margin: const EdgeInsets.fromLTRB(3.0, 5.0, 3.0, 10.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.orange.shade400,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "SUBJECT",
                style: TextStyle(
                  color: Color(0xCFFFFFFF),
                  fontWeight: FontWeight.w900
                ),
              ),
              Text(
                "COURSE",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textScaleFactor: 2.0,
              ),
              Text(
                "SEMESTER",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "TIME",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
                textScaleFactor: 2.0,
              ),
              Row(
                children: [
                  Icon(
                    Icons.cancel_outlined,
                    color: Colors.red.shade700,
                    size: 20,
                  ),
                  const SizedBox(width: 3.0,),
                  Text(
                    "Cancel",
                    style: TextStyle(
                      color: Colors.red.shade700,
                      fontWeight: FontWeight.w600
                    ),
                    textScaleFactor: 1.4,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    final EdgeInsets screenPadding = MediaQuery.of(context).padding;
    return Expanded(
      child: SafeArea(
        minimum: EdgeInsets.fromLTRB(
          screenPadding.left + 20,
          screenPadding.top + 20,
          screenPadding.right + 20,
          screenPadding.bottom + 20,
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Stack(
                    alignment: AlignmentDirectional.bottomEnd,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(3.0),
                        decoration: BoxDecoration(
                          color: Colors.purpleAccent.shade700,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: Colors.orange.shade400,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: const Icon(
                            Icons.person_outline_outlined,
                            color: Colors.white70,
                            size: 30,
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: -2,
                        right: -2,
                        child: Container(
                          padding: const EdgeInsets.all(2.0),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Container(
                            padding: const EdgeInsets.all(4.0),
                            decoration: const BoxDecoration(
                              color: Colors.green,
                              shape: BoxShape.circle,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 5.0,),
                  const Text(
                    "TEACHER",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                    textScaleFactor: 1.8,
                  ),
                ],
              ),
              const SizedBox(height: 10.0,),
              Row(
                children: const [
                  Text(
                    'Ongoing Class',
                    textScaleFactor: 0.8,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined,size: 15,),
                ],
              ),
              Container(
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: Colors.orange.shade400,
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "SUBJECT",
                        style: TextStyle(
                          color: Color(0xCFFFFFFF),
                          fontWeight: FontWeight.w900,
                        ),
                      )
                    ),
                    const SizedBox(height: 10.0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "Your Class @ TIME",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                          textScaleFactor: 1.4,
                        ),
                        Text(
                          "is about to start",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w800,
                          ),
                          textScaleFactor: 1.4,
                        ),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    Column(
                      children: const [
                        Text(
                          "Provide the below PIN to your students",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                          textScaleFactor: 1.1,
                        ),
                        Text(
                          "Or, you can alternatively show QR code also",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w300,
                          ),
                          textScaleFactor: 1.1,
                        ),
                      ],
                    ),
                    const SizedBox(height: 50.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "COURSE",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                  textScaleFactor: 2.0,
                                ),
                                Text(
                                  "SEMESTER",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 10.0,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "0 attended",
                                  style: TextStyle(
                                    color: Colors.grey.shade600,
                                    fontWeight: FontWeight.w600,
                                  ),
                                  textScaleFactor: 0.8,
                                ),
                              ],
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const Text(
                              "PIN",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w500,
                              ),
                              textScaleFactor: 3.5,
                            ),
                            Text(
                              "Active till TIME",
                              style: TextStyle(
                                color: Colors.grey.shade600,
                                fontWeight: FontWeight.w600,
                              ),
                              textScaleFactor: 0.8,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5.0,),
              Row(
                children: const [
                  Text(
                    'Upcoming Classes',
                    textScaleFactor: 0.8,
                    style: TextStyle(color: Colors.grey),
                  ),
                  Icon(Icons.keyboard_arrow_right_outlined,size: 15,),
                ],
              ),
              for(int i=0;i<3;i++) classWidget()
            ],
          ),
        ),
      ),
    );
  }
}
