import 'package:flutter/material.dart';
import 'package:project_gps_system/student/dashboard.dart';
import 'package:project_gps_system/student/reports.dart';
import 'package:project_gps_system/student/profile.dart';
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
  Widget _selectedPage = const DashboardPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          _selectedPage,
          CustomBottomNavigationBar(
            pagesList: _pagesList,
            selectedPage: _selectedPage,
            selectedIndex: 0,
            changePage: (page) => setState(
              () => _selectedPage = page,
            ),
          ),
        ],
      ),
    );
  }
}
