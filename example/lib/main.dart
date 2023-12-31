import 'package:awesome_style_field/awesome_style_field.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ExampleAwesomeTextField(),
  ));
}

class ExampleAwesomeTextField extends StatefulWidget {
  const ExampleAwesomeTextField({super.key});

  @override
  State<ExampleAwesomeTextField> createState() =>
      _ExampleAwesomeTextFieldState();
}

class _ExampleAwesomeTextFieldState extends State<ExampleAwesomeTextField> {
  late AwesomeTextController controller;
  final Color _background = const Color.fromRGBO(46, 46, 46, 1);

  final String _word =
      "Your work is going to fill a large part of your life, and the only way to be truly satisfied is to do what you believe is great work. And the only way to do great work is to love what you do. If you haven't found it yet, keep looking. Don't settle. As with all matters of the heart, you'll know when you find it. - Steve Jobs";

  List<AwesomeKeyword> _quoteKeywords = [];
  List<AwesomeKeyword> _awesomeKeywords = [];

  @override
  void initState() {
    super.initState();
    controller = AwesomeTextController(initValue: _word);
    _setKeywords();
  }

  void _setKeywords() {
    _awesomeKeywords = const [
      AwesomeKeyword(
        text: "awesome",
        style: TextStyle(
          color: Colors.limeAccent,
          fontSize: 24,
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
        ),
      ),
      AwesomeKeyword(
        text: "text",
        style: TextStyle(
          color: Colors.lightBlueAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      AwesomeKeyword(
        text: "Form",
        style: TextStyle(
          color: Colors.amberAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      AwesomeKeyword(
        text: "field",
        style: TextStyle(
          color: Colors.cyanAccent,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      ),
      AwesomeKeyword(
        text: "!",
        style: TextStyle(
          color: Colors.tealAccent,
          fontSize: 24,
          fontWeight: FontWeight.w900,
        ),
      ),
    ];
    _quoteKeywords = const [
      AwesomeKeyword(
          text: "to",
          style: TextStyle(
              color: Color.fromRGBO(135, 135, 135, 1),
              fontSize: 18,
              fontWeight: FontWeight.bold)),
      AwesomeKeyword(
          text: "is",
          style: TextStyle(
            color: Colors.purpleAccent,
            fontSize: 18,
          )),
      AwesomeKeyword(
          text: "Your",
          isLetterCase: false,
          style: TextStyle(
            color: Colors.greenAccent,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          )),
      AwesomeKeyword(
          text: "you",
          style: TextStyle(
            color: Colors.lightBlueAccent,
            fontSize: 20,
            fontWeight: FontWeight.w900,
          )),
      AwesomeKeyword(
          text: "do",
          style: TextStyle(
            color: Colors.limeAccent,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )),
      AwesomeKeyword(
          text: "do.",
          style: TextStyle(
            color: Colors.limeAccent,
            fontSize: 22,
            fontWeight: FontWeight.bold,
          )),
      AwesomeKeyword(
          text: "Steve",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.cyan,
          )),
      AwesomeKeyword(
          text: "Jobs",
          style: TextStyle(
            fontSize: 22,
            fontWeight: FontWeight.bold,
            fontStyle: FontStyle.italic,
            color: Colors.cyan,
          )),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: _background,
        appBar: AppBar(
          backgroundColor: _background,
          title: const Text(
            "Awesome Style Field",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: Colors.white,
            ),
          ),
        ),
        body: ListView(
          children: [
            Container(
              height: 60,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: AwesomeStyleField(
                cursorHeight: 20,
                keywords: _awesomeKeywords,
                style: const TextStyle(fontSize: 20, color: Colors.white),
                decoration: _decoration(),
              ),
            ),
            Container(
              height: 200,
              margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
              child: AwesomeStyleFormField(
                controller: controller,
                keywords: _quoteKeywords,
                maxLines: 1000,
                style: const TextStyle(
                    fontSize: 16, color: Colors.white, height: 1.5),
                decoration: _decoration(),
              ),
            ),
          ],
        ),
      ),
    );
  }

  InputDecoration _decoration() => InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.white,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      );
}
