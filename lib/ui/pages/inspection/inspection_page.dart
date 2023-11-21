import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/components/text_styles.dart';
import 'package:inspection_app/ui/pages/inspection/sections/ant_damage_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/balcony_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/base_and_floor_framing_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/ceiling_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/corrosion_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/floor_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/inner_wall_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/pillar_and_beam_section.dart';
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
          bottom: MediaQuery.paddingOf(context).bottom + 16,
        ),
        children: const [
          SectionTitle(title: '基本情報'),
          SizedBox(height: 16),
          OverviewSection(),
          SizedBox(height: 16),
          AddressSection(),
          SizedBox(height: 16),
          DetailSection(),
          SizedBox(height: 16),
          ContextSection(),
          SizedBox(height: 16),
          RepairingSection(),
          SizedBox(height: 16),
          ImageSection(),
          SizedBox(height: 32),
          SectionTitle(title: '外回りの調査'),
          SizedBox(height: 16),
          FoundationSection(),
          SizedBox(height: 16),
          OuterWallSection(),
          SizedBox(height: 16),
          RoofSection(),
          SizedBox(height: 32),
          SectionTitle(title: '室内の調査'),
          SizedBox(height: 16),
          BalconySection(),
          SizedBox(height: 16),
          InnerWallSection(),
          SizedBox(height: 16),
          CeilingSection(),
          SizedBox(height: 16),
          RoofFrameSection(),
          SizedBox(height: 16),
          PillarAndBeamSection(),
          SizedBox(height: 16),
          BaseAndFloorFramingSection(),
          SizedBox(height: 16),
          FloorSection(),
          SizedBox(height: 16),
          AntDamageSection(),
          SizedBox(height: 16),
          CorrosionSection(),
        ],
      ),
    );
  }
}
