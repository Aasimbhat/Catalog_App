import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child:UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text("Aasim Bhat"),
                accountEmail: Text("asimbhat799@gmail.com"),
                currentAccountPicture:  Image.asset("assets/images/male.png",
              ),

              ) ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.home,
                  color: Colors.white,
                ),
                title: Text("home",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.profile_circled,
                  color: Colors.white,
                ),
                title: Text("Profile",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
              ListTile(
                leading: Icon(
                  CupertinoIcons.mail,
                  color: Colors.white,
                ),
                title: Text("Email",
                textScaleFactor: 1.4,
                style: TextStyle(
                  color: Colors.white
                ),),
              ),
              
          ],
        ),
      )
    );
  }
}