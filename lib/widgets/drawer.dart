import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl =
        "https://cdn.pixabay.com/photo/2015/10/05/22/37/blank-profile-picture-973460_1280.png";
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                decoration: BoxDecoration(
                  color: Colors.red
                ),
                accountName: Text("Manish"),
                accountEmail: Text("abc123@gmail.com"),
                currentAccountPicture: CircleAvatar(backgroundImage: NetworkImage(imageUrl),

                ),
              ),
          ),
          ListTile(leading: Icon(CupertinoIcons.home
          ),
            title: Text("Home"
            ),
          ),
          ListTile(leading: Icon(CupertinoIcons.profile_circled
          ),
            title: Text("Profile"
            ),
          ),
          ListTile(leading: Icon(CupertinoIcons.mail
          ),
            title: Text("Email Me"
            ),
          )
        ],
      ),
    );
  }
}
