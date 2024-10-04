import 'package:flutter/material.dart';

class Dividerwidget extends StatelessWidget {
  const Dividerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 56),
      child: Divider(
        thickness: 2,
        indent: 60,
        endIndent: 200,
        color: Color(0xffF8F8F8),
      ),
    );
  }
}
