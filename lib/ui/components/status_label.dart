import 'package:flutter/material.dart';
import 'package:inspection_app/data/entities/status.dart';

import 'text_styles.dart';

class StatusLabel extends StatelessWidget {
  const StatusLabel({super.key, required this.status});
  final Status status;

  @override
  Widget build(BuildContext context) {
    return Text(
      status == Status.complete ? '● 入力完了' : '● 未入力の項目',
      style: TextStyles.b10.copyWith(
        color: status == Status.complete
            ? Colors.blueAccent
            : const Color(0xFFFFC107),
      ),
    );
  }
}
