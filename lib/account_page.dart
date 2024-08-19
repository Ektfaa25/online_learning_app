import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

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
    );
  }
}
