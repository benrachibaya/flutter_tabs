import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class AppTabBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
            appBar: AppBar(title: Text('Tabs')),
            bottomNavigationBar: Material(
              color: Colors.blue,
              child: TabBar(tabs: [
                Tab(icon: Icon(Icons.add_a_photo
                )),
                Tab(icon: Icon(Icons.grid_on)),
                Tab(icon: Icon(Icons.mail)),
              ]),
            ),
            body: TabBarView(
              children: [
                Container(
                    child: Card (
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [  
                                   Image.asset('assets/Angela_Martin.jpg'), 
                                   Text('Angela Martin')]
                        )
                        ),
                ),
                Icon(Icons.directions_transit),
                Icon(Icons.directions_bike),
              ],
            )));
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo', theme: ThemeData(), home: AppTabBar());
  }
}
