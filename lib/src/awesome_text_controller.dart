import 'package:awesome_style_field/src/awesome_keyword.dart';
import 'package:flutter/material.dart';

class AwesomeTextController extends TextEditingController {
  final String? initValue;
  TextStyle? style;
  List<AwesomeKeyword> keywords = [];

  AwesomeTextController({
    this.initValue,
  });

  void updated({
    TextStyle? style,
    List<AwesomeKeyword>? keywords,
  }) {
    this.style = style;
    this.keywords = keywords ?? [];
  }

  (String, TextStyle?, int?) _containString(String text) {
    if (keywords
        .where((e) => e.text.toLowerCase() == text.toLowerCase())
        .toList()
        .isNotEmpty) {
      int indexOf = keywords
          .indexWhere((e) => e.text.toLowerCase() == text.toLowerCase());
      AwesomeKeyword keyword = keywords[indexOf];
      if (keyword.isLetterCase) {
        return (text, keyword.style, indexOf);
      } else {
        if (keyword.text == text) {
          return (text, keyword.style, indexOf);
        } else {
          return (text, null, null);
        }
      }
    } else {
      return (text, null, null);
    }
  }

  @override
  TextSpan buildTextSpan({
    required BuildContext context,
    TextStyle? style,
    bool withComposing = false,
  }) {
    final List<String> words = text.split(" ");
    List<TextSpan> children = <TextSpan>[];
    final TextStyle textStyle = (this.style ?? style) ?? const TextStyle();
    List<String> duplicateWords = [];
    final TextSpan spaceSpan = TextSpan(text: " ", style: textStyle);

    for (int i = 0; i < words.length; i++) {
      (String, TextStyle?, int?) setting = _containString(words[i]);
      final TextSpan baseSpan = TextSpan(text: setting.$1, style: textStyle);
      if (setting.$3 != null) {
        final TextSpan tagSpan = TextSpan(text: setting.$1, style: setting.$2);
        if (!keywords[setting.$3!].isDuplicate) {
          if (duplicateWords
              .map((e) => e.toLowerCase())
              .contains(setting.$1.toLowerCase())) {
            children.addAll([baseSpan, spaceSpan]);
          } else {
            children.addAll([tagSpan, spaceSpan]);
          }
          duplicateWords = List.from(duplicateWords)..add(setting.$1);
        } else {
          children.addAll([tagSpan, spaceSpan]);
        }
      } else {
        children.addAll([baseSpan, spaceSpan]);
      }
    }
    return TextSpan(children: children);
  }
}
