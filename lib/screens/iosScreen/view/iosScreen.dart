import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class iOSscreen extends StatefulWidget {
  const iOSscreen({Key? key}) : super(key: key);

  @override
  State<iOSscreen> createState() => _iOSscreenState();
}

class _iOSscreenState extends State<iOSscreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoPageScaffold(
        navigationBar: CupertinoNavigationBar(
            middle: Text(
              "Settings UI",
              style: TextStyle(color: CupertinoColors.white),
            ),
            backgroundColor: CupertinoColors.systemRed),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Common",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: CupertinoColors.darkBackgroundGray),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.language,
                                      color: CupertinoColors.black, size: 20),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "Language",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Text("English"),
                                  Icon(Icons.arrow_forward_ios_outlined,
                                      color: CupertinoColors.black, size: 15),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.cloud_outlined,
                                color: CupertinoColors.black, size: 20),
                            SizedBox(width: 20),
                            Text(
                              "environment",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            Spacer(),
                            Text("production"),
                            Icon(Icons.navigate_next,color: Colors.black),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Account",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.call, color: Colors.black45, size: 20),
                            SizedBox(width: 20),
                            Text(
                              "Phone Number",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        decoration: BoxDecoration(),
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.email, color: Colors.black45, size: 20),
                            SizedBox(width: 20),
                            Text(
                              "email",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          children: [
                            SizedBox(width: 10),
                            Icon(Icons.logout, color: Colors.black45, size: 20),
                            SizedBox(width: 20),
                            Text(
                              "Sign out",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Security",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(Icons.phone_android,
                                    color: Colors.black45, size: 20),
                                SizedBox(width: 20),
                                Text(
                                  "Lock App In Background",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 15),
                  Row(
                    children: [
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Misc",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(Icons.description,
                                    color: Colors.black45, size: 20),
                                SizedBox(width: 20),
                                Text(
                                  "Terms Of Service",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_forward_ios_outlined,
                                    color: Colors.black45, size: 20)
                              ],
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 50,
                        width: double.infinity,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                SizedBox(width: 10),
                                Icon(Icons.tab_rounded,
                                    color: Colors.black45, size: 20),
                                SizedBox(width: 20),
                                Text(
                                  "Change Password",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_forward_ios_outlined,
                                    color: Colors.black45, size: 20)
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
