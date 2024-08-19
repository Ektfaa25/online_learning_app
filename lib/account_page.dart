import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:online_learning_app/avatar_widget.dart';
import 'package:online_learning_app/bottom_nav_bar_widget.dart';
import 'package:online_learning_app/list_widget.dart';

import 'list_data.dart';

class AccountPage extends StatelessWidget {
  AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: const Color(0xff1F1F39),
      appBar: AppBar(
        
        systemOverlayStyle: SystemUiOverlayStyle(

        ),
        centerTitle: false,
        backgroundColor: const Color(0xff1F1F39),
        title: const Text(
          "Account",
          style: const TextStyle(
              fontFamily: "Poppins",
              fontWeight: FontWeight.w700,
              color: Colors.white),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const AvatarWidget(),
            ListWidget(categories: categories),
            BottomNavBarWidget()
          ],
        ),
      ),
    );
  }
}
