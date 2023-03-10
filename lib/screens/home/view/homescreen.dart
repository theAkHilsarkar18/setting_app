import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:setting_app/screens/home/provider/homeprovider.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

Homeprovider? homeprovider;
Homeprovider? homeproviderTrue;

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    homeproviderTrue = Provider.of(context, listen: true);
    homeprovider = Provider.of(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title:
              Text("Settings UI", style: GoogleFonts.aBeeZee(letterSpacing: 2)),
          backgroundColor: Colors.cyan,
        ),
        body: Column(
          children: [
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Common",
                    style: TextStyle(
                        color: Colors.cyan.shade700,
                        fontWeight: FontWeight.bold),
                  )),
            ),
            ListTile(
              leading: Icon(Icons.language),
              title: Text("Language"),
              subtitle: Text("English"),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.cloud),
              title: Text("Environment"),
              subtitle: Text("Production"),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Account",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 10),
            ListTile(leading: Icon(Icons.call), title: Text("Phone number")),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text("Email"),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Sign Out"),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Security",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
            SizedBox(height: 10),
            ListTile(
                leading: Icon(Icons.phonelink_lock),
                title: Text("Lock app in background")),
            SizedBox(height: 10),
            ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
              trailing: Switch(
                value: homeproviderTrue!.onOff,
                onChanged: (value) => homeprovider!.onClick(value),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Change password"),
              trailing: Switch(
                value: homeproviderTrue!.onOff,
                onChanged: (value) => homeprovider!.onClick(value),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                    "Misc",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
