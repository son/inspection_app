import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../components/text_styles.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.blue, width: 1),
          color: Colors.white,
        ),
        height: 30,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Text(
              title,
              style: TextStyles.b12.copyWith(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
