import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;
  const CustomButton({super.key, required this.title, this.onTap});

  // const CustomButton({
  //   super.key,
  // });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(100),
        ),

        child: Text(title, style: TextStyle(color: Colors.white)),
      ),
    );
  }
}