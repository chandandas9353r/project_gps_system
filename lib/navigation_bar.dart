import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  Widget selectedPage;
  int selectedIndex;
  List<Widget> pagesList;
  Function(Widget) changePage;
  CustomBottomNavigationBar({
    required this.pagesList,
    required this.selectedPage,
    required this.selectedIndex,
    required this.changePage,
    super.key,
  });
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  List<Widget> _pagesList = [];
  @override
  void initState() {
    super.initState();
    setState(() {
      _selectedIndex = widget.selectedIndex;
      _pagesList = widget.pagesList;
    });
  }

  Widget buildNavBar(int index, IconData icon, String data) {
    return Container(
      margin: (_selectedIndex==index)
          ? const EdgeInsets.only(bottom: 5.0)
          : const EdgeInsets.only(bottom: 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () => setState(() {
              _selectedIndex = index;
              widget.selectedPage = _pagesList[index];
              widget.changePage(widget.selectedPage);
            }),
            child: Container(
              padding: const EdgeInsets.all(10.0),
              decoration: (_selectedIndex==index)
                  ? BoxDecoration(
                      color: (_selectedIndex==index)
                          ? Colors.yellow.shade700
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    )
                  : const BoxDecoration(),
              child: Icon(
                icon,
                size: 20,
                color: (_selectedIndex==index)
                    ? Colors.white
                    : Colors.grey.shade400,
              ),
            ),
          ),
          if (_selectedIndex==index)
            Text(
              data,
              style: const TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildNavBar(0, Icons.home_outlined, "Home"),
        buildNavBar(1, Icons.analytics_outlined, "Performance"),
        buildNavBar(2, Icons.person_outline, "Profile"),
      ],
    );
  }
}
