// ignore_for_file: use_build_context_synchronously

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/providers/inspection_list_provider.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/menu_tap_gesture.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/components/round_button.dart';
import 'package:inspection_app/ui/pages/inspection/sections/ant_damage_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/balcony_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/base_and_floor_framing_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/ceiling_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/concrete_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/corrosion_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/floor_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/inner_wall_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/lifeline_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/pillar_and_beam_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/piping_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/rebar_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/roof_frame_section.dart';
import 'package:inspection_app/ui/pages/inspection/sections/roof_section.dart';
import 'package:line_icons/line_icons.dart';

import 'children/menu_button.dart';
import 'children/section_title.dart';
import 'sections/address_section.dart';
import 'sections/context_section.dart';
import 'sections/detail_section.dart';
import 'sections/earthquake_resistant_section.dart';
import 'sections/foundation_section.dart';
import 'sections/image_section.dart';
import 'sections/outer_wall_section.dart';
import 'sections/overview_section.dart';
import 'sections/repairing_section.dart';

final inspectionIdProvider = Provider<String>(
  (ref) => throw UnimplementedError(),
);

class InspectionPage extends HookConsumerWidget {
  const InspectionPage({super.key, required this.inspectionId});

  final String inspectionId;

  static CupertinoPageRoute route({
    required String inspectionId,
  }) =>
      CupertinoPageRoute(
        builder: (_) => InspectionPage(inspectionId: inspectionId),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = ref.read(inspectionListProvider.notifier);
    final scrollController = useScrollController();

    useOnAppLifecycleStateChange((_, state) async {
      if (![AppLifecycleState.inactive, AppLifecycleState.detached]
          .contains(state)) {
        return;
      }
      final inspection = ref.read(inspectionProvider(inspectionId));
      await controller.updateInspection(inspection);
    });

    return WillPopScope(
      onWillPop: () async {
        final inspection = ref.read(inspectionProvider(inspectionId));
        await controller.updateInspection(inspection);
        return true;
      },
      child: ProviderScope(
        overrides: [
          inspectionIdProvider.overrideWithValue(inspectionId),
        ],
        child: Scaffold(
          extendBodyBehindAppBar: true,
          appBar: PrimaryAppBar(
            actions: [
              MenuTapGesture(
                items: [
                  MenuItem(
                    icon: const Icon(LineIcons.pdfFile),
                    title: 'PDF で出力',
                    onTap: () async {},
                  ),
                  MenuItem(
                    icon: const Icon(LineIcons.fileCsv),
                    title: 'CSV で出力',
                    onTap: () async {},
                  ),
                  MenuItem(
                    icon: const Icon(EvaIcons.gridOutline),
                    title: 'xlsx で出力',
                    onTap: () async {},
                  ),
                ],
                child: RoundButton(
                  title: 'データ出力',
                  textColor: Colors.blueAccent,
                  backgroundColor: Colors.white,
                  borderColor: Colors.black12,
                  onTap: () {},
                ),
              ),
              const SizedBox(width: 8),
              const MenuButton(),
              const SizedBox(width: 16),
            ],
          ),
          body: Scrollbar(
            controller: scrollController,
            child: ListView(
              controller: scrollController,
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
                SizedBox(height: 32),
                SectionTitle(title: '設備の調査'),
                SizedBox(height: 16),
                PipingSection(),
                SizedBox(height: 16),
                LifelineSection(),
                SizedBox(height: 32),
                SectionTitle(title: 'その他の調査'),
                SizedBox(height: 16),
                RebarSection(),
                SizedBox(height: 16),
                ConcreteSection(),
                SizedBox(height: 16),
                EarthquakeResistantSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
