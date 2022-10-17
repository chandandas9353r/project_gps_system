import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  List<Widget> pagesList = [];
  List<String> dataList = [];
  List<IconData> iconsList = [];
  List<IconData> selectedIconsList = [];
  Widget selectedPage;
  Function(Widget) changePage;
  CustomBottomNavigationBar({
    required this.pagesList,
    required this.dataList,
    required this.iconsList,
    required this.selectedIconsList,
    required this.selectedPage,
    required this.changePage,
    super.key,
  });
  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  Widget buildNavBar(int index) {
    return Container(
      width: MediaQuery.of(context).size.width / widget.pagesList.length,
      margin: (_selectedIndex == index)
          ? const EdgeInsets.only(bottom: 8.0)
          : const EdgeInsets.only(bottom: 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                _selectedIndex = index;
                widget.selectedPage = widget.pagesList[index];
                widget.changePage(widget.selectedPage);
              });
            },
            child: Container(
              padding: const EdgeInsets.all(5.0),
              decoration: (_selectedIndex == index)
                  ? BoxDecoration(
                      color: (_selectedIndex == index)
                          ? Colors.yellow.shade700
                          : Colors.transparent,
                      shape: BoxShape.circle,
                    )
                  : const BoxDecoration(),
              child: Icon(
                (_selectedIndex == index)
                    ? widget.selectedIconsList[index]
                    : widget.iconsList[index],
                size: 20,
                color: (_selectedIndex == index)
                    ? Colors.white
                    : Colors.grey.shade400,
              ),
            ),
          ),
          if (_selectedIndex == index)
            Text(
              widget.dataList[index],
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
    List<Widget> _itemsList = [];
    for (int i = 0; i < widget.pagesList.length; i++) {
      _itemsList.add(buildNavBar(i));
    }
    return Row(children: _itemsList);
  }
}
