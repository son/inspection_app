import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/pages/inspection/children/menu_button.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class OuterWallSection extends HookConsumerWidget {
  const OuterWallSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Section(
      title: '外壁',
      actions: [
        MenuButton(
          onTapAllPassed: () {
            print('sss');
          },
          onTapNotApplicable: () {
            print('sss');
          },
        ),
      ],
      children: [
        SectionItem(
          axis: Axis.vertical,
          title: 'aaaaaa',
          child: Container(height: 60),
        ),
      ],
    );
  }
}
