import 'package:flutter/material.dart';

class BottomNavBarWidget extends StatelessWidget {
  BottomNavBarWidget({
    super.key,
  });
  int _selectedIndex = 4;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      unselectedLabelStyle: const TextStyle(
        fontFamily: "Poppins",
        fontSize: 14,
        color: Color(0xffB8B8D2),
      ),
      backgroundColor: const Color(0xff1F1F39),
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
          ),
          label: "home",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.book,
          ),
          label: "Courses",
        ),
        BottomNavigationBarItem(
          icon: Column(
            children: [
              CircleAvatar(
                backgroundColor: Color.fromARGB(239, 29, 34, 64),
                radius: 30,
                child: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                "Search",
                style: TextStyle(
                  color: Color(0xffB8B8D2),
                ),
              )
            ],
          ),
          label: "",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
          ),
          label: "Message",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.person,
          ),
          label: "Acoount",
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: const Color(0xff3D5CFF),
      unselectedItemColor: const Color(0xffB8B8D2),
      iconSize: 30,
    );
  }
}
