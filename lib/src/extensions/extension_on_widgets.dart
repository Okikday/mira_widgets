import 'package:flutter/material.dart';

/// Extensions that add fluent method chaining to Flutter widgets.
extension ExtensionOnWidgets on Widget {
  // ============================================================================
  // LAYOUT & POSITIONING
  // ============================================================================

  /// Wraps the widget with [Padding] using the given [padding].
  Padding padding(EdgeInsets padding, {Key? key}) => Padding(key: key, padding: padding, child: this);

  /// Wraps the widget with [Padding] using [EdgeInsets.all].
  Padding allPadding(double value, {Key? key}) => padding(EdgeInsets.all(value), key: key);

  /// Wraps the widget with [Padding] using [EdgeInsets.symmetric].
  Padding symmetricPadding({double horizontal = 0, double vertical = 0, Key? key}) => padding(
    EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
    key: key,
  );

  /// Wraps the widget with [Padding] using [EdgeInsets.only].
  Padding onlyPadding({double left = 0, double top = 0, double right = 0, double bottom = 0, Key? key}) => padding(
    EdgeInsets.only(left: left, top: top, right: right, bottom: bottom),
    key: key,
  );

  /// Wraps the widget with horizontal padding.
  Padding horizontalPadding(double value, {Key? key}) => symmetricPadding(horizontal: value, key: key);

  /// Wraps the widget with vertical padding.
  Padding verticalPadding(double value, {Key? key}) => symmetricPadding(vertical: value, key: key);

  /// Wraps the widget with 4px padding on all sides.
  Padding get p4 => allPadding(4);

  /// Wraps the widget with 8px padding on all sides.
  Padding get p8 => allPadding(8);

  /// Wraps the widget with 12px padding on all sides.
  Padding get p12 => allPadding(12);

  /// Wraps the widget with 16px padding on all sides.
  Padding get p16 => allPadding(16);

  /// Wraps the widget with 20px padding on all sides.
  Padding get p20 => allPadding(20);

  /// Wraps the widget with 24px padding on all sides.
  Padding get p24 => allPadding(24);

  /// Wraps the widget with 32px padding on all sides.
  Padding get p32 => allPadding(32);

  /// Wraps the widget with [Center].
  Center center({Key? key, double? widthFactor, double? heightFactor}) =>
      Center(key: key, widthFactor: widthFactor, heightFactor: heightFactor, child: this);

  /// Wraps the widget with [Center].
  Center get inCenter => center();

  /// Wraps the widget with [Align].
  Align align(Alignment alignment, {Key? key, double? widthFactor, double? heightFactor}) =>
      Align(key: key, alignment: alignment, widthFactor: widthFactor, heightFactor: heightFactor, child: this);

  /// Aligns the widget to the center.
  Align get centerAlign => align(Alignment.center);

  /// Aligns the widget to the top center.
  Align get topCenterAlign => align(Alignment.topCenter);

  /// Aligns the widget to the bottom center.
  Align get bottomCenterAlign => align(Alignment.bottomCenter);

  /// Aligns the widget to the top left.
  Align get topLeftAlign => align(Alignment.topLeft);

  /// Aligns the widget to the top right.
  Align get topRightAlign => align(Alignment.topRight);

  /// Aligns the widget to the center left.
  Align get centerLeftAlign => align(Alignment.centerLeft);

  /// Aligns the widget to the center right.
  Align get centerRightAlign => align(Alignment.centerRight);

  /// Aligns the widget to the bottom left.
  Align get bottomLeftAlign => align(Alignment.bottomLeft);

  /// Aligns the widget to the bottom right.
  Align get bottomRightAlign => align(Alignment.bottomRight);

  /// Wraps the widget with [Positioned] for use in a [Stack].
  Positioned positioned({Key? key, double? l, double? r, double? t, double? b, double? w, double? h}) =>
      Positioned(key: key, left: l, right: r, top: t, bottom: b, width: w, height: h, child: this);

  /// Wraps the widget with [Positioned.fill] to fill the parent.
  Positioned get fillParent => Positioned.fill(child: this);

