import 'package:flutter/material.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class CreateButton extends StatelessWidget {
  const CreateButton({super.key, required this.onTap});

  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: const ShapeDecoration(
          color: Colors.lightBlue,
          shape: StadiumBorder(),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Icon(
              Icons.add_rounded,
              color: Colors.white,
            ),
            const SizedBox(width: 4),
            Text(
              '新しく作成する',
              style: TextStyles.b16.copyWith(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
