# 🌈 Awesome Style Field

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


#### isLetterCase


Created by Tyger [Github](https://github.com/boglbbogl)
