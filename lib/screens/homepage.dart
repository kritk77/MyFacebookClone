import 'package:facebook_clone_app/appbar/homepage_appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:facebook_clone_app/screens/homepage_body.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  final List<Tab> bottomTabs = <Tab>[
    Tab(
      icon: Icon(
        Icons.home,
        size: 25.0,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.wc,
        size: 25.0,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.airplay,
        size: 25.0,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.store,
        size: 25.0,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.add_alert,
        size: 25.0,
      ),
    ),
    Tab(
      icon: Icon(
        Icons.view_headline,
        size: 25.0,
      ),
    ),
  ];

  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(vsync: this, length: bottomTabs.length);
  }

  @override
  void dispose() {
    super.dispose();
    tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: Scaffold(
          appBar: HomePageAppBar(
            bottomTabs: bottomTabs,
            tabController: tabController,
          ),
          body: TabBarView(
            controller: tabController,
            children: [
              HomePageBody(),
              Image(image: AssetImage('images/post_section/9gag_profile.png')),
              Container(),
              Container(),
              Container(),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
