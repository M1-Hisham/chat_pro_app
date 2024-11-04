import 'package:flutter/material.dart';

class CahtsListScreen extends StatefulWidget {
  const CahtsListScreen({super.key});

  @override
  State<CahtsListScreen> createState() => _CahtsListScreenState();
}

class _CahtsListScreenState extends State<CahtsListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Chats"),
      ),
      body: const Center(
        child: Text("Chats List"),
      ),
    );
  }
}
