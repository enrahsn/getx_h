import 'package:flutter/material.dart';

import 'menu_item.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});
 static const appTitle = 'Drawer rady';
//  final String title;
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // debugShowCheckedModeBanner: false,
      // title: appTitle,
      // home: MyHomePage(title: appTitle),
      appBar: AppBar(title: const Text(appTitle)),
      // body: 
      // Center(
        // child: _widgetOptions[_selectedIndex],
      // ),
      drawer: Drawer(
      
        child: Container(
          color: Theme.of(context).primaryColor,
          child: ListView(
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text('eng rady hasan'),
                accountEmail: Text('rdyhasn@gmail.com'),
                // currentAccountPicture:Image.asset('assets/images/buy0.png'),
                currentAccountPicture: Image(
                  image: AssetImage('assets/images/buy-96.png'),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Text('Drawer Header'),
              ),
              // const SizedBox(height: 30),
              Divider(),
              Divider(
                // color: Theme.of(context).primaryColor,
                color: Colors.blue,
              ),
              MyMenuItems(),
          
            ],
          ),
        ),
      ),
    );
  }
}
/*

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  static const appTitle = 'Drawer rady';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: appTitle,
      home: MyHomePage(title: appTitle),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Center(
        child: _widgetOptions[_selectedIndex],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: Container(
          // color: Theme.of(context).primarySwatch,
          color: Theme.of(context).primaryColor,
          // color: Theme.of(context).secondaryHeaderColor,
          // color: Theme.of(context).secondaryHeaderColor,
          // color: myThemeData.primaryColor,
          // color: myThemeData.secondaryHeaderColor,
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: const [
              UserAccountsDrawerHeader(
                accountName: Text('eng rady hasan'),
                accountEmail: Text('rdyhasn@gmail.com'),
                // currentAccountPicture:Image.asset('assets/images/buy0.png'),
                currentAccountPicture: Image(
                  image: AssetImage('assets/images/buy0.png'),
                ),
                decoration: BoxDecoration(color: Colors.green),
              ),
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.yellow,
                ),
                child: Text('Drawer Header'),
              ),
              // const SizedBox(height: 30),
              Divider(),
              Divider(
                // color: Theme.of(context).primaryColor,
                color: Colors.blue,
              ),
              MyMenuItems(),
              /*
              ListTile(
                title: const Text('Home Screen'),
                selected: _selectedIndex == 0,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(0);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('Business'),
                selected: _selectedIndex == 1,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(1);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: const Text('School'),
                selected: _selectedIndex == 2,
                onTap: () {
                  // Update the state of the app
                  _onItemTapped(2);
                  // Then close the drawer
                  Navigator.pop(context);
                },
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}
*/