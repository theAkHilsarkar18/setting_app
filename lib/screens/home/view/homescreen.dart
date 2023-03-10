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
          leading: Icon(Icons.all_inclusive,size: 30),
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
                        fontWeight: FontWeight.bold,letterSpacing: 1),
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
                    style: GoogleFonts.raleway(
                        color: Colors.cyan.shade700, fontWeight: FontWeight.bold),
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
                    style: GoogleFonts.raleway(
                        color: Colors.cyan.shade700, fontWeight: FontWeight.bold,letterSpacing: 1),
                  )),
            ),
            SizedBox(height: 10),
            ListTile(
                leading: Icon(Icons.phonelink_lock),

                title: Text("Lock app in background"),
              trailing: Switch(
                activeColor: Colors.cyan.shade700,
                value: homeproviderTrue!.onOff3,
                onChanged: (value) => homeprovider!.onClick3(value),
              ),
            ),

            SizedBox(height: 10),
            ListTile(
                leading: Icon(Icons.fingerprint),
                title: Text("Use fingerprint"),
              trailing: Switch(
                activeColor: Colors.cyan.shade700,
                value: homeproviderTrue!.onOff,
                onChanged: (value) => homeprovider!.onClick(value),
              ),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.lock),
              title: Text("Change password"),
              trailing: Switch(
                activeColor: Colors.cyan.shade700,
                value: homeproviderTrue!.onOff2,
                onChanged: (value) => homeprovider!.onClick2(value),
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
                        color: Colors.cyan.shade700, fontWeight: FontWeight.bold,letterSpacing: 1),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
