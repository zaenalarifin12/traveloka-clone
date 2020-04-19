import 'package:flutter/material.dart';
import 'package:travelokaclone/pages/awal.dart';
import 'package:travelokaclone/pages/inbox.dart';
import 'package:travelokaclone/pages/pesanan.dart';
import 'package:travelokaclone/pages/profile.dart';
import 'package:travelokaclone/pages/simpan.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      theme: ThemeData(
        primarySwatch: Colors.blue
      ),
      home: MyHomePage(title: "traveloka"),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedIndex = 0;
  final _layoutPage = [
    Awal(),
    Simpan(),
    Pesanan(),
    Inbox(),
    Profile(),
  ];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text("Home")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.save),
              title: Text("simpan")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.view_agenda),
              title: Text("Pesanan")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.inbox),
              title: Text("Inbox")
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle),
              title: Text("Akun saya")
            )
          ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}

