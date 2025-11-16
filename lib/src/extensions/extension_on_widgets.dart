import 'package:flutter/material.dart';

extension ExtensionOnWidgets on Widget {
  // ============================================================================
  // LAYOUT & POSITIONING
  // ============================================================================

  Padding padding(EdgeInsets padding, {Key? key}) => Padding(key: key, padding: padding, child: this);
  Padding allPadding(double value, {Key? key}) => padding(EdgeInsets.all(value), key: key);
  Padding symmetricPadding({double horizontal = 0, double vertical = 0, Key? key}) => padding(
    EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
    key: key,
  );
  Padding onlyPadding({double left = 0, double top = 0, double right = 0, double bottom = 0, Key? key}) => padding(
    EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
    key: key,
  );
  Padding horizontalPadding(double value, {Key? key}) => symmetricPadding(horizontal: value, key: key);
  Padding verticalPadding(double value, {Key? key}) => symmetricPadding(vertical: value, key: key);

  Padding get p4 => allPadding(4);
  Padding get p8 => allPadding(8);
  Padding get p12 => allPadding(12);
  Padding get p16 => allPadding(16);
  Padding get p20 => allPadding(20);
  Padding get p24 => allPadding(24);
  Padding get p32 => allPadding(32);

  Center center({Key? key, double? widthFactor, double? heightFactor}) =>
      Center(key: key, widthFactor: widthFactor, heightFactor: heightFactor, child: this);
  Center get inCenter => center();

  Align align(Alignment alignment, {Key? key, double? widthFactor, double? heightFactor}) =>
      Align(key: key, alignment: alignment, widthFactor: widthFactor, heightFactor: heightFactor, child: this);
  Align get centerAlign => align(Alignment.center);
  Align get topCenterAlign => align(Alignment.topCenter);
  Align get bottomCenterAlign => align(Alignment.bottomCenter);
  Align get topLeftAlign => align(Alignment.topLeft);
  Align get topRightAlign => align(Alignment.topRight);
  Align get centerLeftAlign => align(Alignment.centerLeft);
  Align get centerRightAlign => align(Alignment.centerRight);
  Align get bottomLeftAlign => align(Alignment.bottomLeft);
  Align get bottomRightAlign => align(Alignment.bottomRight);

  Positioned positioned({Key? key, double? l, double? r, double? t, double? b, double? w, double? h}) =>
      Positioned(key: key, left: l, right: r, top: t, bottom: b, width: w, height: h, child: this);
  Positioned get fillParent => Positioned.fill(child: this);
  Positioned get fillStack => fillParent;

  // ============================================================================
  // SIZING & CONSTRAINTS
  // ============================================================================

  SizedBox sizedBox({Key? key, double? w, double? h}) => SizedBox(key: key, width: w, height: h, child: this);
  SizedBox squareSizedBox(double dimension, {Key? key}) => sizedBox(key: key, w: dimension, h: dimension);
  SizedBox sizeSizedBox(Size size, {Key? key}) => sizedBox(key: key, w: size.width, h: size.height);

  SizedBox gap(double size, {Axis direction = Axis.vertical, Key? key}) =>
      direction == Axis.vertical ? SizedBox(key: key, height: size) : SizedBox(key: key, width: size);
  SizedBox vGap(double size) => gap(size, direction: Axis.vertical);
  SizedBox hGap(double size) => gap(size, direction: Axis.horizontal);

  ConstrainedBox constrainedBox(BoxConstraints constraints, {Key? key}) =>
      ConstrainedBox(key: key, constraints: constraints, child: this);
  ConstrainedBox constrained({
    Key? key,
    double minWidth = 0.0,
    double maxWidth = double.infinity,
    double minHeight = 0.0,
    double maxHeight = double.infinity,
  }) => constrainedBox(
    BoxConstraints(minHeight: minHeight, maxHeight: maxHeight, minWidth: minWidth, maxWidth: maxWidth),
    key: key,
  );

