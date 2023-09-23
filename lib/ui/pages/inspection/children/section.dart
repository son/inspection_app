import 'package:flutter/material.dart';
import 'package:inspection_app/list.dart';
import 'package:inspection_app/text_styles.dart';

class Section extends StatelessWidget {
  const Section({super.key, required this.title, required this.children});
  final String title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16),
          child: Text(
            title,
            style: TextStyles.n12.copyWith(color: Colors.grey),
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.only(left: 16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: Colors.white,
          ),
          width: double.infinity,
          child: Column(
            children: children.interleave(
              Container(
                height: 0.5,
                width: double.infinity,
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
