# Mira Widgets

**Quickstart** • **Documentation** (coming soon) • **Pub.dev**

Stop nesting. Start chaining.

## Features

* 💙 **Fluent API** - Write Flutter UIs the way you think
* 🎯 **Less boilerplate** - One line instead of five
* ⚡ **Just works** - No config, no setup, just import and go
* 🧩 **Comprehensive** - 50+ widget extensions covering everything you need
* 🎨 **Intuitive** - If you've written Flutter, you already know how to use it

## Quickstart

Add to your `pubspec.yaml`:
```yaml
dependencies:
  mira_widgets: ^0.0.4
```

Import it:
```dart
import 'package:mira_widgets/mira_widgets.dart';
```

Use it:
```dart
Text('Hello World')
  .padding(EdgeInsets.all(16))
  .background(Colors.blue)
  .clipRRect(Clip.antiAlias, borderRadius: BorderRadius.circular(12))
  .centerAlign
```

That's it. No ceremony. No wrapper classes. Just your widgets, better.

## Why?

Because this:
```dart
Text('Hello').padding(EdgeInsets.all(16)).centerAlign
```

Is better than this:
```dart
Center(
  child: Padding(
    padding: EdgeInsets.all(16),
    child: Text('Hello'),
  ),
)
```

## What can it do?

**Everything.** Layout, sizing, styling, gestures, animations, you name it.
```dart
// Layout
widget.center()
widget.align(Alignment.topRight)
widget.expanded()

// Styling
widget.background(Colors.red)
widget.opacity(0.5)
widget.clipRRect(Clip.antiAlias)

// Interaction
widget.tapGesture(() => print('Tapped'))
widget.hero('tag')

// Lists
[widget1, widget2, widget3].inColumn
[widget1, widget2].rowSpaceBetween
```

And much more. Over 50 extensions ready to use.

## Philosophy

Inspired by SwiftUI's modifier pattern. Read left-to-right, top-to-bottom. No more inside-out thinking.

---

If this package saves you time, give it a ⭐ on GitHub and a 👍 on pub.dev!