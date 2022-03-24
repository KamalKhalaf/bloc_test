import 'package:flutter/material.dart';

class CharactersScreen extends StatefulWidget {
  CharactersScreen({Key? key}) : super(key: key);

  @override
  State<CharactersScreen> createState() => _CharactersScreenState();
}

class _CharactersScreenState extends State<CharactersScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text("Kamal"),
    );
  }
}
