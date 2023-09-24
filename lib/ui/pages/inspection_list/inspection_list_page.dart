import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';
import 'package:inspection_app/ui/pages/inspection_list/children/create_button.dart';

import 'children/inspection_list_item.dart';

class InspectionListPage extends HookConsumerWidget {
  const InspectionListPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: const PrimaryAppBar(title: ''),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return InspectionListItem(
            key: ValueKey(index),
            onTap: () => Navigator.of(context).push(InspectionPage.route()),
          );
        },
        separatorBuilder: (context, index) {
          return Container(
            height: 0.5,
            width: double.infinity,
            color: Colors.grey,
          );
        },
      ),
      floatingActionButton: CreateButton(
        onTap: () => Navigator.of(context).push(InspectionPage.route()),
      ),
    );
  }
}
