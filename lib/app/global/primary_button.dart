import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  PrimaryButton({
    required this.onPressed,
    required this.title,
  });

  final void Function() onPressed;
  final String title;
  //final VoidCallback? onPressed;
  //final Color? colorTitle;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: double.infinity,
        height: 60.0,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          gradient: LinearGradient(
            colors: [Colors.red, Colors.pink],
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle1
              ?.copyWith(fontWeight: FontWeight.bold, color: Colors.white),
        ),
      ),
    );
  }
}
