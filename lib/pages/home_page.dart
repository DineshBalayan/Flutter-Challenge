import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_challenge/helper/base_controller.dart';
import 'package:flutter_challenge/helper/extantion.dart';
import 'package:flutter_challenge/pages/offload_manager.dart';
import 'package:flutter_challenge/pages/settings.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'grading.dart';

class DrawerItem {
  String title;
  IconData icon;

  DrawerItem(this.title, this.icon);
}

GlobalKey<HomePageState> globalKey = GlobalKey<HomePageState>();

class HomePage extends StatefulWidget {
  final drawerItems = [
    DrawerItem("Offload Manager", Icons.local_pizza),
    DrawerItem("Settings", Icons.info),
  ];

  HomePage({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int _selectedDrawerIndex = 1;

  getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return OffloadManager();
      case 1:
        return Settings();
      case 2:
        Get.find<BaseController>().type = 0;
        return Grading();
      case 3:
        Get.find<BaseController>().type = 1;
        return Grading();

      default:
        return const Text("Error");
    }
  }

  onSelectItem(int index) {
    setState(() => _selectedDrawerIndex = index);
    if (_scaffoldKey.currentState!.isDrawerOpen) {
      Navigator.of(context).pop(); // close the drawer
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(ListTile(
        title: Text(
          d.title,
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: 0.0,
                wordSpacing: 1.0,
                fontWeight: FontWeight.w500,
              ),
              fontSize: 16),
        ),
        selected: i == _selectedDrawerIndex,
        onTap: () => onSelectItem(i),
      ));
    }

    return Scaffold(
      key: _scaffoldKey,
      resizeToAvoidBottomInset:false,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: '#124d3d'.hexToColor(),
        leading: IconButton(
          icon: const Icon(Icons.menu, size: 42),
          onPressed: () => _scaffoldKey.currentState!.openDrawer(),
        ),
        title: Text(
          _selectedDrawerIndex == 0
              ? 'Offload'
              : _selectedDrawerIndex == 1
                  ? "Setting"
                  : _selectedDrawerIndex == 2
                      ? "Grading"
                      : "Grading",
          style: GoogleFonts.poppins(
              textStyle: const TextStyle(
                color: Colors.white,
                letterSpacing: 0.0,
                wordSpacing: 1.0,
                fontWeight: FontWeight.w500,
              ),
              fontSize: 18),
        ),
      ),
      drawer: Drawer(
        child: Container(
          color: '#124d3d'.hexToColor(),
          child: Column(
            children: <Widget>[
              SafeArea(
                  child: Padding(
                      padding: const EdgeInsets.only(
                          top: 15, left: 15, right: 15, bottom: 60),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'User Email',
                            style: GoogleFonts.poppins(
                                textStyle: const TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                  wordSpacing: 1.0,
                                  fontWeight: FontWeight.w500,
                                ),
                                fontSize: 16),
                          ),
                          const Icon(
                            Icons.cancel,
                            color: Colors.white,
                          ).onClick(() => Navigator.of(context).pop())
                        ],
                      ))),
              Column(children: drawerOptions)
            ],
          ),
        ),
      ),
      body: getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
