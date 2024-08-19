import 'package:flutter/material.dart';

class ListWidget extends StatelessWidget {
  const ListWidget({
    super.key,
    required this.categories,
  });

  final List categories;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(
              categories[index],
              style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                  color: Colors.white),
            ),
            trailing: const Icon(
              color: Color(0xff858597),
              Icons.arrow_forward_ios,
              size: 14,
            ),
          );
        },
      ),
    );
  }
}
