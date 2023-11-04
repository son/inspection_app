import 'package:flutter/material.dart';
import 'package:inspection_app/data/utils/list.dart';
import 'package:inspection_app/ui/components/text_styles.dart';

class PrimaryCheckList extends StatelessWidget {
  const PrimaryCheckList({
    super.key,
    required this.all,
    required this.selecteds,
    required this.onSelect,
  });

  final Set<String> all;
  final Set<String> selecteds;
  final Function(Set<String>) onSelect;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: all
          .map<Widget>((title) => _Item(
                title: title,
                selected: selecteds.contains(title),
                onTap: () {
                  selecteds.contains(title)
                      ? onSelect({...selecteds}..remove(title))
                      : onSelect({...selecteds, title});
                },
              ))
          .toList()
          .interleave(Container(
            height: 0.3,
            width: double.infinity,
            color: Colors.white,
          )),
    );
  }
}

class _Item extends StatelessWidget {
  const _Item({
    required this.title,
    required this.selected,
    required this.onTap,
  });

  final String title;
  final bool selected;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.translucent,
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          children: [
            Icon(
              selected ? Icons.check_circle_rounded : Icons.circle_outlined,
              color: selected ? Colors.blue : Colors.grey,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(
              title,
              style: TextStyles.n14,
            ),
          ],
        ),
      ),
    );
  }
}
