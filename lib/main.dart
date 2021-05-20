import 'package:flutter/material.dart';
import 'package:luhi/paginas_tabs/tab1.dart';
import 'package:luhi/paginas_tabs/tab2.dart';
import 'package:luhi/paginas_tabs/tab3.dart';

void main() {
  runApp(MaterialApp(
      // Title
      title: "Using Tabs",
      debugShowCheckedModeBanner: false,
      // Home
      home: MiCasa()));
}

class MiCasa extends StatefulWidget {
  @override
  MiCasaState createState() => MiCasaState();
}

class MiCasaState extends State<MiCasa> with SingleTickerProviderStateMixin {
  TabController controller;
  @override
  void initState() {
    super.initState();

    // Initialize the Tab Controller
    controller = TabController(length: 3, vsync: this);
  } //Class MiCasaState

  @override
  void dispose() {
    // Dispose of the Tab Controller
    controller.dispose();
    super.dispose();
  } //Fin Disponer

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: Text("Usando Bottom Navigation Bar Valenzuela"),
        // Set the background color of the App Bar
        backgroundColor: Colors.red,
      ),
      // Set the TabBar view as the body of the Scaffold
      body: TabBarView(
        // Add tabs as widgets
        children: <Widget>[
          FirstTab(),
          SecondTab(),
          ThirdTab()
        ],
        // set the controller
        controller: controller,
      ),
      // Set the bottom navigation bar
      bottomNavigationBar: Material(
        // set the color of the bottom navigation bar
        color: Colors.red,
        // set the tab bar as the child of bottom navigation bar
        child: TabBar(
          tabs: <Tab>[
            Tab(
              // set icon to the tab
              icon: Icon(Icons.account_box),
            ),
            Tab(
              icon: Icon(Icons.ad_units_outlined),
            ),
            Tab(
              icon: Icon(Icons.add_a_photo),
            ),
          ],
          // setup the controller
          controller: controller,
        ), //Fin TabBar
      ), //Fin Pie de pagina
    ); //Fin Scaffold
  } //Fin de Widget
}
