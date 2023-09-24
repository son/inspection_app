import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:inspection_app/text_styles.dart';
import 'package:inspection_app/ui/components/primary_app_bar.dart';
import 'package:inspection_app/ui/pages/inspection/children/primary_text_field.dart';
import 'package:inspection_app/ui/pages/inspection/children/section.dart';
import 'package:inspection_app/ui/pages/inspection/children/section_item.dart';

class InspectionPage extends HookConsumerWidget {
  const InspectionPage({super.key});

  static CupertinoPageRoute route() => CupertinoPageRoute(
        builder: (_) => const InspectionPage(),
      );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: const Color(0xFFF2F7FF),
      appBar: PrimaryAppBar(
        title: '',
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              '削除',
              style: TextStyles.n16.copyWith(color: Colors.red),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.only(
          top: MediaQuery.paddingOf(context).top + kToolbarHeight + 16,
          left: 16,
          right: 16,
          bottom: 16,
        ),
        child: Column(
          children: [
            Section(
              title: '調査物件情報',
              children: [
                SectionItem(
                  title: '物件番号',
                  child: PrimaryTextField(
                    hintText: '入力すると報告書の全ページ左上に表示されます',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '建物名称',
                  child: Row(
                    children: [
                      Expanded(
                        child: PrimaryTextField(
                          hintText: '建物名称',
                          onChange: (text) {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '様邸',
                        style: TextStyles.n14,
                      ),
                    ],
                  ),
                ),
                SectionItem(
                  title: '調査依頼主',
                  child: PrimaryTextField(
                    hintText: '会社名・担当者名',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '調査立合者',
                  child: PrimaryTextField(
                    hintText: '会社名・担当者名',
                    onChange: (text) {},
                  ),
                ),
              ],
            ),
            const SizedBox(height: 16),
            Section(
              title: '物件所在地',
              children: [
                SectionItem(
                  title: '住所標記方法',
                  child: PrimaryTextField(
                    hintText: '',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '郵便番号',
                  child: PrimaryTextField(
                    hintText: 'xxx-xxxx',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '都道府県',
                  child: PrimaryTextField(
                    hintText: 'xx県',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '市区町村・番地',
                  child: PrimaryTextField(
                    hintText: '市区町村　番地',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '建物名',
                  child: PrimaryTextField(
                    hintText: 'マンションなどの名称',
                    onChange: (text) {},
                  ),
                ),
                SectionItem(
                  title: '部屋番号',
                  child: Row(
                    children: [
                      Expanded(
                        child: PrimaryTextField(
                          hintText: '',
                          onChange: (text) {},
                        ),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '号室',
                        style: TextStyles.n14,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 1000),
          ],
        ),
      ),
    );
  }
}
