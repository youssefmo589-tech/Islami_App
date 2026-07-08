// dart format width=80

/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: deprecated_member_use,directives_ordering,implicit_dynamic_list_literal,unnecessary_import

import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart' as _svg;
import 'package:vector_graphics/vector_graphics.dart' as _vg;

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/ic_hadeth.svg
  SvgGenImage get icHadeth => const SvgGenImage('assets/icons/ic_hadeth.svg');

  /// File path: assets/icons/ic_radio.svg
  SvgGenImage get icRadio => const SvgGenImage('assets/icons/ic_radio.svg');

  /// File path: assets/icons/ic_sebha.svg
  SvgGenImage get icSebha => const SvgGenImage('assets/icons/ic_sebha.svg');

  /// File path: assets/icons/ic_time.svg
  SvgGenImage get icTime => const SvgGenImage('assets/icons/ic_time.svg');

  /// File path: assets/icons/quran.svg
  SvgGenImage get quran => const SvgGenImage('assets/icons/quran.svg');

  /// File path: assets/icons/verseicon.svg
  SvgGenImage get verseicon => const SvgGenImage('assets/icons/verseicon.svg');

  /// List of all assets
  List<SvgGenImage> get values => [
    icHadeth,
    icRadio,
    icSebha,
    icTime,
    quran,
    verseicon,
  ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/Background.png');

  /// File path: assets/images/Frame 3 (1).png
  AssetGenImage get frame31 =>
      const AssetGenImage('assets/images/Frame 3 (1).png');

  /// File path: assets/images/Frame 3 (2).png
  AssetGenImage get frame32 =>
      const AssetGenImage('assets/images/Frame 3 (2).png');

  /// File path: assets/images/Frame 3 (3).png
  AssetGenImage get frame33 =>
      const AssetGenImage('assets/images/Frame 3 (3).png');

  /// File path: assets/images/Frame 3 (4).png
  AssetGenImage get frame34 =>
      const AssetGenImage('assets/images/Frame 3 (4).png');

  /// File path: assets/images/Frame 3.png
  AssetGenImage get frame3 => const AssetGenImage('assets/images/Frame 3.png');

  /// File path: assets/images/Group 30.png
  AssetGenImage get group30 =>
      const AssetGenImage('assets/images/Group 30.png');

  /// File path: assets/images/Group 31.png
  AssetGenImage get group31 =>
      const AssetGenImage('assets/images/Group 31.png');

  /// File path: assets/images/Group 32.png
  AssetGenImage get group32 =>
      const AssetGenImage('assets/images/Group 32.png');

  /// File path: assets/images/Group 33.png
  AssetGenImage get group33 =>
      const AssetGenImage('assets/images/Group 33.png');

  /// File path: assets/images/Group 34.png
  AssetGenImage get group34 =>
      const AssetGenImage('assets/images/Group 34.png');

  /// File path: assets/images/SebhaBody 1.png
  AssetGenImage get sebhaBody1 =>
      const AssetGenImage('assets/images/SebhaBody 1.png');

  /// File path: assets/images/haddith.png
  AssetGenImage get haddith => const AssetGenImage('assets/images/haddith.png');

  /// File path: assets/images/ic_splash.png
  AssetGenImage get icSplash =>
      const AssetGenImage('assets/images/ic_splash.png');

  /// File path: assets/images/img_most_recent.png
  AssetGenImage get imgMostRecent =>
      const AssetGenImage('assets/images/img_most_recent.png');

  /// File path: assets/images/img_sur_number_frame.png
  AssetGenImage get imgSurNumberFrame =>
      const AssetGenImage('assets/images/img_sur_number_frame.png');

  /// File path: assets/images/quran.png
  AssetGenImage get quran => const AssetGenImage('assets/images/quran.png');

  /// File path: assets/images/radio.png
  AssetGenImage get radio => const AssetGenImage('assets/images/radio.png');

  /// File path: assets/images/tasbeeh.png
  AssetGenImage get tasbeeh => const AssetGenImage('assets/images/tasbeeh.png');

  /// File path: assets/images/time.png
  AssetGenImage get time => const AssetGenImage('assets/images/time.png');

  /// List of all assets
  List<AssetGenImage> get values => [
    background,
    frame31,
    frame32,
    frame33,
    frame34,
    frame3,
    group30,
    group31,
    group32,
    group33,
    group34,
    sebhaBody1,
    haddith,
    icSplash,
    imgMostRecent,
    imgSurNumberFrame,
    quran,
    radio,
    tasbeeh,
    time,
  ];
}

class Assets {
  const Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
    this.animation,
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;
  final AssetGenImageAnimation? animation;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = true,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.medium,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({AssetBundle? bundle, String? package}) {
    return AssetImage(_assetName, bundle: bundle, package: package);
  }

  String get path => _assetName;

  String get keyName => _assetName;
}

class AssetGenImageAnimation {
  const AssetGenImageAnimation({
    required this.isAnimation,
    required this.duration,
    required this.frames,
  });

  final bool isAnimation;
  final Duration duration;
  final int frames;
}

class SvgGenImage {
  const SvgGenImage(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = false;

  const SvgGenImage.vec(this._assetName, {this.size, this.flavors = const {}})
    : _isVecFormat = true;

  final String _assetName;
  final Size? size;
  final Set<String> flavors;
  final bool _isVecFormat;

  _svg.SvgPicture svg({
    Key? key,
    bool matchTextDirection = false,
    AssetBundle? bundle,
    String? package,
    double? width,
    double? height,
    BoxFit fit = BoxFit.contain,
    AlignmentGeometry alignment = Alignment.center,
    bool allowDrawingOutsideViewBox = false,
    WidgetBuilder? placeholderBuilder,
    String? semanticsLabel,
    bool excludeFromSemantics = false,
    _svg.SvgTheme? theme,
    _svg.ColorMapper? colorMapper,
    ColorFilter? colorFilter,
    Clip clipBehavior = Clip.hardEdge,
    @deprecated Color? color,
    @deprecated BlendMode colorBlendMode = BlendMode.srcIn,
    @deprecated bool cacheColorFilter = false,
  }) {
    final _svg.BytesLoader loader;
    if (_isVecFormat) {
      loader = _vg.AssetBytesLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
      );
    } else {
      loader = _svg.SvgAssetLoader(
        _assetName,
        assetBundle: bundle,
        packageName: package,
        theme: theme,
        colorMapper: colorMapper,
      );
    }
    return _svg.SvgPicture(
      loader,
      key: key,
      matchTextDirection: matchTextDirection,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
      allowDrawingOutsideViewBox: allowDrawingOutsideViewBox,
      placeholderBuilder: placeholderBuilder,
      semanticsLabel: semanticsLabel,
      excludeFromSemantics: excludeFromSemantics,
      colorFilter:
          colorFilter ??
          (color == null ? null : ColorFilter.mode(color, colorBlendMode)),
      clipBehavior: clipBehavior,
      cacheColorFilter: cacheColorFilter,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
