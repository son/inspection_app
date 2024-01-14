import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class ListSkeleton extends StatelessWidget {
  const ListSkeleton({super.key, required this.padding});
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return Skeletonizer.bones(
      child: ListView(
        padding: padding,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            child: const ListTile(
              leading: Bone.circle(size: 24),
              title: Bone.text(words: 2),
            ),
          ),
          const SizedBox(height: 16),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(8),
              ),
            ),
            child: const ListTile(
              title: Bone.text(words: 2),
              subtitle: Bone.text(),
              trailing: Bone.icon(),
            ),
          ),
          const ListTile(
            tileColor: Colors.white,
            title: Bone.text(words: 2),
            subtitle: Bone.text(),
            trailing: Bone.icon(),
          ),
          const ListTile(
            tileColor: Colors.white,
            title: Bone.text(words: 2),
            subtitle: Bone.text(),
            trailing: Bone.icon(),
          ),
          const ListTile(
            tileColor: Colors.white,
            title: Bone.text(words: 2),
            subtitle: Bone.text(),
            trailing: Bone.icon(),
          ),
          const ListTile(
            tileColor: Colors.white,
            title: Bone.text(words: 2),
            subtitle: Bone.text(),
            trailing: Bone.icon(),
          ),
          const ListTile(
            tileColor: Colors.white,
            title: Bone.text(words: 2),
            subtitle: Bone.text(),
            trailing: Bone.icon(),
          ),
          Container(
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(8),
              ),
            ),
            child: const ListTile(
              title: Bone.text(words: 2),
              subtitle: Bone.text(),
              trailing: Bone.icon(),
            ),
          ),
        ],
      ),
    );
  }
}
