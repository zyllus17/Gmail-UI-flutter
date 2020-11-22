import 'package:flutter/material.dart';
import 'package:screen/responsive/orientation_layout.dart';
import 'package:screen/responsive/screen_type_layout.dart';
import 'package:screen/views/home/tablet_view/portrait_view/tablet_view_portrait.dart';
import 'mobile_view/landscape_view/mobile_view_landscape.dart';
import 'mobile_view/portrait_view/mobile_view_portrait.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: OrientationLayout(
        portrait: HomeMobilePortrait(),
        landscape: HomeMobileLandscape(),
      ),
      tablet: HomeViewTablet(),
    );
  }
}
