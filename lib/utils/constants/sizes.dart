
import 'package:flutter/material.dart';

class Psizes {
  //pading and margin sizes
  static const double x5 = 4.0; 
  static const double sm = 8.0;
  static const double md = 16.0;
  static const double lg = 24.0;
  static const double xl = 32.0;

  // icon sizes
  static const double iconXs = 12.0;
  static const double iconSm = 16.0;
  static const double iconLg = 24.0;
  static const double iconXl = 32.0;

  //font size
  static const double fontSizeXSm = 12.0;
  static const double fontSizeSm = 14.0;
  static const double fontSizeMd = 16.0;
  static const double fontSizeLg = 18.0;
  static const double fontSizeXLg = 24.0;
  static const double fontSizeXXLg = 32.0;

  //slider size value
  static const double sliaderSize = 12.0;

  //button sizes
  static const double bottonHeight = 18.0;
  static const double bottonRadius = 12.0;
  static const double bottonWidth = 120.0;

  // app bar height
  static const double appBarHeight = 56.0;

  //images sizes 
  static const double imageThumbSize = 80.0;

  // default spacing between section 
  static const double defaultSpace = 24.0;
  static const double spaceBtwItems = 16.0;
  static const double spaceBtwSections = 32.0;

  //border radius 
  static const double borderRadiusSm = 8.0;
  static const double borderRadiusMd = 12.0;
  static const double borderRadiusLg = 14.0;
  static const double borderRadiusXLg = 16.0;

  // Divider height
  static const double dividerHeight = 1.0;

  // input field
  static const double inputFieldRadius =12.0;
  static const double spaceBetweenInputFields =16.0;

  //card sizes
  static const double cardRadiusLg =16.0;
  static const double cardRadiusMd =12.0;
  static const double cardRadiusSm =18.0;
  static const double cardRadiusXs =6.0;
  static const double cardElevation =2.0;

  //Image Carousel Height
  static const double imageCarouselHeight =200.0;

  // Loading indicator size
  static const double loadingIndicatorSize = 36.0;

  // Grid view spacing
  static const double gridViewSpacing = 16.0;

  // Elevated Button Size
  static const double elevatedButtonSize = 40.0;

  // default EdgeInsets.only padding
  static EdgeInsets defaultPaddingOnly() {
    return const EdgeInsets.only(
      left: Psizes.defaultSpace,
      right: Psizes.defaultSpace,
      bottom: Psizes.defaultSpace
    );
  }

  static EdgeInsets defaultPaddingOnly2() {
    return const EdgeInsets.only(
      left: 10,
      right: 10,
      bottom: 5
    );
}
}