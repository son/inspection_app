import 'package:flutter/material.dart';

import 'text_styles.dart';

class RoundButton extends StatelessWidget {
  const RoundButton({
    Key? key,
    required this.title,
    this.textColor = Colors.white,
    this.backgroundColor = Colors.blueAccent,
    this.borderColor,
    this.icon,
    this.isEnable = true,
    required this.onTap,
  }) : super(key: key);

  final String title;
  final Color textColor;
  final Color backgroundColor;
  final Color? borderColor;
  final Widget? icon;
  final bool isEnable;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => isEnable ? onTap() : null,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            height: 40,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(
                color: borderColor ?? backgroundColor,
                width: 1,
              ),
            ),
            child: Row(
              children: [
                if (icon != null) icon!,
                if (icon != null) const SizedBox(width: 4),
                Text(
                  title,
                  style: TextStyles.b16.copyWith(
                    color: textColor,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
