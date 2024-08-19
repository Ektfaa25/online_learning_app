import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(120),
          child: Container(
            width: 100,
            height: 100,
            color: const Color(0xffFFEBF0),
          ),
        ),
        Container(
          child: Positioned(
            bottom: -10,
            child: Image.asset(
              "assets/avva.png",
              width: 80,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 75,
          left: 73,
          right: 0,
          child: Container(
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              border: Border.all(
                  style: BorderStyle.solid, width: 1, color: Colors.white),
              color: const Color(0xff3D5CFF),
            ),
            child: const Icon(
              Icons.camera_alt,
              color: Colors.white,
              size: 14,
            ),
          ),
        ),
      ],
    );
  }
}
