import 'package:flutter/material.dart';

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

  AwesomeKeyword copyWith({
    final String? text,
    final TextStyle? style,
    final bool? isDuplicate,
    final bool? isLetterCase,
  }) =>
      AwesomeKeyword(
        text: text ?? this.text,
        style: style ?? this.style,
        isDuplicate: isDuplicate ?? this.isDuplicate,
        isLetterCase: isLetterCase ?? this.isLetterCase,
      );
}
