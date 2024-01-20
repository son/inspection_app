import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/data/entities/earthquake_resistant/earthquake_resistant.dart';
import 'package:inspection_app/data/entities/selection_item/selection_item.dart';
import 'package:inspection_app/data/providers/inspection_provider.dart';
import 'package:inspection_app/ui/components/dropdown_field.dart';
import 'package:inspection_app/ui/components/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/photo_captions_item.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';
import 'package:inspection_app/ui/pages/inspection/inspection_page.dart';

class EarthquakeResistantSection extends HookConsumerWidget {
  const EarthquakeResistantSection({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useAutomaticKeepAlive();
    final id = ref.watch(inspectionIdProvider);
    final inspection = ref.watch(inspectionProvider(id));
    final controller = ref.read(inspectionProvider(id).notifier);

    return Section(
      title: '耐震性に関する書類の確認',
      complete: inspection.earthquakeResistant.complete,
      children: [
        SectionItem(
          title: '確認方法',
          incomplete: inspection.earthquakeResistant.confirmationMethod == null,
          child: DropdownField<ConfirmationMethod>(
            value: SelectionItem.orNull(
              value: inspection.earthquakeResistant.confirmationMethod,
              name: inspection.earthquakeResistant.confirmationMethod?.label,
            ),
            all: ConfirmationMethod.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (confirmationMethod) {
              final earthquakeResistant = inspection.earthquakeResistant
                  .copyWith(confirmationMethod: confirmationMethod);
              controller.updateEarthquakeResistant(earthquakeResistant);
            },
          ),
        ),
        SectionItem(
          title: '書類',
          incomplete: inspection.earthquakeResistant.certificate == null,
          child: DropdownField<Certificate>(
            value: SelectionItem.orNull(
              value: inspection.earthquakeResistant.certificate,
              name: inspection.earthquakeResistant.certificate?.label,
            ),
            all: Certificate.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (certificate) {
              final earthquakeResistant = inspection.earthquakeResistant
                  .copyWith(certificate: certificate);
              controller.updateEarthquakeResistant(earthquakeResistant);
            },
          ),
        ),
        SectionItem(
          title: '発行者',
          incomplete: inspection.earthquakeResistant.issuer == null,
          child: DropdownField<Issuer>(
            value: SelectionItem.orNull(
              value: inspection.earthquakeResistant.issuer,
              name: inspection.earthquakeResistant.issuer?.label,
            ),
            all: Issuer.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (issuer) {
              final earthquakeResistant =
                  inspection.earthquakeResistant.copyWith(issuer: issuer);
              controller.updateEarthquakeResistant(earthquakeResistant);
            },
          ),
        ),
        SectionItem(
          title: '安全上耐震関係規定に準ずる基準',
          incomplete: inspection.earthquakeResistant.regulation == null,
          child: DropdownField<EarthquakeProofSafetyRegulation>(
            value: SelectionItem.orNull(
              value: inspection.earthquakeResistant.regulation,
              name: inspection.earthquakeResistant.regulation?.label,
            ),
            all: EarthquakeProofSafetyRegulation.values
                .map((value) => SelectionItem(
                      value: value,
                      name: value.label,
                    ))
                .toList(),
            onSelect: (regulation) {
              final earthquakeResistant = inspection.earthquakeResistant
                  .copyWith(regulation: regulation);
              controller.updateEarthquakeResistant(earthquakeResistant);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          title: '備考',
          child: PrimaryTextField(
            textAlign: TextAlign.start,
            maxLines: 100,
            initialText: inspection.earthquakeResistant.remarks ?? '',
            onChange: (text) {
              final earthquakeResistant =
                  inspection.earthquakeResistant.copyWith(remarks: text);
              controller.updateEarthquakeResistant(earthquakeResistant);
            },
          ),
        ),
        SectionItem(
          axis: Axis.vertical,
          child: PhotoCaptionsItem(
            photos: inspection.earthquakeResistant.photos,
            onChange: (photos) {
              final earthquakeResistant =
                  inspection.earthquakeResistant.copyWith(
                photos: [...photos],
              );
              controller.updateEarthquakeResistant(earthquakeResistant);
            },
            onTapAdd: (paths) async {
              final news = await controller.createNewPhotos(paths);
              final earthquakeResistant =
                  inspection.earthquakeResistant.copyWith(
                photos: [...inspection.earthquakeResistant.photos, ...news],
              );
              controller.updateEarthquakeResistant(earthquakeResistant);
            },
            onTapDelete: (photo) async {
              final news = inspection.earthquakeResistant.photos
                  .whereNot((p) => p.image == photo.image)
                  .toList();
              final earthquakeResistant =
                  inspection.earthquakeResistant.copyWith(photos: [...news]);
              controller.updateEarthquakeResistant(earthquakeResistant);
              await controller.deletePhoto(photo);
            },
          ),
        ),
      ],
    );
  }
}
