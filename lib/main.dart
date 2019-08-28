import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //theme: ThemeData.dark(),
      theme: ThemeData(
          primarySwatch: Colors.green,
          accentColor: Colors.purple,
          fontFamily: "Arial"),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        drawer: Drawer(
          child: Column(
            children: <Widget>[
//              DrawerHeader(
//                child: Container(
//                  color: Colors.green,
//                ),
//              ),
              UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  child: Text("JM"),
                ),
                accountName: Text("Jacob Maoura"),
                accountEmail: Text("jacobmoura@gmail.com"),
              ),
              ListTile(
                leading: Icon(Icons.home),
                title: Text("Home"),
              ),
              ListTile(
                leading: Icon(Icons.account_circle),
                title: Text("Account"),
              ),
              ListTile(
                leading: Icon(Icons.notifications),
                title: Text("Notifications"),
              ),
              ListTile(
                leading: Icon(Icons.arrow_back),
                title: Text("Exit"),
              ),
            ],
          ),
        ),
        appBar: AppBar(
          title: Text("My App"),
          centerTitle: true,
          //leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.notifications),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.new_releases),
              onPressed: () {},
            ),
          ],
        ),
        body: Center(
          child: Text("Hello Dart"),
        ),
        floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: () {
            print("Voce clicou");
          },
          backgroundColor: Colors.tealAccent,
        ),
        bottomNavigationBar:
            BottomNavigationBar(items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(
              icon: Icon(Icons.perm_camera_mic), title: Text("Camera")),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), title: Text("Account")),
        ]),
      ),
    );
  }
}

/*
Primeira aula
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Material(
        child: Center(
          child: Text("Hello Dart"),
        ),
      ),
    );
  }
}
*/
