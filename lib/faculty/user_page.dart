import 'package:flutter/material.dart';
import 'package:project_gps_system/faculty/dashboard.dart';
import 'package:project_gps_system/faculty/reports.dart';
import 'package:project_gps_system/faculty/profile.dart';
import 'package:project_gps_system/navigation_bar.dart';

class UserPage extends StatefulWidget {
  const UserPage({super.key});
  @override
  State<UserPage> createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  final List<Widget> _pagesList = const [
    DashboardPage(),
    ReportsPage(),
    ProfilePage(),
  ];
  final List<String> _dataList = [
    "Home",
    "Reports",
    "Profile",
  ];
  final List<IconData> _iconsList = [
    Icons.home_outlined,
    Icons.analytics_outlined,
    Icons.person_outline,
  ];
  final List<IconData> _selectedIconsList = [
    Icons.home,
    Icons.analytics,
    Icons.person,
  ];
  Widget _selectedPage = const DashboardPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _selectedPage,
          CustomBottomNavigationBar(
            pagesList: _pagesList,
            dataList: _dataList,
            iconsList: _iconsList,
            selectedIconsList: _selectedIconsList,
            selectedPage: _selectedPage,
            changePage: (page) => setState(
              () => _selectedPage = page,
            ),
          ),
        ],
      ),
    );
  }
}
