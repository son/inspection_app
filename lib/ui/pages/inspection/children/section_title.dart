import 'package:flutter/material.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 16),
      child: Text(
        title,
        style: TextStyles.b14.copyWith(color: Colors.black54),
      ),
    );
  }
}