  /// Wraps the widget with [Positioned.fill] to fill the stack.
  Positioned get fillStack => fillParent;

  // ============================================================================
  // SIZING & CONSTRAINTS
  // ============================================================================

  /// Wraps the widget with [SizedBox] with optional width and height.
  SizedBox sizedBox({Key? key, double? w, double? h}) => SizedBox(key: key, width: w, height: h, child: this);

  /// Wraps the widget with a square [SizedBox].
  SizedBox squareSizedBox(double dimension, {Key? key}) => sizedBox(key: key, w: dimension, h: dimension);

  /// Wraps the widget with [SizedBox] using a [Size].
  SizedBox sizeSizedBox(Size size, {Key? key}) => sizedBox(key: key, w: size.width, h: size.height);

  /// Creates a gap (spacing) as a [SizedBox].
  SizedBox gap(double size, {Axis direction = Axis.vertical, Key? key}) =>
      direction == Axis.vertical ? SizedBox(key: key, height: size) : SizedBox(key: key, width: size);

  /// Creates a vertical gap as a [SizedBox].
  SizedBox vGap(double size) => gap(size, direction: Axis.vertical);

  /// Creates a horizontal gap as a [SizedBox].
  SizedBox hGap(double size) => gap(size, direction: Axis.horizontal);

  /// Wraps the widget with [ConstrainedBox].
  ConstrainedBox constrainedBox(BoxConstraints constraints, {Key? key}) =>
      ConstrainedBox(key: key, constraints: constraints, child: this);

  /// Wraps the widget with [ConstrainedBox] with custom constraints.
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

  /// Wraps the widget with [FittedBox].
  FittedBox fittedBox({Key? key, BoxFit fit = BoxFit.contain, Alignment alignment = Alignment.center}) =>
      FittedBox(key: key, fit: fit, alignment: alignment, child: this);

  /// Wraps the widget with [FittedBox].
  FittedBox get inFittedBox => fittedBox();

  /// Wraps the widget with [FractionallySizedBox].
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

  /// Wraps the widget with [AspectRatio].
  AspectRatio aspectRatio(double ratio, {Key? key}) => AspectRatio(key: key, aspectRatio: ratio, child: this);

  /// Wraps the widget with [IntrinsicHeight].
  IntrinsicHeight intrinsicHeight({Key? key}) => IntrinsicHeight(key: key, child: this);

  /// Wraps the widget with [IntrinsicWidth].
  IntrinsicWidth intrinsicWidth({Key? key}) => IntrinsicWidth(key: key, child: this);

  /// Wraps the widget with [OverflowBox].
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

  /// Wraps the widget with [SafeArea].
  SafeArea safeArea({
    Key? key,
    bool top = true,
    bool bottom = true,
    bool left = true,
    bool right = true,
    EdgeInsets minimum = EdgeInsets.zero,
  }) => SafeArea(key: key, top: top, bottom: bottom, left: left, right: right, minimum: minimum, child: this);

  /// Wraps the widget with [SafeArea].
  SafeArea get inSafeArea => safeArea();

  // ============================================================================
  // FLEX & RESPONSIVE
  // ============================================================================

  /// Wraps the widget with [Expanded].
  Expanded expanded([int flex = 1, Key? key]) => Expanded(key: key, flex: flex, child: this);

  /// Wraps the widget with [Expanded] with flex of 1.
  Expanded get inExpanded => expanded();

  /// Wraps the widget with [Flexible].
  Flexible flexible({Key? key, int flex = 1, FlexFit fit = FlexFit.loose}) =>
      Flexible(key: key, flex: flex, fit: fit, child: this);

  /// Wraps the widget with [Flexible] with default parameters.
  Flexible get inFlexible => flexible();

  // ============================================================================
  // DECORATION & STYLING
  // ============================================================================

  /// Wraps the widget with [ColoredBox].
  ColoredBox coloredBox(Color color, {Key? key}) => ColoredBox(key: key, color: color, child: this);

