import 'package:flutter/cupertino.dart';
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
          backgroundColor: Color(0xffD72323),
          middle: Text("Setting UI",style: GoogleFonts.lato(color: Color(0xffFDFAF6),letterSpacing: 1),),
        ),
        child: Column(
          children: [
            SizedBox(height: 10),
            CupertinoListTile(
              leading: Icon(CupertinoIcons.number),
              title: Row(
                children: [
                  Text("Language",style: GoogleFonts.lato(letterSpacing: 1)),
                  Spacer(),
                  Text("English",style: GoogleFonts.lato(color: Color(0xff000001),letterSpacing: 1,fontSize: 12)),
                  SizedBox(width: 5,),
                  Icon(CupertinoIcons.arrowtriangle_right,size: 15,),
                ],
              ),
            ),
            CupertinoListTile(
              leading: Icon(CupertinoIcons.number),
              title: Row(
                children: [
                  Text("Environment",style: GoogleFonts.lato(letterSpacing: 1)),
                  Spacer(),
                  Text("Production",style: GoogleFonts.lato(color: Color(0xff000001),letterSpacing: 1,fontSize: 12)),
                  SizedBox(width: 5,),
                  Icon(CupertinoIcons.cloud,size: 15,),
                ],
              ),
            ),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
