import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

extension ExtensionOnWidgetsList on List<Widget> {
  // ============================================================================
  // ROW
  // ============================================================================

  Row row({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) => Row(
    key: key,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    children: this,
  );

  Row get inRow => row();
  Row get rowSpaceBetween =>
      row(mainAxisAlignment: MainAxisAlignment.spaceBetween);
  Row get rowSpaceAround =>
      row(mainAxisAlignment: MainAxisAlignment.spaceAround);
  Row get rowSpaceEvenly =>
      row(mainAxisAlignment: MainAxisAlignment.spaceEvenly);
  Row get rowCenter => row(mainAxisAlignment: MainAxisAlignment.center);
  Row get rowEnd => row(mainAxisAlignment: MainAxisAlignment.end);

  // ============================================================================
  // COLUMN
  // ============================================================================

  Column column({
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
  }) => Column(
    key: key,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    children: this,
  );

  Column get inColumn => column();
  Column get columnSpaceBetween =>
      column(mainAxisAlignment: MainAxisAlignment.spaceBetween);
  Column get columnSpaceAround =>
      column(mainAxisAlignment: MainAxisAlignment.spaceAround);
  Column get columnSpaceEvenly =>
      column(mainAxisAlignment: MainAxisAlignment.spaceEvenly);
  Column get columnCenter =>
      column(mainAxisAlignment: MainAxisAlignment.center);
  Column get columnEnd => column(mainAxisAlignment: MainAxisAlignment.end);

  // ============================================================================
  // STACK
  // ============================================================================

  Stack stack({
    Key? key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit fit = StackFit.loose,
    Clip clipBehavior = Clip.hardEdge,
  }) => Stack(
    key: key,
    alignment: alignment,
    textDirection: textDirection,
    fit: fit,
    clipBehavior: clipBehavior,
    children: this,
  );

  Stack get inStack => stack();
  Stack get stackCenter => stack(alignment: Alignment.center);
  Stack get stackExpanded => stack(fit: StackFit.expand);

  // ============================================================================
  // WRAP
  // ============================================================================

  Wrap wrap({
    Key? key,
    Axis direction = Axis.horizontal,
    WrapAlignment alignment = WrapAlignment.start,
    double spacing = 0.0,
    WrapAlignment runAlignment = WrapAlignment.start,
    double runSpacing = 0.0,
    WrapCrossAlignment crossAxisAlignment = WrapCrossAlignment.start,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    Clip clipBehavior = Clip.none,
  }) => Wrap(
    key: key,
    direction: direction,
    alignment: alignment,
    spacing: spacing,
    runAlignment: runAlignment,
    runSpacing: runSpacing,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    clipBehavior: clipBehavior,
    children: this,
  );

  Wrap get inWrap => wrap();

  // ============================================================================
  // FLEX
  // ============================================================================

  Flex flex(
    Axis direction, {
    Key? key,
    MainAxisAlignment mainAxisAlignment = MainAxisAlignment.start,
    MainAxisSize mainAxisSize = MainAxisSize.max,
    CrossAxisAlignment crossAxisAlignment = CrossAxisAlignment.center,
    TextDirection? textDirection,
    VerticalDirection verticalDirection = VerticalDirection.down,
    TextBaseline? textBaseline,
    Clip clipBehavior = Clip.none,
  }) => Flex(
    key: key,
    direction: direction,
    mainAxisAlignment: mainAxisAlignment,
    mainAxisSize: mainAxisSize,
    crossAxisAlignment: crossAxisAlignment,
    textDirection: textDirection,
    verticalDirection: verticalDirection,
    textBaseline: textBaseline,
    clipBehavior: clipBehavior,
    children: this,
  );

  Flex get inFlex => flex(Axis.horizontal);

  // ============================================================================
  // LISTVIEW
  // ============================================================================

  ListView listView({
    Key? key,
    Axis scrollDirection = Axis.vertical,
    bool reverse = false,
    ScrollPhysics? physics,
    bool shrinkWrap = false,
    EdgeInsetsGeometry? padding,
    double? itemExtent,
    Widget? prototypeItem,
    bool addAutomaticKeepAlives = true,
    bool addRepaintBoundaries = true,
    bool addSemanticIndexes = true,
    double? cacheExtent,
    int? semanticChildCount,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    ScrollViewKeyboardDismissBehavior keyboardDismissBehavior =
        ScrollViewKeyboardDismissBehavior.manual,
    String? restorationId,
    Clip clipBehavior = Clip.hardEdge,
  }) => ListView(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    physics: physics,
    shrinkWrap: shrinkWrap,
    padding: padding,
    itemExtent: itemExtent,
    prototypeItem: prototypeItem,
    addAutomaticKeepAlives: addAutomaticKeepAlives,
    addRepaintBoundaries: addRepaintBoundaries,
    addSemanticIndexes: addSemanticIndexes,
    cacheExtent: cacheExtent,
    semanticChildCount: semanticChildCount ?? length,
    dragStartBehavior: dragStartBehavior,
    keyboardDismissBehavior: keyboardDismissBehavior,
    restorationId: restorationId,
    clipBehavior: clipBehavior,
    children: this,
  );

  ListView get inListView => listView();

  // ============================================================================
  // INDEXED STACK
  // ============================================================================

  IndexedStack indexedStack(
    int index, {
    Key? key,
    AlignmentGeometry alignment = AlignmentDirectional.topStart,
    TextDirection? textDirection,
    StackFit sizing = StackFit.loose,
  }) => IndexedStack(
    key: key,
    index: index,
    alignment: alignment,
    textDirection: textDirection,
    sizing: sizing,
    children: this,
  );

  // ============================================================================
  // PAGE VIEW
  // ============================================================================

  PageView pageView({
    Key? key,
    Axis scrollDirection = Axis.horizontal,
    bool reverse = false,
    PageController? controller,
    ScrollPhysics? physics,
    bool pageSnapping = true,
    void Function(int)? onPageChanged,
    DragStartBehavior dragStartBehavior = DragStartBehavior.start,
    bool allowImplicitScrolling = false,
    String? restorationId,
    Clip clipBehavior = Clip.hardEdge,
    ScrollBehavior? scrollBehavior,
    bool padEnds = true,
  }) => PageView(
    key: key,
    scrollDirection: scrollDirection,
    reverse: reverse,
    controller: controller,
    physics: physics,
    pageSnapping: pageSnapping,
    onPageChanged: onPageChanged,
    dragStartBehavior: dragStartBehavior,
    allowImplicitScrolling: allowImplicitScrolling,
    restorationId: restorationId,
    clipBehavior: clipBehavior,
    scrollBehavior: scrollBehavior,
    padEnds: padEnds,
    children: this,
  );

  PageView get inPageView => pageView();
}
