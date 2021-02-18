# simple_page_indicator
[![pub package](https://img.shields.io/pub/v/simple_page_indicator.svg)](https://pub.dartlang.org/packages/simple_page_indicator)

A new Flutter package about simple page view indicator.

![](screen/simple_page_indicator.png)

![](screen/show.gif)

## Getting Started

Add this to your package's pubspec.yaml file:
```yaml

dependencies:
  simple_page_indicator: last version

```

## How to use?

add this code

```dart
import 'package:simple_page_indicator/simple_page_indicator.dart';

        SimplePageIndicator(
              itemCount: [your item count],
              controller: [your page controller],
              maxSize: 6,
              minSize: 3,
              indicatorColor: Colors.red,
              space: 14,
            ),
```