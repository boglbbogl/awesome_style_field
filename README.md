# 🌈 Awesome Style Field

![IMB_q0NkGC](https://github.com/boglbbogl/awesome_indicator/assets/75574246/66389706-95a6-4683-9c3e-cf102f0bd728)

## Features

- AwesomeStyleField
- AwesomeStyleFormField
- AwesomeTextController
- AwesomeKeyword

-----------

## Support Platforms

- Flutter Android
- Flutter iOS
- Flutter Web
- Flutter Desktop

-----

![IMB_K2QcLN](https://github.com/boglbbogl/awesome_indicator/assets/75574246/19efd0ae-5479-48d7-b225-92cd46b70474)

-----

## Usage

**_Add the package to pubspec.yaml_**

```
dependencies:
  awesome_style_field: ^<latest-version>
```

**_After that import the package_**

```
import 'package:awesome_style_field/awesome_style_field.dart';
```

## TextField or TextFormField

### Add Parameters

```dart
  final AwesomeTextController? controller;
  final List<AwesomeKeyword>? keywords;
```

### AwesomeKeyword

```dart
class AwesomeKeyword {
  final String text;
  final TextStyle? style;
  final bool isDuplicate;
  final bool isLetterCase;

  const AwesomeKeyword({
    required this.text,
    this.style,
    this.isDuplicate = true,
    this.isLetterCase = true,
  });
}
```

### AwesomeTextController

```dart
AwesomeTextController controller = AwesomeTextController(initValue: "Tyger");
```

### Example

![IMB_HKqrIQ](https://github.com/boglbbogl/awesome_indicator/assets/75574246/b4c2d383-a8ff-42a5-9c3f-0f51dff81c7c)

#### Tags

```dart
List<AwesomeKeyword> keywords = [
  AwesomeKeyword(
    text: "Created",
    style: TextStyle(
      color: Colors.indigo,
      fontWeight: FontWeight.bold,
    ),
  ),
  AwesomeKeyword(
    text: "Tyger",
    style: TextStyle(
      color: Colors.pink,
      fontWeight: FontWeight.bold,
    ),
  ),
],
```

#### Style

```dart
AwesomeKeyword(
  text: "Created",
  style: TextStyle(
    color: Colors.limeAccent,
    fontSize: 24,
    fontStyle: FontStyle.italic,
    fontWeight: FontWeight.bold,
  ),
),
```

#### isDupicate

![IMB_d2cKwk](https://github.com/boglbbogl/awesome_indicator/assets/75574246/7b24f264-95ca-44b1-ad03-8b92fdd31071)

#### isLetterCase

![IMB_4QELif](https://github.com/boglbbogl/awesome_indicator/assets/75574246/3fe23de0-4e31-4002-b006-a7f34a02cced)

Created by Tyger [Github](https://github.com/boglbbogl)
