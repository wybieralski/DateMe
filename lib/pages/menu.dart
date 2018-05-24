import 'package:flutter/material.dart';

import './settings_page.dart';
import './page_three.dart';
import './profile_page.dart';
import './sign_in_page.dart';
import './find_date.dart';
import './chat_screen.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String currentProfilePic = "https://firebasestorage.googleapis.com/v0/b/firefire-b30fc.appspot.com/o/31631948_1663984553649692_827987523354492928_n.jpg?alt=media&token=4c3b757f-b17b-48b7-8737-3f9df1bd7b1f";
  String otherProfilePic = "https://firebasestorage.googleapis.com/v0/b/firefire-b30fc.appspot.com/o/31631948_1663984553649692_827987523354492928_n.jpg?alt=media&token=4c3b757f-b17b-48b7-8737-3f9df1bd7b1f";

  void switchAccounts() {
    String picBackup = currentProfilePic;
    this.setState(() {
      currentProfilePic = otherProfilePic;
      otherProfilePic = picBackup;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(title: new Text("Welcome in DateMe!"), backgroundColor: Colors.red),
        drawer: new Drawer(
          child: new ListView(
            children: <Widget>[
              new UserAccountsDrawerHeader(
                accountEmail: new Text("lukasz.wybieralski@gmail.com"),
                accountName: new Text("Lukasz Wybieralski"),
                currentAccountPicture: new GestureDetector(
                  child: new CircleAvatar(
                    backgroundImage: new NetworkImage(currentProfilePic),
                  ),
                  onTap: () => print("This is your current account."),
                ),

                decoration: new BoxDecoration(
                    image: new DecorationImage(
                        image: new AssetImage("images/red.png"),
                        fit: BoxFit.fill
                    )
                ),
              ),
              new ListTile(
                  title: new Text("Your profile"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new MyProfile()));
                  }
              ),new ListTile(
                  title: new Text("Find date"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new FindDate()));
                  }
              ),
              new ListTile(
                  title: new Text("Settings"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new Settings()));
                  }
              ),
              new ListTile(
                  title: new Text("Logout"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new MyHomePage()));
                  }
              ),
                  new ListTile(
                  title: new Text("Sign in"),
                  trailing: new Icon(Icons.arrow_right),
                  onTap: () {
                    Navigator.of(context).pop();
                    Navigator.of(context).push(new MaterialPageRoute(builder: (BuildContext context) => new SignInDemo()));
                  }
              ),

              new Divider(),
              new ListTile(
                title: new Text("Cancel"),
                trailing: new Icon(Icons.cancel),
                onTap: () => Navigator.pop(context),
              ),
            ],
          ),
        ),
      body: new Image.asset(
            'images/logo.png',
        fit: BoxFit.cover,

      ),
    );
  }
}