import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/components/text_styles.dart';
import 'package:inspection_app/ui/pages/inspection/sections/balcony_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/ceiling_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/inner_wall_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/roof_frame_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/roof_section.dart';

import 'children/section_title.dart';
import 'sections/address_section.dart';
import 'sections/context_section.dart';
import 'sections/detail_section.dart';
import 'sections/foundation_section.dart';
import 'sections/image_section.dart';
import 'sections/outer_wall_section.dart';
import 'sections/overview_section.dart';
import 'sections/repairing_section.dart';

class InspectionPage extends HookConsumerWidget {
  const InspectionPage({super.key});

  static CupertinoPageRoute route() => CupertinoPageRoute(
        builder: (_) => const InspectionPage(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PrimaryAppBar(
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '削除',
              style: TextStyles.n16.copyWith(color: Colors.red),
            ),
          ),
          TextButton(
            onPressed: () {},
            child: Text(
              'PDF',
              style: TextStyles.n16.copyWith(color: Colors.blue),
            ),
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top + kToolbarHeight + 16,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        children: [
          const SectionTitle(title: '基本情報'),
          const SizedBox(height: 16),
          const OverviewSection(),
          const SizedBox(height: 16),
          const AddressSection(),
          const SizedBox(height: 16),
          const DetailSection(),
          const SizedBox(height: 16),
          const ContextSection(),
          const SizedBox(height: 16),
          const RepairingSection(),
          const SizedBox(height: 16),
          const ImageSection(),
          const SizedBox(height: 32),
          const SectionTitle(title: '外回りの調査'),
          const SizedBox(height: 16),
          const FoundationSection(),
          const SizedBox(height: 16),
          const OuterWallSection(),
          const SizedBox(height: 16),
          const RoofSection(),
          const SizedBox(height: 32),
          const SectionTitle(title: '室内の調査'),
          const SizedBox(height: 16),
          const BalconySection(),
          const SizedBox(height: 16),
          const InnerWallSection(),
          const SizedBox(height: 16),
          const CeilingSection(),
          const SizedBox(height: 16),
          const RoofFrameSection(),
          SizedBox(height: MediaQuery.paddingOf(context).bottom),
        ],
      ),
    );
  }
}
