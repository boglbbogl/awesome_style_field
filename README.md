# 🌈 Awesome Style Field

![IMB_y1h90e](https://github.com/boglbbogl/awesome_style_field/assets/75574246/8234aa41-1d90-4f58-bdca-44751b1788d1)

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

![IMB_IcS3h3](https://github.com/boglbbogl/awesome_style_field/assets/75574246/14b91b04-4d17-4181-82ef-c9687e7885af)

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

- `AwsomeStyleField` is inherited from TextField.
- `AwsomeStyleFormField` is inherited from TextFormField.
- Tags and style, added to `AwsomeStyleField` and `AwsomeStyleFormField`, can be customised.

### New Parameters

- `AwesomeTextController` is inherited from TextEditingController.
- `List<AwesomeKeyword>` is for your awesome styles !

```dart
  final AwesomeTextController? controller;
  final List<AwesomeKeyword>? keywords;
```

### AwesomeKeyword

- Your keyword is passed to text parameter which is required.
- Your own style is passed to style parameter which is optional. Without passing, your style will be set as parent style.
- `isDuplicate` sets whether or not to duplicate style. (Default value allows duplication.)
- `isLetterCase` enables upper or lower case to be separated. (Default value is not case-sensitive.)

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

## Example

![IMB_j8IGEq](https://github.com/boglbbogl/awesome_style_field/assets/75574246/32e4a25b-6eef-4489-8357-ffd088e6506e)=

#### Tags

- You add AwesomeKeyword class including style and tags to list. 

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

- You create your own style. 

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

![IMB_YSLyVK](https://github.com/boglbbogl/awesome_style_field/assets/75574246/cb7601b8-59fc-46e9-bc29-0ea4e971848a)

#### isLetterCase

![IMB_8rpj3m](https://github.com/boglbbogl/awesome_style_field/assets/75574246/a5ebf454-1908-45e0-8d03-bc7c4278d026)


Created by Tyger [Github](https://github.com/boglbbogl)
