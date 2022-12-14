import 'package:flutter/material.dart';

class ItemMenuBottom extends StatelessWidget {
  final IconData icon;
  final String text;
  const ItemMenuBottom({Key? key, required this.icon, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
        child: Container(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(icon),
                Text(text, style: TextStyle(
                  fontSize: 13
                ),)
              ],
            ),
          ),
          width: MediaQuery.of(context).size.width * 0.22,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white24
          ),
        )
    );
  }
}