  FittedBox fittedBox({Key? key, BoxFit fit = BoxFit.contain, Alignment alignment = Alignment.center}) =>
      FittedBox(key: key, fit: fit, alignment: alignment, child: this);
  FittedBox get inFittedBox => fittedBox();

  FractionallySizedBox fractionalBox({
    Key? key,
    double? widthFactor,
    double? heightFactor,
    Alignment alignment = Alignment.center,
  }) => FractionallySizedBox(
    key: key,
    widthFactor: widthFactor,
    heightFactor: heightFactor,
    alignment: alignment,
    child: this,
  );

  AspectRatio aspectRatio(double ratio, {Key? key}) => AspectRatio(key: key, aspectRatio: ratio, child: this);

  IntrinsicHeight intrinsicHeight({Key? key}) => IntrinsicHeight(key: key, child: this);
  IntrinsicWidth intrinsicWidth({Key? key}) => IntrinsicWidth(key: key, child: this);

  OverflowBox overflowBox({
    Key? key,
    double? minWidth,
    double? maxWidth,
    double? minHeight,
    double? maxHeight,
    Alignment alignment = Alignment.center,
  }) => OverflowBox(
    key: key,
    minWidth: minWidth,
    maxWidth: maxWidth,
    minHeight: minHeight,
    maxHeight: maxHeight,
    alignment: alignment,
    child: this,
  );

  SafeArea safeArea({
    Key? key,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    EdgeInsets minimum = EdgeInsets.zero,
  }) => SafeArea(key: key, top: top, bottom: bottom, left: left, right: right, minimum: minimum, child: this);
  SafeArea get inSafeArea => safeArea();

  // ============================================================================
  // FLEX & RESPONSIVE
  // ============================================================================

  Expanded expanded([int flex = 1, Key? key]) => Expanded(key: key, flex: flex, child: this);
  Expanded get inExpanded => expanded();