  /// Wraps the widget with [ColoredBox] as background.
  ColoredBox background(Color color, {Key? key}) => coloredBox(color, key: key);

  /// Wraps the widget with [DecoratedBox].
  DecoratedBox decoratedBox(
    BoxDecoration decoration, {
    Key? key,
    DecorationPosition position = DecorationPosition.background,
  }) => DecoratedBox(key: key, decoration: decoration, position: position, child: this);

  /// Wraps the widget with a border using [DecoratedBox].
  DecoratedBox border({Color color = Colors.black, double width = 1.0, BorderRadius? borderRadius, Key? key}) =>
      decoratedBox(
        BoxDecoration(
          border: Border.all(color: color, width: width),
          borderRadius: borderRadius,
        ),
        key: key,
      );

  /// Wraps the widget with rounded corners using [DecoratedBox].
  DecoratedBox borderRadius(double radius, {Key? key}) =>
      decoratedBox(BoxDecoration(borderRadius: BorderRadius.circular(radius)), key: key);

  /// Wraps the widget with a shadow using [DecoratedBox].
  DecoratedBox shadow({Color color = Colors.black26, double blurRadius = 4, Offset offset = Offset.zero, Key? key}) =>
      decoratedBox(
        BoxDecoration(
          boxShadow: [BoxShadow(color: color, blurRadius: blurRadius, offset: offset)],
        ),
        key: key,
      );

  /// Wraps the widget with [Card].
  Card card({Key? key, Color? color, double? elevation, ShapeBorder? shape, EdgeInsetsGeometry? margin}) =>
      Card(key: key, color: color, elevation: elevation, shape: shape, margin: margin, child: this);

  /// Wraps the widget with [Material].
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

  /// Wraps the widget with [PhysicalModel].
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

  /// Wraps the widget with [ClipRRect].
  ClipRRect clipRRect(
    Clip clipBehavior, {
    Key? key,
    BorderRadius borderRadius = BorderRadius.zero,
    CustomClipper<RRect>? clipper,
  }) => ClipRRect(key: key, clipBehavior: clipBehavior, borderRadius: borderRadius, clipper: clipper, child: this);

  /// Wraps the widget with [ClipRRect] using antiAlias.
  ClipRRect get clipped => clipRRect(Clip.antiAlias);

  /// Wraps the widget with [ClipOval].
  ClipOval clipOval(Clip clipBehavior, {Key? key, CustomClipper<Rect>? clipper}) =>
      ClipOval(key: key, clipBehavior: clipBehavior, clipper: clipper, child: this);

  /// Wraps the widget with [ClipOval] using antiAlias.
  ClipOval get roundedClip => clipOval(Clip.antiAlias);

  /// Wraps the widget with [ClipRect].
  ClipRect clipRect({Key? key, CustomClipper<Rect>? clipper, Clip clipBehavior = Clip.hardEdge}) =>
      ClipRect(key: key, clipper: clipper, clipBehavior: clipBehavior, child: this);

  /// Wraps the widget with [ClipRect].
  ClipRect get rectClipped => clipRect();

  /// Wraps the widget with [ClipPath].
  ClipPath clipPath({Key? key, required CustomClipper<Path> clipper, Clip clipBehavior = Clip.antiAlias}) =>
      ClipPath(key: key, clipper: clipper, clipBehavior: clipBehavior, child: this);

  /// Wraps the widget with [ClipRRect] with circular border radius.
  ClipRRect rounded(double radius, {Key? key}) =>
      clipRRect(Clip.antiAlias, key: key, borderRadius: BorderRadius.circular(radius));

  /// Wraps the widget with [ClipRRect] with custom corner radii.
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

  /// Wraps the widget with [ClipRRect] to make it fully circular.
  ClipRRect get circular => rounded(9999);

  // ============================================================================
  // VISUAL EFFECTS
  // ============================================================================

  /// Wraps the widget with [Opacity].
  Opacity opacity(double opacity, {Key? key, bool alwaysIncludeSemantics = false}) =>
      Opacity(key: key, opacity: opacity, alwaysIncludeSemantics: alwaysIncludeSemantics, child: this);

