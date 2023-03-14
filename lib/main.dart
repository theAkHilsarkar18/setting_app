
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_app/screens/home/provider/homeprovider.dart';
import 'package:setting_app/screens/home/view/homescreen.dart';
import 'package:setting_app/screens/iosScreen/view/iosScreen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: CupertinoApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/' : (context) => iOSscreen(),
        },
      ),
    ),
  );
}