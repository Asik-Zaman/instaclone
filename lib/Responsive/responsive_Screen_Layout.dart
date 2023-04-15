import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:instaclone/Utils/dimension.dart';

class ResponsiveScreenLayout extends StatelessWidget {
  final Widget mobileScreenLayout;
  final Widget webScreenLayout;
  const ResponsiveScreenLayout(
      {required this.mobileScreenLayout, required this.webScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constrains) {
        if (constrains.maxWidth > webScreenMax) {
          return webScreenLayout;
        }
        return mobileScreenLayout;
      },
    );
  }
}