  /// Wraps the widget with [Transform].
  Transform transform(Matrix4 transform, {Key? key, Alignment? alignment, Offset? origin}) =>
      Transform(key: key, transform: transform, alignment: alignment, origin: origin, child: this);

  /// Wraps the widget with [Transform.rotate].
  Transform rotate(double angle, {Key? key, Alignment? alignment, Offset? origin}) =>
      Transform.rotate(key: key, angle: angle, alignment: alignment, origin: origin, child: this);

  /// Wraps the widget with [Transform.scale].
  Transform scale(double scale, {Key? key, Alignment? alignment, Offset? origin}) =>
      Transform.scale(key: key, scale: scale, alignment: alignment, origin: origin, child: this);

  /// Wraps the widget with [Transform.translate].
  Transform translate(Offset offset, {Key? key}) => Transform.translate(key: key, offset: offset, child: this);

  /// Wraps the widget with [RotatedBox].
  RotatedBox rotatedBox(int quarterTurns, {Key? key}) => RotatedBox(key: key, quarterTurns: quarterTurns, child: this);

  // ============================================================================
  // INTERACTION & GESTURES
  // ============================================================================

  /// Wraps the widget with [GestureDetector] for tap gestures.
  GestureDetector tapGesture(void Function() onTap, {Key? key}) => GestureDetector(key: key, onTap: onTap, child: this);

  /// Wraps the widget with [GestureDetector] for long press gestures.
  GestureDetector longPressGesture(void Function() onLongPress, {Key? key}) =>
      GestureDetector(key: key, onLongPress: onLongPress, child: this);

  /// Wraps the widget with [GestureDetector] with multiple gesture callbacks.
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

  /// Wraps the widget with [InkWell] for Material ink splash effects.
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

  /// Wraps the widget with [IgnorePointer] to ignore pointer events.
  IgnorePointer ignorePointer([bool ignoring = true, Key? key]) =>
      IgnorePointer(key: key, ignoring: ignoring, child: this);

  /// Wraps the widget with [AbsorbPointer] to absorb pointer events.
  AbsorbPointer absorbPointer([bool absorbing = true, Key? key]) =>
      AbsorbPointer(key: key, absorbing: absorbing, child: this);

  // ============================================================================
  // SCROLLING
  // ============================================================================

  /// Wraps the widget with [SingleChildScrollView].
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

  /// Wraps the widget with [SingleChildScrollView].
  SingleChildScrollView get inScrollView => scrollable();

  // ============================================================================
  // VISIBILITY & STATE
  // ============================================================================

  /// Wraps the widget with [Offstage] to control visibility without removing from tree.
  Offstage offstage([bool offstage = true, Key? key]) => Offstage(key: key, offstage: offstage, child: this);

  /// Wraps the widget with [Visibility] to control visibility.
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

  /// Wraps the widget with [Hero] for hero animations.
  Hero hero(Object tag, {Key? key, CreateRectTween? createRectTween, HeroFlightShuttleBuilder? flightShuttleBuilder}) =>
      Hero(
        key: key,
        tag: tag,
        createRectTween: createRectTween,
        flightShuttleBuilder: flightShuttleBuilder,
        child: this,
      );

  /// Wraps the widget with [AnimatedContainer] for animated transitions.
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

  /// Wraps the widget with [Theme] to apply a theme.
  Theme theme(ThemeData data, {Key? key}) => Theme(key: key, data: data, child: this);

  /// Wraps the widget with [DefaultTextStyle] to apply text styling.
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

  /// Wraps the widget with [Tooltip] to show a tooltip on long press.
  Tooltip tooltip(
    String message, {
    Key? key,
    Decoration? decoration,
    BoxConstraints? constraints,
    EdgeInsetsGeometry? padding,
  }) => Tooltip(
    key: key,
    message: message,
    decoration: decoration,
    constraints: constraints,
    padding: padding,
    child: this,
  );
}
