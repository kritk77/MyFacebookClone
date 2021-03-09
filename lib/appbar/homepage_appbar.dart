import 'package:flutter/material.dart';
import 'package:facebook_clone_app/appbar/appbar_actions.dart';
import 'package:facebook_clone_app/constants.dart';
import 'package:flutter/cupertino.dart';

class HomePageAppBar extends StatefulWidget implements PreferredSizeWidget {
  final List<Tab> bottomTabs;
  final TabController tabController;

  HomePageAppBar({this.bottomTabs, this.tabController});

  @override
  Size get preferredSize => new Size.fromHeight(kToolbarHeight2);

  @override
  _HomePageAppBarState createState() => _HomePageAppBarState();
}

class _HomePageAppBarState extends State<HomePageAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: kToolbarHeight2,
      backgroundColor: Colors.white,
      title: Text(
        'facebook',
        style: kTitleTextStyleRoboto,
      ),
      actions: [
        AppBarAction(
          actionIcon: CupertinoIcons.search,
        ),
        AppBarAction(
          actionIcon: Icons.textsms_outlined,
        ),
      ],
      flexibleSpace: SizedBox(
        height: 100.0,
      ),
      bottom: TabBar(
        controller: widget.tabController,
        labelColor: kActiveAppBarBottomColor,
        unselectedLabelColor: kInactiveAppBarBottomColor,
        tabs: widget.bottomTabs,
      ),
    );
  }
}
