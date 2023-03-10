
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:setting_app/screens/home/provider/homeprovider.dart';
import 'package:setting_app/screens/home/view/homescreen.dart';

void main()
{
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Homeprovider(),),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: true,
        routes: {
          '/' : (context) => Homescreen(),
        },
      ),
    ),
  );
}