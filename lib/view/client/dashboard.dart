import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:saloon_booking/colors/colors.dart';
import 'package:saloon_booking/view/client/home/home.dart';
import 'package:saloon_booking/view/client/profile/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 3,
      child: Scaffold(
          body: TabBarView(
            children: [
              Home(),
              Center(
                child: Text('2'),
              ),
              Profile()
            ],
          ),
          bottomNavigationBar: TabBar(
            indicatorWeight: 2,
            automaticIndicatorColorAdjustment: true,
            // indicator: BoxDecoration(shape: BoxShape.circle),
            indicatorSize: TabBarIndicatorSize.tab,
            indicatorColor: Colors.red,

            tabs: [
              Tab(
                icon: Icon(
                  Icons.home_filled,
                  color: Colors.black12,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.assistant_navigation,
                  color: Colors.black12,
                ),
              ),
              Tab(
                icon: Icon(
                  Icons.person,
                  color: Colors.black12,
                ),
              ),
            ],
          )),
    );
  }
}