  Flexible flexible({Key? key, int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(key: key, flex: flex, fit: fit, child: this);
  Flexible get inFlexible => flexible();

  // ============================================================================
  // DECORATION & STYLING
  // ============================================================================

  ColoredBox coloredBox(Color color, {Key? key}) => ColoredBox(key: key, color: color, child: this);
  ColoredBox background(Color color, {Key? key}) => coloredBox(color, key: key);

  DecoratedBox decoratedBox(
    BoxDecoration decoration, {
    Key? key,
    DecorationPosition position = DecorationPosition.background,
  }) => DecoratedBox(key: key, decoration: decoration, position: position, child: this);

  DecoratedBox border({Color color = Colors.black, double width = 1.0, BorderRadius? borderRadius, Key? key}) =>
      decoratedBox(
        BoxDecoration(
          border: Border.all(color: color, width: width),
          borderRadius: borderRadius,
        ),
        key: key,
      );

  DecoratedBox borderRadius(double radius, {Key? key}) =>
      decoratedBox(BoxDecoration(borderRadius: BorderRadius.circular(radius)), key: key);

  DecoratedBox shadow({Color color = Colors.black26, double blurRadius = 4, Offset offset = Offset.zero, Key? key}) =>
      decoratedBox(
        BoxDecoration(
          boxShadow: [BoxShadow(color: color, blurRadius: blurRadius, offset: offset)],
        ),
        key: key,
      );

  Card card({Key? key, Color? color, double? elevation, ShapeBorder? shape, EdgeInsetsGeometry? margin}) =>
      Card(key: key, color: color, elevation: elevation, shape: shape, margin: margin, child: this);

  Material material({
    Key? key,
    Color? color,
    double elevation = 0.0,
    ShapeBorder? shape,
    Clip clipBehavior = Clip.none,
    BorderRadius? borderRadius,
  }) => Material(
    key: key,
    color: color,
    elevation: elevation,
    shape: shape,
    clipBehavior: clipBehavior,
    borderRadius: borderRadius,
    child: this,
  );

  PhysicalModel physicalModel({
    Key? key,
    required Color color,
    double elevation = 0.0,
    Color shadowColor = const Color(0xFF000000),
    Clip clipBehavior = Clip.none,
    BorderRadius? borderRadius,
  }) => PhysicalModel(
    key: key,
    color: color,
    elevation: elevation,
    shadowColor: shadowColor,
    clipBehavior: clipBehavior,
    borderRadius: borderRadius,
    child: this,
  );

  // ============================================================================
  // CLIPPING
  // ============================================================================

  ClipRRect clipRRect(
    Clip clipBehavior, {
    Key? key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<RRect>? clipper,
  }) => ClipRRect(key: key, clipBehavior: clipBehavior, borderRadius: borderRadius, clipper: clipper, child: this);
  ClipRRect get clipped => clipRRect(Clip.antiAlias);

  ClipOval clipOval(Clip clipBehavior, {Key? key, CustomClipper<Rect>? clipper}) =>
      ClipOval(key: key, clipBehavior: clipBehavior, clipper: clipper, child: this);
  ClipOval get roundedClip => clipOval(Clip.antiAlias);

  ClipRect clipRect({Key? key, CustomClipper<Rect>? clipper, Clip clipBehavior = Clip.hardEdge}) =>
      ClipRect(key: key, clipper: clipper, clipBehavior: clipBehavior, child: this);
  ClipRect get rectClipped => clipRect();

  ClipPath clipPath({Key? key, required CustomClipper<Path> clipper, Clip clipBehavior = Clip.antiAlias}) =>
      ClipPath(key: key, clipper: clipper, clipBehavior: clipBehavior, child: this);

  ClipRRect rounded(double radius, {Key? key}) =>
      clipRRect(Clip.antiAlias, key: key, borderRadius: BorderRadius.circular(radius));
  ClipRRect roundedOnly({
    double topLeft = 0,
    double topRight = 0,
    double bottomLeft = 0,
    double bottomRight = 0,
    Key? key,
  }) => clipRRect(
    Clip.antiAlias,
    key: key,
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(topLeft),
      topRight: Radius.circular(topRight),
      bottomLeft: Radius.circular(bottomLeft),
      bottomRight: Radius.circular(bottomRight),
    ),
  );

  ClipRRect get circular => rounded(9999);

  // ============================================================================
  // VISUAL EFFECTS
  // ============================================================================

  Opacity opacity(double opacity, {Key? key, bool alwaysIncludeSemantics = false}) =>
      Opacity(key: key, opacity: opacity, alwaysIncludeSemantics: alwaysIncludeSemantics, child: this);

  Transform transform(Matrix4 transform, {Key? key, Alignment? alignment, Offset? origin}) =>
      Transform(key: key, transform: transform, alignment: alignment, origin: origin, child: this);

  Transform rotate(double angle, {Key? key, Alignment? alignment, Offset? origin}) =>
      Transform.rotate(key: key, angle: angle, alignment: alignment, origin: origin, child: this);

  Transform scale(double scale, {Key? key, Alignment? alignment, Offset? origin}) =>
      Transform.scale(key: key, scale: scale, alignment: alignment, origin: origin, child: this);

  Transform translate(Offset offset, {Key? key}) => Transform.translate(key: key, offset: offset, child: this);

  RotatedBox rotatedBox(int quarterTurns, {Key? key}) => RotatedBox(key: key, quarterTurns: quarterTurns, child: this);

  // ============================================================================
  // INTERACTION & GESTURES
  // ============================================================================

  GestureDetector tapGesture(void Function() onTap, {Key? key}) => GestureDetector(key: key, onTap: onTap, child: this);

  GestureDetector longPressGesture(void Function() onLongPress, {Key? key}) =>
      GestureDetector(key: key, onLongPress: onLongPress, child: this);

  GestureDetector gestureDetector({
    Key? key,
    GestureTapCallback? onTap,
    GestureLongPressCallback? onLongPress,
    GestureTapDownCallback? onTapDown,
    GestureTapUpCallback? onTapUp,
    GestureTapCallback? onDoubleTap,
    HitTestBehavior? behavior,
  }) => GestureDetector(
    key: key,
    onTap: onTap,
    onLongPress: onLongPress,
    onTapDown: onTapDown,
    onTapUp: onTapUp,
    onDoubleTap: onDoubleTap,
    behavior: behavior,
    child: this,
  );

  InkWell inkWell({
    Key? key,
    VoidCallback? onTap,
    VoidCallback? onLongPress,
    VoidCallback? onDoubleTap,
    BorderRadius? borderRadius,
    Color? splashColor,
    Color? highlightColor,
  }) => InkWell(
    key: key,
    onTap: onTap,
    onLongPress: onLongPress,
    onDoubleTap: onDoubleTap,
    borderRadius: borderRadius,
    splashColor: splashColor,
    highlightColor: highlightColor,
    child: this,
  );

  IgnorePointer ignorePointer([bool ignoring = true, Key? key]) =>
      IgnorePointer(key: key, ignoring: ignoring, child: this);

  AbsorbPointer absorbPointer([bool absorbing = true, Key? key]) =>
      AbsorbPointer(key: key, absorbing: absorbing, child: this);

  // ============================================================================
  // SCROLLING
  // ============================================================================

  SingleChildScrollView scrollable({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    EdgeInsetsGeometry? padding,
    ScrollPhysics? physics,
  }) => SingleChildScrollView(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    padding: padding,
    physics: physics,
    child: this,
  );
  SingleChildScrollView get inScrollView => scrollable();

  // ============================================================================
  // VISIBILITY & STATE
  // ============================================================================

  Offstage offstage([bool offstage = true, Key? key]) => Offstage(key: key, offstage: offstage, child: this);

  Visibility visibility({
    Key? key,
    bool visible = true,
    bool maintainState = false,
    bool maintainAnimation = false,
    bool maintainSize = false,
    Widget replacement = const SizedBox.shrink(),
  }) => Visibility(
    key: key,
    visible: visible,
    maintainState: maintainState,
    maintainAnimation: maintainAnimation,
    maintainSize: maintainSize,
    replacement: replacement,
    child: this,
  );

  // ============================================================================
  // ANIMATION & TRANSITIONS
  // ============================================================================

  Hero hero(Object tag, {Key? key, CreateRectTween? createRectTween, HeroFlightShuttleBuilder? flightShuttleBuilder}) =>
      Hero(
        key: key,
        tag: tag,
        createRectTween: createRectTween,
        flightShuttleBuilder: flightShuttleBuilder,
        child: this,
      );

  AnimatedContainer animatedContainer({
    Key? key,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.linear,
    Color? color,
    BoxDecoration? decoration,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? margin,
    double? width,
    double? height,
    BoxConstraints? constraints,
    AlignmentGeometry? alignment,
  }) => AnimatedContainer(
    key: key,
    duration: duration,
    curve: curve,
    color: color,
    decoration: decoration,
    padding: padding,
    margin: margin,
    width: width,
    height: height,
    constraints: constraints,
    alignment: alignment,
    child: this,
  );

  // ============================================================================
  // THEMING & STYLING
  // ============================================================================

  Theme theme(ThemeData data, {Key? key}) => Theme(key: key, data: data, child: this);

  DefaultTextStyle textStyle(
    TextStyle style, {
    Key? key,
    TextAlign? textAlign,
    bool softWrap = true,
    TextOverflow overflow = TextOverflow.clip,
    int? maxLines,
  }) => DefaultTextStyle(
    key: key,
    style: style,
    textAlign: textAlign,
    softWrap: softWrap,
    overflow: overflow,
    maxLines: maxLines,
    child: this,
  );

  // ============================================================================
  // UTILITY & MISC
  // ============================================================================

  Tooltip tooltip(String message, {Key? key, Decoration? decoration, double? height, EdgeInsetsGeometry? padding}) =>
      Tooltip(key: key, message: message, decoration: decoration, height: height, padding: padding, child: this);
}
