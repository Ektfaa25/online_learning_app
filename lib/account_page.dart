import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});
  List<String> Categories = [
    'Favorite',
    'Edit Account',
    'Settings and Privacy',
    'Help'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff1F1F39),
      appBar: AppBar(
        backgroundColor: const Color(0xff1F1F39),
        automaticallyImplyLeading: false,
        title: const Text('Account',
            style: TextStyle(
                fontFamily: 'poppins',
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.w700)),
        centerTitle: false,
      ),
      body: Center(
        child: Column(
          children: [
            Stack(
              children: [
                const CircleAvatar(
                  radius: 40,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    padding: const EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: const Color(0xff3D5CFF),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Icon(Icons.camera_alt,
                        color: Colors.white, size: 16),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 10,
                  left: 10,
                  top: 10,
                  child: Image.asset('assets/avva.png'),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: Categories.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    title: Text(Categories[index],
                        style: const TextStyle(
                            fontFamily: 'poppins',
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                    trailing: const Icon(Icons.arrow_forward_ios,
                        color: Color(0xff858597), size: 14),
                  );
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        backgroundColor: const Color(0xff1F1F39),
        unselectedItemColor: const Color(0xff858597),
        unselectedLabelStyle: const TextStyle(
            fontFamily: 'poppins',
            color: Color(0xff858597),
            fontSize: 11,
            fontWeight: FontWeight.w500),
        selectedItemColor: Color(0xff858597),
        selectedLabelStyle: const TextStyle(
            fontFamily: 'poppins',
            color: Color(0xff858597),
            fontSize: 11,
            fontWeight: FontWeight.w500),
        iconSize: 24,
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Color(0xff858597),
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.book,
              color: Color(0xff858597),
            ),
            label: 'Course',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 40,
              color: Color(0xff858597),
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.message,
              color: Color(0xff858597),
            ),
            label: 'Message',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person,
              color: Color(0xff858597),
            ),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
